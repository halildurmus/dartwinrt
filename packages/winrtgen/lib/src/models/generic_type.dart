// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../utilities/utilities.dart';
import 'type_arg_kind.dart';

/// Represents a WinRT generic type.
sealed class GenericType {
  const GenericType(this.fullyQualifiedType);

  /// The fully qualified type (e.g., Windows.Foundation.IReference`1).
  final String fullyQualifiedType;

  /// The short name of the type (e.g., `IReference`).
  String get shortName => lastComponent(stripGenerics(fullyQualifiedType));

  @override
  String toString() => shortName;
}

/// Represents a WinRT generic type with one type argument (e.g.,
/// Windows.Foundation.IAsyncOperation`1).
final class GenericTypeWithOneTypeArg extends GenericType {
  const GenericTypeWithOneTypeArg(super.fullyQualifiedType, this.typeArgKinds);

  /// The [TypeArgKind]s for this generic type (e.g., `TypeArgKind.bool_`,
  /// `TypeArgKind.string`).
  final Set<TypeArgKind> typeArgKinds;

  /// The [TypeArgKind]s for this generic type that are found in the Metadata.
  Set<TypeArgKind> get typeArgKindsInMetadata {
    final typeArgKinds = <TypeArgKind>{};

    for (final Method(:returnType) in getAllMethodsInMetadata()) {
      final Parameter(:isClassVariableType, :isGenericType) = returnType;
      if (isClassVariableType) continue;

      final typeIdentifier =
          returnType.typeIdentifier.name != fullyQualifiedType && isGenericType
              ? dereferenceType(returnType.typeIdentifier)
              : returnType.typeIdentifier;

      if (typeIdentifier.name == fullyQualifiedType) {
        final typeArg = typeIdentifier.typeArg!;
        if (typeArg.isClassVariableType) continue;

        final isNullable = shortName == 'IReference' ||
            typeArg.isClassType ||
            typeArg.isGenericType ||
            typeArg.isObjectType;
        final typeArgKind =
            TypeArgKind.fromTypeIdentifier(typeArg, isNullable: isNullable);
        typeArgKinds.add(typeArgKind);
      }
    }

    return typeArgKinds;
  }
}

/// Represents a WinRT generic type with two type arguments (e.g.,
/// Windows.Foundation.Collections.IMap`2).
final class GenericTypeWithTwoTypeArgs extends GenericType {
  const GenericTypeWithTwoTypeArgs(
      super.fullyQualifiedType, this.typeArgKindPairs);

  /// The [TypeArgKind] pairs for this generic type (e.g.,
  /// `(TypeArgKind.string, TypeArgKind.string)`,
  /// `(TypeArgKind.string, TypeArgKind.nullableObject)`).
  final Set<(TypeArgKind, TypeArgKind)> typeArgKindPairs;

  /// The [TypeArgKind] pairs for this generic type that are found in the
  /// Metadata.
  Set<(TypeArgKind, TypeArgKind)> get typeArgKindPairsInMetadata {
    final typeArgKindPairs = <(TypeArgKind, TypeArgKind)>{};

    for (final method in getAllMethodsInMetadata()) {
      final paramsAndReturnType = [...method.parameters, method.returnType];

      for (final param in paramsAndReturnType) {
        if (param.isClassVariableType) continue;

        final typeIdentifier =
            param.typeIdentifier.name != fullyQualifiedType &&
                    (param.isGenericType || param.isReferenceType)
                ? dereferenceType(param.typeIdentifier)
                : param.typeIdentifier;

        if (typeIdentifier.name == fullyQualifiedType) {
          final [typeArg1, typeArg2] = typeIdentifier.typeArgs;
          if (typeArg1.isClassVariableType || typeArg2.isClassVariableType) {
            continue;
          }

          final typeArg1IsNullable = false;
          final typeArgKind1 = TypeArgKind.fromTypeIdentifier(typeArg1,
              isNullable: typeArg1IsNullable);
          final typeArg2IsNullable = typeArg2.isClassType ||
              typeArg2.isGenericType ||
              typeArg2.isObjectType;
          final typeArgKind2 = TypeArgKind.fromTypeIdentifier(typeArg2,
              isNullable: typeArg2IsNullable);
          typeArgKindPairs.add((typeArgKind1, typeArgKind2));
        }
      }
    }

    return typeArgKindPairs;
  }
}
