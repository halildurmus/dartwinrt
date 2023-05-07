// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../models/models.dart';
import '../../projections/projections.dart';

extension MethodHelpers on Method {
  /// Returns a copy of this method.
  Method clone() => Method.fromToken(scope, token);

  /// Returns the appropriate [ProjectionType] for this method.
  ProjectionType get projectionType =>
      TypeProjection(returnType.typeIdentifier).projectionType;
}
