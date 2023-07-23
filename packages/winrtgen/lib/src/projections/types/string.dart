// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../parameter.dart';

/// Parameter projection for `String` parameters.
final class StringParameterProjection extends ParameterProjection {
  StringParameterProjection(super.parameter);

  @override
  String get type => 'String';

  @override
  String get creator => '$identifier.toDartString()';

  @override
  String get into => '$identifier.toHString()';

  @override
  String get toListInto => '$identifier[i].toHString()';
}
