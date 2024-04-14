// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../projections.dart';

/// Parameter projection for `Pointer<T>` parameters.
final class ReferenceParameterProjection extends ParameterProjection {
  ReferenceParameterProjection(super.parameter);

  @override
  String get type =>
      typeProjection.dereference().dartType; // e.g., Pointer<Uint32> -> int

  @override
  String get creator => '$identifier.value';
}
