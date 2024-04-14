// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../parameter.dart';

/// Parameter projection for `DateTime` parameters.
final class DateTimeParameterProjection extends ParameterProjection {
  DateTimeParameterProjection(super.parameter);

  @override
  String get type => 'DateTime';

  @override
  String get creator => '$identifier.toDartDateTime()';

  @override
  String get into => '$identifier.toWinRTDateTime()';
}
