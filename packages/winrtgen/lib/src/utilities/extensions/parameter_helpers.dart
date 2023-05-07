// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../models/projection_type.dart';
import '../../projections/type.dart';
import 'type_identifier_helpers.dart';

extension ParameterHelpers on Parameter {
  /// Returns a copy of this parameter.
  Parameter clone() =>
      Parameter.fromTypeIdentifier(scope, parent.token, typeIdentifier)
        ..name = name;

  bool get isClassVariableType => typeIdentifier.isClassVariableType;

  bool get isDelegate => typeIdentifier.type?.isDelegate ?? false;

  bool get isGenericType => typeIdentifier.isGenericType;

  bool get isSimpleArrayType => typeIdentifier.isSimpleArrayType;

  /// Returns the appropriate [ProjectionType] for this parameter.
  ProjectionType get projectionType =>
      TypeProjection(typeIdentifier).projectionType;
}
