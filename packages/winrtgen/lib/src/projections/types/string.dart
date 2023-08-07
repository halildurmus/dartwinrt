// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../parameter.dart';

/// Parameter projection for `String` parameters.
final class StringParameterProjection extends ParameterProjection {
  StringParameterProjection(super.parameter);

  bool get isCharType => typeProjection.isCharType;

  @override
  String get type => 'String';

  @override
  String get creator => isCharType
      ? 'String.fromCharCode($identifier.value)'
      : '$identifier.toDartString()';

  @override
  String get into =>
      isCharType ? '$identifier.codeUnitAt(0)' : '$identifier.toHString()';
}
