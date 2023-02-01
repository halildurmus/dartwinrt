// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../extensions/typedef_helpers.dart';
import '../utils.dart';
import 'winrt_get_property.dart';
import 'winrt_method.dart';
import 'winrt_method_forwarders.dart';
import 'winrt_set_property.dart';

class WinRTInterfaceProjection {
  WinRTInterfaceProjection(this.typeDef, [this.comment = '']);

  final TypeDef typeDef;
  final String comment;

  /// Attempts to create a [WinRTInterfaceProjection] for
  /// [fullyQualifiedTypeName] by searching its [TypeDef].
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedTypeName]
  /// is found.
  factory WinRTInterfaceProjection.forType(String fullyQualifiedTypeName,
      [String comment = '']) {
    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedTypeName);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedTypeName");

    return WinRTInterfaceProjection(typeDef, comment);
  }

  Set<String> get importsForClass {
    final importList = <String>{};
    final methods = {
      ...typeDef.methods,
      // Also add the methods in typeDef's interfaces
      ...[for (var typeDef in typeDef.interfaces) ...typeDef.methods]
    };

    for (final method in methods) {
      final paramsAndReturnType = [...method.parameters, method.returnType];
      for (final param in paramsAndReturnType) {
        // Add imports for a parameter itself (e.g. VARIANT)
        final import = getImportForTypeIdentifier(param.typeIdentifier);
        if (import != null && import.isNotEmpty) importList.add(import);

        // Add imports for a type within a pointer (e.g. Pointer<VARIANT>). Keep
        // unwrapping until there are no types left.
        var refType = param.typeIdentifier;
        while (refType.typeArg != null) {
          refType = refType.typeArg!;
          final import = getImportForTypeIdentifier(refType);
          if (import != null && import.isNotEmpty) importList.add(import);
        }
      }
    }

    return importList;
  }

  String get header => classFileHeader;

  String get guidConstants => '''
/// @nodoc
const IID_$shortName = '${typeDef.guid}';
''';

  String get category => 'interface';

  String get classPreamble {
    final wrappedComment = wrapCommentText(comment);
    final categoryComment = '/// {@category $category}';
    return wrappedComment.isNotEmpty
        ? '$wrappedComment\n///\n$categoryComment'
        : categoryComment;
  }

  String get inheritsFrom => implementsInterfaces
      .map((interface) => interface.shortName)
      .toList()
      .join(', ');

  String getImportForTypeDef(TypeDef typeDef) {
    final typeName = typeDef.fullyQualifiedName;
    if (currentTypeName == typeName ||
        ignoredWindowsRuntimeTypes.contains(typeName)) {
      return '';
    }

    if (typeDef.isDelegate) {
      // TODO: Update this once we generate WinRT delegates in their respective
      // folders (e.g. Windows.Foundation.AsyncActionCompletedHandler ->
      // packages/windows_foundation/delegates.g.dart)
      return '';
    } else if (typeDef.isEnum) {
      if (currentPackageName != typeDef.packageName) {
        return typeDef.packageImport;
      }

      return relativePathTo(
          'packages/${folderFromWinRTType(typeName)}/enums.g.dart');
    } else if (typeDef.isClass || typeDef.isInterface) {
      if (currentPackageName != typeDef.packageName) {
        return typeName == 'Windows.Foundation.Uri'
            ? 'package:windows_foundation/uri.dart'
            : typeDef.packageImport;
      }

      return relativePathTo(
          'packages/${folderFromWinRTType(typeName)}/${fileNameFromWinRTType(typeName)}');
    } else if (typeDef.isStruct) {
      if (currentPackageName != typeDef.packageName) {
        return typeDef.packageImport;
      }

      return relativePathTo(
          'packages/${folderFromWinRTType(typeName)}/structs.g.dart');
    } else {
      // TODO: Add support for these as they occur.
      print('Unable to get import for typeDef: $typeDef');
      return '';
    }
  }

  String? getImportForTypeIdentifier(TypeIdentifier typeIdentifier) =>
      typeIdentifier.name.startsWith('Windows')
          ? getImportForTypeDef(typeIdentifier.type!)
          : null;

  Set<String> get interfaceImports {
    if (typeDef.interfaces.isEmpty) return {};

    final importList = <String>{};
    for (final interface in typeDef.interfaces) {
      final import = getImportForTypeDef(interface);
      if (import.isNotEmpty) importList.add(import);
      // Keep unwrapping until there are no types left.
      var refType = interface.typeSpec;
      while (refType?.typeArg != null) {
        refType = refType?.typeArg;
        if (refType != null) {
          final import = getImportForTypeIdentifier(refType);
          if (import != null && import.isNotEmpty) importList.add(import);
        }
      }
    }

    return importList;
  }

  Set<String> get extraImports => {
        'dart:async',
        'dart:ffi',
        'package:ffi/ffi.dart',
        'package:win32/win32.dart',
        if (currentPackageName == 'windows_foundation') ...[
          relativePathTo('../internal.dart'),
          relativePathTo('packages/windows_foundation/callbacks.dart'),
          relativePathTo('packages/windows_foundation/helpers.dart'),
          relativePathTo('packages/windows_foundation/iinspectable.dart'),
          relativePathTo('packages/windows_foundation/types.dart'),
          relativePathTo(
              'packages/windows_foundation/collections/iiterator.dart'),
        ] else ...[
          'package:windows_foundation/internal.dart',
          'package:windows_foundation/windows_foundation.dart',
        ],
      };

  Set<String> get imports =>
      {...interfaceImports, ...importsForClass, ...extraImports}
        // TODO: Remove this once WinRT events are supported.
        ..removeWhere((import) => import.endsWith('eventargs.dart'));

  String get importHeader {
    final useImportAliasForWinRTUri =
        !['IUriRuntimeClass', 'IUriRuntimeClassFactory'].contains(shortName);

    return sortImports(
      imports.map((import) {
        if (useImportAliasForWinRTUri && import.endsWith('/uri.dart')) {
          // Use import alias to avoid conflict with the dart:core's Uri.
          return "import 'package:windows_foundation/uri.dart' as winrt_uri;";
        }

        return "import '$import';";
      }).toList(),
    ).join('\n');
  }

  List<WinRTMethodProjection>? _methodProjections;

  List<WinRTMethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  List<WinRTMethodProjection> _cacheMethodProjections() {
    final projection = <WinRTMethodProjection>[];
    var vtableOffset = vtableStart;

    for (final method in typeDef.methods) {
      if (method.isGetProperty) {
        final getPropertyProjection =
            WinRTGetPropertyProjection.create(method, vtableOffset++);
        projection.add(getPropertyProjection);
      } else if (method.isSetProperty) {
        final setPropertyProjection =
            WinRTSetPropertyProjection.create(method, vtableOffset++);
        projection.add(setPropertyProjection);
      } else {
        final methodProjection =
            WinRTMethodProjection.create(method, vtableOffset++);
        projection.add(methodProjection);
      }
    }

    return projection;
  }

  // WinRT interfaces don't inherit in metadata (e.g. IAsyncInfo has no
  // parent), but all WinRT interfaces have a base type of IInspectable as far
  // as the COM vtable is concerned. They contain the functions of
  // IInspectable (as well as IUnknown, from which IInspectable itself
  // inherits).
  //
  // For more information, see the Interfaces section of the documentation here:
  // https://docs.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system
  int get vtableStart => 6;

  String get shortName => stripGenerics(lastComponent(typeDef.name));

  String get fromFactoryConstructor => '''
  factory $shortName.from(IInspectable interface) =>
      $shortName.fromRawPointer(interface.toInterface(IID_$shortName));''';

  /// Returns the path to the folder where the current interface is located
  /// (e.g. `packages/windows_storage/pickers` for
  /// `Windows.Storage.Pickers.IFileOpenPicker`).
  String get currentFolderPath =>
      'packages/${folderFromWinRTType(typeDef.name)}';

  /// Returns the name of the package where the current interface is located
  /// (e.g. `windows_globalization` for `Windows.Globalization.Calendar`).
  String get currentPackageName => typeDef.packageName;

  /// Returns the fully qualified name of the current interface (e.g.
  /// `Windows.Globalization.Calendar`, `Windows.Foundation.IReference`1`).
  String get currentTypeName => typeDef.fullyQualifiedName;

  /// Converts [path] to an equivalent relative path from the
  /// [currentFolderPath].
  String relativePathTo(String path) =>
      relativePath(path, start: currentFolderPath);

  String get implementsClause =>
      inheritsFrom.isNotEmpty ? 'implements $inheritsFrom ' : '';

  String get classDeclaration =>
      'class $shortName extends IInspectable $implementsClause{';

  String get namedConstructor => '$shortName.fromRawPointer(super.ptr);';

  List<TypeDef> get implementsInterfaces => typeDef.interfaces
    ..removeWhere((interface) => excludedWindowsRuntimeInterfacesInInherits
        .contains(interface.fullyQualifiedName));

  List<WinRTMethodForwardersProjection>? _methodForwarders;

  List<WinRTMethodForwardersProjection> get methodForwarders =>
      _methodForwarders ??= _cacheMethodForwarders();

  List<WinRTMethodForwardersProjection> _cacheMethodForwarders() =>
      implementsInterfaces
          .where((interface) =>
              !excludedWindowsRuntimeInterfacesInMethodForwarders
                  .contains(interface.fullyQualifiedName))
          .map((interface) => WinRTMethodForwardersProjection(interface, this))
          .toList();

  @override
  String toString() => '''
$header
$importHeader
$guidConstants

$classPreamble
$classDeclaration
  // vtable begins at $vtableStart, is ${methodProjections.length} entries long.
  $namedConstructor

  $fromFactoryConstructor

  ${methodProjections.join('\n')}
  ${methodForwarders.join('\n')}
}
''';
}
