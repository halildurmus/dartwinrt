// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../models/projection_kind.dart';
import '../../projections/type.dart';
import 'type_identifier_helpers.dart';

extension ParameterHelpers on Parameter {
  /// Returns a copy of this parameter.
  Parameter clone() =>
      Parameter.fromTypeIdentifier(scope, parent.token, typeIdentifier)
        ..attributes = attributes
        ..name = name;

  bool get isClassVariableType => typeIdentifier.isClassVariableType;

  bool get isDelegate => typeIdentifier.type?.isDelegate ?? false;

  bool get isGenericType => typeIdentifier.isGenericType;

  bool get isPointerType => typeIdentifier.isPointerType;

  /// Whether this is a simple array size parameter (e.g. `__valueSize`).
  bool get isSimpleArraySizeParam => RegExp(r'^(__\w+Size)$').hasMatch(name);

  bool get isSimpleArrayType => typeIdentifier.isSimpleArrayType;

  /// Returns the appropriate [ProjectionKind] for this parameter.
  ProjectionKind get projectionKind =>
      TypeProjection(typeIdentifier).projectionKind;
}
