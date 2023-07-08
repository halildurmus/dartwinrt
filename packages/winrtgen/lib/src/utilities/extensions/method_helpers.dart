// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../models/models.dart';
import '../../projections/projections.dart';
import 'type_identifier_helpers.dart';

extension MethodHelpers on Method {
  /// Returns a copy of this method.
  Method clone() => Method.fromToken(scope, token);

  /// Whether this method returns `void`.
  bool get isVoid => returnType.typeIdentifier.isVoidType;

  /// Returns the appropriate [ProjectionKind] for this method.
  ProjectionKind get projectionKind => parameters.any((p) => p.isOutParam)
      ? ProjectionKind.record
      : TypeProjection(returnType.typeIdentifier).projectionKind;
}
