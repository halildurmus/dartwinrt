// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../projections/winrt_interface.dart';
import '../utils.dart';
import 'typedef_helpers.dart';

extension ImportHelpers on WinRTInterfaceProjection {
  String? importForTypeDef(TypeDef typeDef) {
    final typeName = typeDef.fullyQualifiedName;
    if (name == typeName || ignoredWindowsRuntimeTypes.contains(typeName)) {
      return null;
    }

    if (packageName != typeDef.packageName) return typeDef.packageImport;

    // TODO: Update this once we generate WinRT delegates in their respective
    // folders (e.g. Windows.Foundation.AsyncActionCompletedHandler ->
    // packages/windows_foundation/delegates.g.dart)
    if (typeDef.isDelegate) return null;

    if (typeDef.isEnum) {
      return relativePathTo(
          'packages/${folderFromWinRTType(typeName)}/enums.g.dart');
    }

    if (typeDef.isClass || typeDef.isInterface) {
      return relativePathTo(
          'packages/${folderFromWinRTType(typeName)}/${fileNameFromWinRTType(typeName)}');
    }

    if (typeDef.isStruct) {
      return relativePathTo(
          'packages/${folderFromWinRTType(typeName)}/structs.g.dart');
    }

    // TODO: Add support for these as they occur.
    print('Unable to get import for typeDef: $typeDef');
    return '';
  }

  String? importForTypeIdentifier(TypeIdentifier typeIdentifier) =>
      typeIdentifier.name.startsWith('Windows')
          ? importForTypeDef(typeIdentifier.type!)
          : null;

  /// Returns imports for [typeDef]'s inherited interfaces.
  Set<String> get importsForInheritedInterfaces {
    if (typeDef.interfaces.isEmpty) return {};

    final imports = <String>{};
    for (final interface in typeDef.interfaces) {
      final import = importForTypeDef(interface);
      if (import != null) imports.add(import);

      // Keep unwrapping until there are no types left.
      var refType = interface.typeSpec;
      while (refType?.typeArg != null) {
        refType = refType?.typeArg;
        if (refType != null) {
          final import = importForTypeIdentifier(refType);
          if (import != null) imports.add(import);
        }
      }
    }

    return imports;
  }

  /// Returns imports for types in parameters and return types of [typeDef]'s
  /// methods, as well as methods from inherited interfaces.
  Set<String> get importsForTypes {
    final methods = {
      ...typeDef.methods,
      // Add the methods from inherited interfaces
      ...[for (var typeDef in typeDef.interfaces) ...typeDef.methods]
    };

    final imports = <String>{};
    for (final method in methods) {
      final paramsAndReturnType = [...method.parameters, method.returnType];
      for (final param in paramsAndReturnType) {
        final import = importForTypeIdentifier(param.typeIdentifier);
        if (import != null) imports.add(import);

        // Keep unwrapping until there are no types left.
        var refType = param.typeIdentifier;
        while (refType.typeArg != null) {
          refType = refType.typeArg!;
          final import = importForTypeIdentifier(refType);
          if (import != null) imports.add(import);
        }
      }
    }

    return imports;
  }
}
