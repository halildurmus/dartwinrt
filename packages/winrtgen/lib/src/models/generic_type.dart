// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../utilities/utilities.dart';
import 'type_arg_kind.dart';

/// Represents a WinRT generic type.
sealed class GenericType {
  const GenericType(this.fullyQualifiedType);

  /// The fully qualified type (e.g. Windows.Foundation.IReference`1).
  final String fullyQualifiedType;

  /// The short name of the type (e.g. `IReference`).
  String get shortName => lastComponent(stripGenerics(fullyQualifiedType));
}

/// Represents a WinRT generic type with one type argument (e.g.
/// Windows.Foundation.IAsyncOperation`1).
final class GenericTypeWithOneTypeArg extends GenericType {
  const GenericTypeWithOneTypeArg(super.fullyQualifiedType, this.typeArgs);

  /// The type arguments for this generic type (e.g. `TypeArgKind.bool_`,
  /// `TypeArgKind.string`).
  final List<TypeArgKind> typeArgs;
}

/// Represents a WinRT generic type with two type arguments (e.g.
/// Windows.Foundation.Collections.IMap`2).
final class GenericTypeWithTwoTypeArgs extends GenericType {
  const GenericTypeWithTwoTypeArgs(super.fullyQualifiedType, this.typeArgs);

  /// The type argument pairs for this generic type (e.g.
  /// `(TypeArgKind.string, TypeArgKind.string)`,
  /// `(TypeArgKind.string, TypeArgKind.nullableObject)`).
  final List<(TypeArgKind, TypeArgKind)> typeArgs;
}
