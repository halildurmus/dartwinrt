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

import 'constants/iids.dart';
import 'extensions.dart';
import 'projections/type.dart';

/// Acronyms that appear in the enum fields and method names.
/// These are used while projecting enums and methods to match the Dart style
/// guide.
/// See https://dart.dev/guides/language/effective-dart/style#do-capitalize-acronyms-and-abbreviations-longer-than-two-letters-like-words
const acronyms = <String>{
  'AC', 'DB', 'DPad', 'HD', 'HR', 'IO', 'IP', 'NT', 'TV', 'UI', 'WiFi', //
};

/// A list of all words that should not be used as identifiers.
const badIdentifierNames = <String>{...dartReservedWords, ...dartTypes};

/// Reserved words in the Dart language that can never be used as identifiers.
/// Keywords are from https://dart.dev/guides/language/language-tour#keywords.
const dartReservedWords = <String>{
  // Contextual keywords and built-in identifiers are not included here, since
  // they can be used as valid identifiers in most places.
  'assert', 'break', 'case', 'catch', 'class', 'const', 'continue', 'default',
  'do', 'else', 'enum', 'extends', 'false', 'final', 'finally', 'for', 'if',
  'in', 'is', 'new', 'null', 'rethrow', 'return', 'super', 'switch', 'this',
  'throw', 'true', 'try', 'var', 'void', 'while', 'with',
};

/// Dart intrinsic types that will cause problems if used as identifiers.
const dartTypes = <String>{
  'int', 'double', 'String', 'bool', 'List', 'Set', 'Map', //
};

/// Return the final component of a fully qualified name (e.g.
/// `Windows.Globalization.Calendar` becomes `Calendar`).
String lastComponent(String fullyQualifiedType) =>
    fullyQualifiedType.split('.').last;

/// Whether the method belongs to `IUriRuntimeClass` or
/// `IUriRuntimeClassFactory`.
///
/// Used to determine whether the method return type or parameter should be
/// exposed as WinRT `Uri` or dart:core's `Uri`.
bool methodBelongsToUriRuntimeClass(Method method) => [
      'Windows.Foundation.IUriRuntimeClass',
      'Windows.Foundation.IUriRuntimeClassFactory'
    ].contains(method.parent.name);

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

/// Add the `?` suffix to the [type] (e.g. `StorageFile` -> `StorageFile?`).
String nullable(String type) => type.endsWith('?') ? type : '$type?';

/// Take a [type] like `IAsyncOperation<StorageFile>` and return
/// `IAsyncOperation`.
String outerType(String type) =>
    !type.contains('<') ? type : type.substring(0, type.indexOf('<'));

/// Return the parent namespace of a [fullyQualifiedType] (e.g.
/// `Windows.Gaming.Input.Gamepad` becomes `Windows.Gaming.Input`).
String parentNamespace(String fullyQualifiedType) =>
    (fullyQualifiedType.split('.')..removeLast()).join('.');

/// Converts [targetPath] to an equivalent relative path from the [start]
/// directory.
String relativePath(String targetPath, {required String start}) =>
    path.relative(targetPath, from: start).replaceAll(r'\', '/');

/// Strip the `?` suffix from the [type] (e.g. `IJsonValue?` should become
/// `JsonValue`).
String stripQuestionMarkSuffix(String type) =>
    type.endsWith('?') ? type.substring(0, type.length - 1) : type;

/// Take a [type] like `IAsyncOperation<StorageFile>` and return `StorageFile`
/// or `String, String` for a type like `IMap<String, String>`.
String typeArguments(String type) => !type.contains('<')
    ? type
    : type.substring(type.indexOf('<') + 1, type.lastIndexOf('>'));

/// Converts a [fullyQualifiedType] (e.g. `Windows.Globalization.Calendar`) and
/// returns the matching package name (e.g. `windows_globalization`).
String packageNameFromWinRTType(String fullyQualifiedType) =>
    fullyQualifiedType.split('.').take(2).join('_').toLowerCase();

/// Converts a [fullyQualifiedType] (e.g.
/// `Windows.Storage.Pickers.FileOpenPicker`) and returns the relative path from
/// the `dartwinrt/tools` folder to matching folder path  (e.g.
/// `../../packages/windows_storage/lib/src/pickers`).
String relativeFolderPathFromWinRTType(String fullyQualifiedType) {
  final packageName = packageNameFromWinRTType(fullyQualifiedType);
  // e.g. Windows.Storage.Pickers.FileOpenPicker -> [pickers]
  final segments = fullyQualifiedType.split('.').skip(2).toList()..removeLast();
  final classFolderPath =
      segments.isEmpty ? '' : '/${segments.join('/').toLowerCase()}';
  return '../../packages/$packageName/lib/src$classFolderPath';
}

/// Converts a [fullyQualifiedType] (e.g. `Windows.Globalization.Calendar`) and
/// returns the matching file name (e.g. `calendar.dart`).
String fileNameFromWinRTType(String fullyQualifiedType) =>
    '${stripGenerics(lastComponent(fullyQualifiedType)).toLowerCase()}.dart';

/// Converts a [fullyQualifiedType] (e.g.
/// `Windows.Storage.Pickers.FileOpenPicker`) and returns the matching folder
/// (e.g. `windows_storage/pickers`).
String folderFromWinRTType(String fullyQualifiedType) {
  // e.g. Windows.Storage.Pickers.FileOpenPicker -> [storage, pickers]
  final segments = fullyQualifiedType.split('.').skip(1).toList()..removeLast();
  return 'windows_${segments.join('/').toLowerCase()}';
}

/// Returns the [fullyQualifiedType] of the object defined in [typeDef] (e.g.
/// `Windows.Foundation.Calendar`, `Windows.Foundation.IReference`1).
String fullyQualifiedTypeNameFromTypeDef(TypeDef typeDef) =>
    typeDef.typeSpec?.baseType == BaseType.genericTypeModifier
        ? typeDef.typeSpec!.type!.name
        : typeDef.name;

/// Returns the package import for the interface defined in [typeDef] (e.g.
/// `package:windows_globalization/windows_globalization.dart` for
/// `Windows.Globalization.Calendar`).
String packageImportFromTypeDef(TypeDef typeDef) {
  final packageName = packageNameFromTypeDef(typeDef);
  return 'package:$packageName/$packageName.dart';
}

/// Returns the name of the package where the interface defined in [typeDef]
/// (e.g. `windows_globalization` for `Windows.Globalization.Calendar`).
String packageNameFromTypeDef(TypeDef typeDef) =>
    packageNameFromWinRTType(fullyQualifiedTypeNameFromTypeDef(typeDef));

/// Returns the short type name of the object defined in [typeDef] (e.g.
/// `ICalendar`, `IMap<String, String>`).
String shortTypeNameFromTypeDef(TypeDef typeDef) =>
    typeDef.typeSpec?.baseType == BaseType.genericTypeModifier
        ? parseGenericTypeIdentifierName(typeDef.typeSpec!)
        : lastComponent(typeDef.name);

/// Parses the argument to be passed to the `creator` parameter from [ti].
String? parseArgumentForCreatorParameter(TypeIdentifier ti) {
  final typeProjection = TypeProjection(ti);
  if (typeProjection.isStruct ||
      ['bool', 'DateTime', 'double', 'Duration', 'int', 'String', 'Uri']
          .contains(typeProjection.methodParamType)) {
    return null;
  }

  switch (ti.baseType) {
    case BaseType.classTypeModifier:
      return '${lastComponent(ti.name)}.fromRawPointer';
    case BaseType.genericTypeModifier:
      return parseArgumentForCreatorParameterFromGenericTypeIdentifier(ti);
    case BaseType.referenceTypeModifier:
      return parseArgumentForCreatorParameter(ti.typeArg!);
    case BaseType.valueTypeModifier:
      if (ti.type?.isEnum ?? false) return '${lastComponent(ti.name)}.from';
      return null;
    default:
      return null;
  }
}

/// Parses the argument to be passed to the `creator` parameter from generic [ti].
String parseArgumentForCreatorParameterFromGenericTypeIdentifier(
    TypeIdentifier ti) {
  if (ti.baseType != BaseType.genericTypeModifier) {
    throw ArgumentError('Expected a generic type identifier.');
  }

  final typeIdentifierName = stripGenerics(lastComponent(outerType(ti.name)));
  final typeArg = ['IKeyValuePair', 'IMap', 'IMapView']
          .contains(typeIdentifierName)
      // Skip over to the value typeArg since the `creator` parameter does not
      // need to be created for the key typeArg of the above types.
      ? ti.typeArg!.typeArg!
      : ti.typeArg;

  final creator = parseArgumentForCreatorParameter(typeArg!);

  final args = <String>['ptr'];
  // Handle enum key type argument in IKeyValuePair, IMap, IMapView interfaces
  if (['IKeyValuePair', 'IMap', 'IMapView'].contains(typeIdentifierName) &&
      (ti.typeArg!.type?.isEnum ?? false)) {
    final enumKeyCreator = parseArgumentForCreatorParameter(ti.typeArg!);
    args.add('enumKeyCreator: $enumKeyCreator');
  }

  if (creator != null) {
    final isTypeArgEnum = typeArg.type?.isEnum ?? false;
    final creatorParamName = isTypeArgEnum ? 'enumCreator' : 'creator';
    args.add('$creatorParamName: $creator');
  }

  if (['IVector', 'IVectorView'].contains(typeIdentifierName)) {
    args.add("iterableIid: '${iterableIidFromVectorTypeIdentifier(ti)}'");
  } else if (['IMap', 'IMapView'].contains(typeIdentifierName)) {
    args.add("iterableIid: '${iterableIidFromMapTypeIdentifier(ti)}'");
  } else if (typeIdentifierName == 'IReference') {
    final referenceArgSignature = parseTypeIdentifierSignature(ti.typeArg!);
    final referenceSignature =
        'pinterface($IID_IReference;$referenceArgSignature)';
    args.add("referenceIid: '${iidFromSignature(referenceSignature)}'");
  } else {
    if (creator == null) return '$typeIdentifierName.fromRawPointer';
  }

  // e.g. IIterable<int>, IVector<int>, IVectorView<int>
  if (typeArguments(parseGenericTypeIdentifierName(ti)) == 'int') {
    final typeProjection = TypeProjection(ti.typeArg!);
    args.add('intType: ${typeProjection.nativeType}');
  }

  return '(Pointer<COMObject> ptr) => '
      '$typeIdentifierName.fromRawPointer(${args.join(', ')})';
}

/// Returns the appropriate Dart type name for the given [ti].
String parseTypeIdentifierName(TypeIdentifier ti) {
  switch (ti.baseType) {
    case BaseType.classTypeModifier:
    case BaseType.valueTypeModifier:
      if (ti.name == 'System.Guid') return 'Guid';
      if (ti.name == 'Windows.Foundation.TimeSpan') return 'Duration';
      return lastComponent(ti.name);
    case BaseType.genericTypeModifier:
      return parseGenericTypeIdentifierName(ti);
    case BaseType.objectType:
      return 'Object';
    case BaseType.referenceTypeModifier:
      return parseTypeIdentifierName(ti.typeArg!);
    default:
      return ti.baseType.dartTypeName;
  }
}

/// Unpack a nested [typeIdentifier] into a single name.
String parseGenericTypeIdentifierName(TypeIdentifier typeIdentifier) {
  if (typeIdentifier.baseType != BaseType.genericTypeModifier) {
    throw ArgumentError('Expected a generic type identifier.');
  }

  // If the typeIdentifier's name is already parsed, return it as is
  if (typeIdentifier.name.contains('<')) return typeIdentifier.name;

  final parentTypeName = stripGenerics(lastComponent(typeIdentifier.name));

  if (typeIdentifier.type?.genericParams.length == 2) {
    final secondArgIsPotentiallyNullable = [
      'Windows.Foundation.Collections.IKeyValuePair`2',
      'Windows.Foundation.Collections.IMap`2',
      'Windows.Foundation.Collections.IMapView`2',
      'Windows.Foundation.Collections.IObservableMap`2',
    ].contains(typeIdentifier.type?.name);
    final firstArg = parseTypeIdentifierName(typeIdentifier.typeArg!);
    final secondArg = parseTypeIdentifierName(typeIdentifier.typeArg!.typeArg!);

    var questionMark = '';
    if (secondArgIsPotentiallyNullable) {
      final secondArgIsEnum =
          TypeProjection(typeIdentifier.typeArg!.typeArg!).isEnum;
      final secondArgIsNullable = !secondArgIsEnum && secondArg != 'String';
      questionMark = secondArgIsNullable ? '?' : '';
    }

    return '$parentTypeName<$firstArg, $secondArg$questionMark>';
  }

  final isAsyncOperation = parentTypeName == 'IAsyncOperation';
  if (isAsyncOperation) {
    final typeArg = parseTypeIdentifierName(typeIdentifier.typeArg!);
    final typeProjection = TypeProjection(typeIdentifier.typeArg!);
    final typeArgIsNullable =
        // Collection interfaces cannot return null.
        !typeArg.startsWith(RegExp(r'(IMap|IVector)')) &&
            // Primitives cannot return null.
            !['bool', 'double', 'int', 'String'].contains(typeArg) &&
            // Value types (enums and structs) cannot return null.
            !typeProjection.isValueType;
    final questionMark = typeArgIsNullable ? '?' : '';
    return 'IAsyncOperation<$typeArg$questionMark>';
  }

  return '$parentTypeName<${parseTypeIdentifierName(typeIdentifier.typeArg!)}>';
}

/// Returns the type signature for the given [td].
String parseTypeDefSignature(TypeDef td) {
  if (td.typeSpec != null) return parseTypeIdentifierSignature(td.typeSpec!);

  if (td.isClass) {
    final className = td.name;
    final defaultInterfaceSignature =
        parseTypeDefSignature(td.interfaces.first);
    return 'rc($className;$defaultInterfaceSignature)';
  }

  return td.guid!;
}

/// Returns the type signature for the given [ti].
String parseTypeIdentifierSignature(TypeIdentifier ti) {
  if (ti.baseType == BaseType.genericTypeModifier) {
    return parseGenericTypeIdentifierSignature(ti);
  }

  if (ti.name == 'System.Guid') return 'g16';

  final typeProjection = TypeProjection(ti);
  if (typeProjection.isDelegate) return 'delegate(${ti.type!.guid!})';

  if (typeProjection.isEnum) {
    final enumName = ti.name;
    final isFlagsEnum = ti.type!.existsAttribute('System.FlagsAttribute');
    final enumSignature = isFlagsEnum ? 'u4' : 'i4';
    return 'enum($enumName;$enumSignature)';
  }

  if (typeProjection.isStruct) {
    final structName = ti.name;
    final fields = ti.type!.fields
        .map((field) => parseTypeIdentifierSignature(field.typeIdentifier));
    return 'struct($structName;${fields.join(';')})';
  }

  if (typeProjection.isInterface) return ti.type!.guid!;

  if (typeProjection.isClass) {
    final className = ti.name;
    final defaultInterface = ti.type!.interfaces.first;
    if (defaultInterface.typeSpec != null) {
      final defaultInterfaceSignature =
          parseTypeIdentifierSignature(defaultInterface.typeSpec!);
      return 'rc($className;$defaultInterfaceSignature)';
    }

    final defaultInterfaceSignature = parseTypeDefSignature(defaultInterface);
    return 'rc($className;$defaultInterfaceSignature)';
  }

  return ti.baseType.signature;
}

/// Returns the type signature for the given generic [typeIdentifier].
String parseGenericTypeIdentifierSignature(TypeIdentifier typeIdentifier) {
  if (typeIdentifier.baseType != BaseType.genericTypeModifier) {
    throw ArgumentError('Expected a generic type identifier.');
  }

  final parentTypeGuid = typeIdentifier.type!.guid!;

  if (typeIdentifier.type?.genericParams.length == 2) {
    final firstArgSignature =
        parseTypeIdentifierSignature(typeIdentifier.typeArg!);
    final secondArgSignature =
        parseTypeIdentifierSignature(typeIdentifier.typeArg!.typeArg!);
    return 'pinterface($parentTypeGuid;$firstArgSignature;$secondArgSignature)';
  }

  final signature = parseTypeIdentifierSignature(typeIdentifier.typeArg!);
  return 'pinterface($parentTypeGuid;$signature)';
}

/// A byte representation of the pinterface instantiation.
///
/// This is hardcoded as the value {11f47ad5-7b73-42c0-abae-878b1e16adee} in
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system
const wrtPinterfaceNamespace = [
  0x11, 0xf4, 0x7a, 0xd5,
  0x7b, 0x73,
  0x42, 0xc0,
  0xab, 0xae,
  0x87, 0x8b, 0x1e, 0x16, 0xad, 0xee, //
];

/// Returns the IID for the given [signature].
///
/// Takes a parameterized type instance, such as `IMap<String, String>`, which
/// can be represented as:
/// `pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)`
///
/// Converts it to a unique IID for the resultant type, using an algorithm
/// defined here:
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
Guid iidFromSignature(String signature) {
  if (signature.startsWith('{') &&
      signature.endsWith('}') &&
      signature.length == 38) {
    return Guid.parse(signature);
  }

  final signatureInBytes = const Utf8Encoder().convert(signature);
  final data = [...wrtPinterfaceNamespace, ...signatureInBytes];
  final sha1Hash = sha1.convert(data);
  final sha1Bytes = Uint8List.fromList(sha1Hash.bytes).buffer.asByteData();

  final firstPart = sha1Bytes.getUint32(0);
  final secondPart = sha1Bytes.getUint16(4);
  final thirdPart = (sha1Bytes.getUint16(6) & 0x0FFF) | 0x5000;
  final fourthPart = (sha1Bytes.getUint64(8, Endian.little) & ~0xC0) | 0x80;

  return Guid.fromComponents(firstPart, secondPart, thirdPart, fourthPart);
}

/// Returns the IID for the given [typeDef].
Guid iidFromTypeDef(TypeDef typeDef) {
  final signature = parseTypeDefSignature(typeDef);
  if (signature.startsWith('{') &&
      signature.endsWith('}') &&
      signature.length == 38) {
    return Guid.parse(signature);
  }

  return iidFromSignature(signature);
}

/// Returns the IID for the given [typeIdentifier].
Guid iidFromTypeIdentifier(TypeIdentifier typeIdentifier) {
  final signature = parseTypeIdentifierSignature(typeIdentifier);
  if (signature.startsWith('{') &&
      signature.endsWith('}') &&
      signature.length == 38) {
    return Guid.parse(signature);
  }

  return iidFromSignature(signature);
}

/// Returns the `IIterable<IKeyValuePair<K, V>>` IID for the given `IMap` or
/// `IMapView` [typeIdentifier].
Guid iterableIidFromMapTypeIdentifier(TypeIdentifier typeIdentifier) {
  if (!['IMap', 'IMapView']
      .contains(outerType(parseTypeIdentifierName(typeIdentifier)))) {
    throw ArgumentError("Expected an 'IMap' or 'IMapView' type identifier.");
  }

  final kvpKeyArgSignature =
      parseTypeIdentifierSignature(typeIdentifier.typeArg!);
  final kvpValueArgSignature =
      parseTypeIdentifierSignature(typeIdentifier.typeArg!.typeArg!);
  final kvpSignature =
      'pinterface($IID_IKeyValuePair;$kvpKeyArgSignature;$kvpValueArgSignature)';
  final iterableSignature = 'pinterface($IID_IIterable;$kvpSignature)';
  return iidFromSignature(iterableSignature);
}

/// Returns the `IIterable<T>` IID for the given `IVector` or `IVectorView`
/// [typeIdentifier].
Guid iterableIidFromVectorTypeIdentifier(TypeIdentifier typeIdentifier) {
  if (!['IVector', 'IVectorView']
      .contains(outerType(parseTypeIdentifierName(typeIdentifier)))) {
    throw ArgumentError(
        "Expected an 'IVector' or 'IVectorView' type identifier.");
  }

  final iterableArgSignature =
      parseTypeIdentifierSignature(typeIdentifier.typeArg!);
  final iterableSignature = 'pinterface($IID_IIterable;$iterableArgSignature)';
  return iidFromSignature(iterableSignature);
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
