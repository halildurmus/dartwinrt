// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../constants/constants.dart';
import '../../projections/projections.dart';
import '../helpers.dart';
import 'typedef_helpers.dart';

extension ImportHelpers on InterfaceProjection {
  String? importForTypeDef(TypeDef typeDef) {
    final type = typeDef.fullyQualifiedName;
    assert(type.isNotEmpty);

    if (name == type || ignoredTypesInImports.contains(type)) return null;
    if (typeDef.isDelegate) return null;

    // If the type is in another package, return package import for that package
    if (packageName != typeDef.packageName) return typeDef.packageImport;

    // Otherwise, return relative import for that file
    if (typeDef.isClass ||
        typeDef.isEnum ||
        typeDef.isInterface ||
        typeDef.isStruct) {
      return relativePathTo(
          '${folderFromType(type)}/${fileNameFromType(type)}');
    }

    print('Unable to get import for typeDef: $typeDef');
    return '';
  }

  String? importForTypeIdentifier(TypeIdentifier typeIdentifier) {
    if (!typeIdentifier.name.startsWith('Windows')) return null;
    final type = typeIdentifier.type;
    if (type == null) return null;
    return importForTypeDef(type);
  }

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
      ...[for (final typeDef in typeDef.interfaces) ...typeDef.methods]
    };

    final imports = <String>{};
    for (final method in methods) {
      final paramsAndReturnType = [...method.parameters, method.returnType];
      for (final param in paramsAndReturnType) {
        final import = importForTypeIdentifier(param.typeIdentifier);
        if (import != null) imports.add(import);

        // Keep unwrapping until there are no types left.
        var refType = param.typeIdentifier.typeArg;
        while (refType != null) {
          final import = importForTypeIdentifier(refType);
          if (import != null) imports.add(import);
          refType = refType.typeArg;
        }
      }
    }

    return imports;
  }
}
