// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'type_arg.dart';

/// Represents a WinRT generic type.
sealed class GenericType {
  const GenericType(this.fullyQualifiedType);

  final String fullyQualifiedType;
}

/// Represents a WinRT generic type with one type argument (e.g.
/// Windows.Foundation.IAsyncOperation`1).
class GenericTypeWithOneTypeArg extends GenericType {
  const GenericTypeWithOneTypeArg(super.fullyQualifiedType, this.typeArgs);

  /// The type arguments for this generic type (e.g. `TypeArg.bool_`,
  /// `TypeArg.string`).
  final List<TypeArg> typeArgs;
}

/// Represents a WinRT generic type with two type arguments (e.g.
/// Windows.Foundation.Collections.IMap`2).
class GenericTypeWithTwoTypeArgs extends GenericType {
  const GenericTypeWithTwoTypeArgs(super.fullyQualifiedType, this.typeArgs);

  /// The type argument pairs for this generic type (e.g.
  /// `TypeArgPair(TypeArg.string, TypeArg.string)`,
  /// `TypeArgPair(TypeArg.string, TypeArg.nullableObject)`).
  final List<(TypeArg, TypeArg)> typeArgs;
}
