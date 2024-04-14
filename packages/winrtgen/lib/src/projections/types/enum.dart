// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../parameter.dart';

/// Parameter projection for WinRT enum parameters.
final class EnumParameterProjection extends ParameterProjection {
  EnumParameterProjection(super.parameter);

  @override
  String get type => shortTypeName;

  @override
  String get creator => '$type.from($into)';

  @override
  String get into => '$identifier.value';
}
