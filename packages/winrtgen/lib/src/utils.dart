// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Useful utilities

import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as path;
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

import 'constants/constants.dart';
import 'extensions/extensions.dart';

/// Converts a [fullyQualifiedType] (e.g. `Windows.Globalization.Calendar`) and
/// returns the matching file name (e.g. `calendar.dart`).
String fileNameFromType(String fullyQualifiedType) =>
    '${stripGenerics(lastComponent(fullyQualifiedType)).toLowerCase()}.dart';

/// Converts a [fullyQualifiedType] (e.g.
/// `Windows.Storage.Pickers.FileOpenPicker`) and returns the matching folder
/// (e.g. `windows_storage/lib/src/pickers`).
String folderFromType(String fullyQualifiedType) {
  // e.g. windows_storage
  final packageName = packageNameFromType(fullyQualifiedType);
  // e.g. Windows.Storage.Pickers.FileOpenPicker -> [Pickers]
  final segments = fullyQualifiedType.split('.').skip(2).toList()..removeLast();
  if (segments.isEmpty) return '$packageName/lib/src';
  return '$packageName/lib/src/${segments.join('/').toLowerCase()}';
}

/// A byte representation of the pinterface instantiation.
///
/// This is hardcoded as the value {11f47ad5-7b73-42c0-abae-878b1e16adee} in
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system
const _wrtPinterfaceNamespace = <int>[
  0x11, 0xf4, 0x7a, 0xd5,
  0x7b, 0x73,
  0x42, 0xc0,
  0xab, 0xae,
  0x87, 0x8b, 0x1e, 0x16, 0xad, 0xee, //
];

/// Returns the IID for the given [signature].
///
/// Takes a [signature] of a WinRT type, such as `IMap<String, String>`, which
/// can be represented as:
/// `pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)`
///
/// Converts it to a unique IID for the resultant type, using an algorithm
/// defined here:
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
String iidFromSignature(String signature) {
  if (signature.startsWith('{') &&
      signature.endsWith('}') &&
      signature.length == 38) {
    return signature;
  }

  final signatureInBytes = const Utf8Encoder().convert(signature);
  final data = <int>[..._wrtPinterfaceNamespace, ...signatureInBytes];
  final sha1Hash = sha1.convert(data);
  final sha1Bytes = Uint8List.fromList(sha1Hash.bytes).buffer.asByteData();

  final firstPart = sha1Bytes.getUint32(0);
  final secondPart = sha1Bytes.getUint16(4);
  final thirdPart = (sha1Bytes.getUint16(6) & 0x0FFF) | 0x5000;
  final fourthPart = (sha1Bytes.getUint64(8, Endian.little) & ~0xC0) | 0x80;

  return Guid.fromComponents(firstPart, secondPart, thirdPart, fourthPart)
      .toString();
}

/// Returns the `IIterable<IKeyValuePair<K, V>>` IID for the given `IMap` or
/// `IMapView` [typeIdentifier].
String iterableIidFromMapType(TypeIdentifier typeIdentifier) {
  if (!['IMap', 'IMapView'].contains(outerType(typeIdentifier.shortName))) {
    throw ArgumentError("Expected an 'IMap' or 'IMapView' type identifier.");
  }

  final typeArgs = typeIdentifier.typeArgs;
  final keyArgSignature = typeArgs.first.signature;
  final valueArgSignature = typeArgs.last.signature;
  final kvpSignature =
      'pinterface($IID_IKeyValuePair;$keyArgSignature;$valueArgSignature)';
  final iterableSignature = 'pinterface($IID_IIterable;$kvpSignature)';
  return iidFromSignature(iterableSignature).toString();
}

/// Returns the `IIterable<T>` IID for the given `IVector` or `IVectorView`
/// [typeIdentifier].
String iterableIidFromVectorType(TypeIdentifier typeIdentifier) {
  if (!['IVector', 'IVectorView']
      .contains(outerType(typeIdentifier.shortName))) {
    throw ArgumentError(
        "Expected an 'IVector' or 'IVectorView' type identifier.");
  }

  final iterableArgSignature = typeIdentifier.typeArg!.signature;
  final iterableSignature = 'pinterface($IID_IIterable;$iterableArgSignature)';
  return iidFromSignature(iterableSignature).toString();
}

/// Return the final component of a fully qualified name (e.g.
/// `Windows.Globalization.Calendar` becomes `Calendar`).
String lastComponent(String fullyQualifiedType) =>
    fullyQualifiedType.split('.').last;

/// Add the `?` suffix to the [type] (e.g. `StorageFile` -> `StorageFile?`).
String nullable(String type) => type.endsWith('?') ? type : '$type?';

/// Take a [type] like `IAsyncOperation<StorageFile>` and return
/// `IAsyncOperation`.
String outerType(String type) =>
    !type.contains('<') ? type : type.substring(0, type.indexOf('<'));

/// Converts a [fullyQualifiedType] (e.g. `Windows.Globalization.Calendar`) and
/// returns the matching package name (e.g. `windows_globalization`).
String packageNameFromType(String fullyQualifiedType) =>
    fullyQualifiedType.split('.').take(2).join('_').toLowerCase();

/// Return the parent namespace of a [fullyQualifiedType] (e.g.
/// `Windows.Gaming.Input.Gamepad` becomes `Windows.Gaming.Input`).
String parentNamespace(String fullyQualifiedType) =>
    (fullyQualifiedType.split('.')..removeLast()).join('.');

/// Wrap a [s] in single quotes (e.g. `foo` -> `'foo'`).
String quote(String s) => "'$s'";

/// Converts a [fullyQualifiedType] (e.g.
/// `Windows.Storage.Pickers.FileOpenPicker`) and returns the relative path from
/// the `dartwinrt/tools` folder to matching folder path  (e.g.
/// `../../packages/windows_storage/lib/src/pickers`).
String relativeFolderPathFromType(String fullyQualifiedType) {
  final packageName = packageNameFromType(fullyQualifiedType);
  // e.g. Windows.Storage.Pickers.FileOpenPicker -> [pickers]
  final segments = fullyQualifiedType.split('.').skip(2).toList()..removeLast();
  final classFolderPath =
      segments.isEmpty ? '' : '/${segments.join('/').toLowerCase()}';
  return '../../packages/$packageName/lib/src$classFolderPath';
}

/// Converts [targetPath] to an equivalent relative path from the [start]
/// directory.
String relativePath(String targetPath, {required String start}) =>
    path.relative(targetPath, from: start).replaceAll(r'\', '/');

/// Takes a [name] and converts it to a safe Dart identifier (i.e. one that
/// is not a reserved word or a private modifier).
///
/// For example, `null` should be converted to `null_`, and `__valueSize` should
/// be converted to `valueSize`.
String safeIdentifierForString(String name) => badIdentifierNames.contains(name)
    ? '${name}_'
    : stripLeadingUnderscores(name);

/// Sorts [importLines] according to Effective Dart: Style guidelines.
/// See https://dart.dev/guides/language/effective-dart/style#ordering
List<String> sortImports(List<String> importLines) {
  if (importLines.isEmpty) return importLines;

  final dartImports = SplayTreeSet<String>();
  final packageImports = SplayTreeSet<String>();
  final projectRelativeImports = SplayTreeSet<String>();

  for (final importLine in importLines) {
    assert(importLine.startsWith('import ') && importLine.endsWith(';'));

    if (importLine.contains('dart:')) {
      dartImports.add(importLine);
    } else if (importLine.contains('package:')) {
      packageImports.add(importLine);
    } else {
      projectRelativeImports.add(importLine);
    }
  }

  final sortedImportLines = <String>[];

  if (dartImports.isNotEmpty) {
    sortedImportLines.addAll(dartImports);
  }

  if (packageImports.isNotEmpty) {
    if (dartImports.isNotEmpty) sortedImportLines.add('');
    sortedImportLines.addAll(packageImports);
  }

  if (projectRelativeImports.isNotEmpty) {
    if (dartImports.isNotEmpty || packageImports.isNotEmpty) {
      sortedImportLines.add('');
    }

    sortedImportLines.addAll(projectRelativeImports);
  }

  return sortedImportLines;
}

/// Take a [name] like IVector`1 and return IVector.
String stripGenerics(String name) {
  final backtickIndex = name.indexOf('`');
  if (backtickIndex == -1) return name;
  return name.substring(0, backtickIndex);
}

/// Take a [name] like `__valueSize` and return `valueSize`.
String stripLeadingUnderscores(String name) =>
    !name.startsWith('_') ? name : stripLeadingUnderscores(name.substring(1));

/// Strip the `?` suffix from the [type] (e.g. `IJsonValue?` should become
/// `JsonValue`).
String stripQuestionMarkSuffix(String type) =>
    type.endsWith('?') ? type.substring(0, type.length - 1) : type;

/// Take a [type] like `IAsyncOperation<StorageFile>` and return `StorageFile`
/// or `String, String` for a type like `IMap<String, String>`.
String typeArguments(String type) => !type.contains('<')
    ? type
    : type.substring(type.indexOf('<') + 1, type.lastIndexOf('>'));

/// Uniquely name a [method].
///
/// Since Dart doesn't allow overloaded methods, we have to rename methods
/// that are duplicated.
String uniquelyNameMethod(Method method) {
  // Is it a WinRT method overloaded with a name provided by the metadata?
  final overloadName = method.attributeAsString(overloadAttribute);
  if (overloadName.isNotEmpty) return overloadName;
  // Otherwise the original name is fine.
  return method.name;
}

/// Take an [inputText] and turn it into a multi-line doc comment.
String wrapCommentText(String inputText, [int wrapLength = 76]) {
  if (inputText.isEmpty) return '';

  final words = inputText.split(' ');
  final textLine = StringBuffer('///');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine
        ..clear()
        ..write('/// $word');
    } else {
      textLine.write(' $word');
    }
  }

  outputText.write(textLine);
  return outputText.toString().trimRight();
}

/// Wrap a [type] in a `Pointer` if it isn't `Pointer<COMObject>`.
///
/// For example, `Pointer<Int32>` should become `Pointer<Pointer<Int32>>`
/// whereas `Pointer<COMObject>` should remain as is.
String wrapWithPointer(String type) =>
    type == 'Pointer<COMObject>' ? type : 'Pointer<$type>';
