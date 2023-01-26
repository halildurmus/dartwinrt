// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

import '../constants/exclusions.dart';
import '../constants/headers.dart';
import '../utils.dart';
import 'winrt_get_property.dart';
import 'winrt_implements_mapper.dart';
import 'winrt_method.dart';
import 'winrt_set_property.dart';

class WinRTInterfaceProjection extends ComInterfaceProjection {
  WinRTInterfaceProjection(super.typeDef, [super.comment]);

  /// TODO:
  factory WinRTInterfaceProjection.fromTypeName(String fullyQualifiedTypeName,
      [String comment = '']) {
    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedTypeName);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedTypeName");

    return WinRTInterfaceProjection(typeDef, comment);
  }

  // ComInterfaceProjection overrides

  @override
  String get headerPreamble => copyrightHeader;

  @override
  String get category => 'interface';

  @override
  String get classType => '';

  @override
  String get inheritsFrom =>
      implementsInterfaces.map(shortTypeNameFromTypeDef).toList().join(', ');

  @override
  String getImportForTypeDef(TypeDef typeDef) {
    final typeName = fullyQualifiedTypeNameFromTypeDef(typeDef);

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
      if (currentPackageName != packageNameFromTypeDef(typeDef)) {
        return packageImportFromTypeDef(typeDef);
      }

      return relativePathTo(
          'packages/${folderFromWinRTType(typeName)}/enums.g.dart');
    } else if (typeDef.isClass || typeDef.isInterface) {
      if (currentPackageName != packageNameFromTypeDef(typeDef)) {
        return typeName == 'Windows.Foundation.Uri'
            ? 'package:windows_foundation/uri.dart'
            : packageImportFromTypeDef(typeDef);
      }

      return relativePathTo(
          'packages/${folderFromWinRTType(typeName)}/${fileNameFromWinRTType(typeName)}');
    } else if (typeDef.isStruct) {
      if (currentPackageName != packageNameFromTypeDef(typeDef)) {
        return packageImportFromTypeDef(typeDef);
      }

      return relativePathTo(
          'packages/${folderFromWinRTType(typeName)}/structs.g.dart');
    } else {
      // TODO: Add support for these as they occur.
      print('Unable to get import for typeDef: $typeDef');
      return '';
    }
  }

  @override
  String? getImportForTypeIdentifier(TypeIdentifier typeIdentifier) =>
      typeIdentifier.name.startsWith('Windows')
          ? getImportForTypeDef(typeIdentifier.type!)
          : null;

  @override
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

  @override
  Set<String> get extraImports => {
        'dart:async',
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

  @override
  Set<String> get imports =>
      {...coreImports, ...interfaceImports, ...importsForClass, ...extraImports}
        // TODO: Remove this once WinRT events are supported.
        ..removeWhere((import) => import.endsWith('eventargs.dart'));

  @override
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

  List<MethodProjection>? _methodProjections;

  @override
  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  List<MethodProjection> _cacheMethodProjections() {
    final projection = <MethodProjection>[];
    var vtableOffset = vtableStart;

    for (final method in typeDef.methods) {
      if (method.isGetProperty) {
        final getPropertyProjection =
            WinRTGetPropertyProjection(method, vtableOffset++);
        projection.add(getPropertyProjection);
      } else if (method.isSetProperty) {
        final setPropertyProjection =
            WinRTSetPropertyProjection(method, vtableOffset++);
        projection.add(setPropertyProjection);
      } else {
        final methodProjection = WinRTMethodProjection(method, vtableOffset++);
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
  @override
  int cacheVtableStart(TypeDef? type) => 6;

  @override
  String get shortName => stripGenerics(lastComponent(typeDef.name));

  @override
  String get fromInterfaceHelper => '''
  factory $shortName.from(IInspectable interface) =>
      $shortName.fromRawPointer(interface.toInterface(IID_$shortName));''';

  /// Returns the path to the folder where the current interface is located
  /// (e.g. `packages/windows_storage/pickers` for
  /// `Windows.Storage.Pickers.IFileOpenPicker`).
  String get currentFolderPath =>
      'packages/${folderFromWinRTType(typeDef.name)}';

  /// Returns the name of the package where the current interface is located
  /// (e.g. `windows_globalization` for `Windows.Globalization.Calendar`).
  String get currentPackageName => packageNameFromTypeDef(typeDef);

  /// Returns the fully qualified name of the current interface (e.g.
  /// `Windows.Globalization.Calendar`, `Windows.Foundation.IReference`1`).
  String get currentTypeName => fullyQualifiedTypeNameFromTypeDef(typeDef);

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
        .contains(fullyQualifiedTypeNameFromTypeDef(interface)));

  List<WinRTImplementsMapperProjection>? _implementsMappers;

  List<WinRTImplementsMapperProjection> get implementsMappers =>
      _implementsMappers ??= _cacheImplementsMappers();

  List<WinRTImplementsMapperProjection> _cacheImplementsMappers() =>
      implementsInterfaces
          .where((interface) =>
              !excludedWindowsRuntimeInterfacesInImplementsMappers
                  .contains(fullyQualifiedTypeNameFromTypeDef(interface)))
          .map((interface) =>
              WinRTImplementsMapperProjection(typeDef, interface))
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

  $fromInterfaceHelper

  ${methodProjections.join('\n')}

  ${implementsMappers.join('\n')}
}
''';
}
