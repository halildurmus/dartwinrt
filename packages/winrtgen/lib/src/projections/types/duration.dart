// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../parameter.dart';

/// Parameter projection for `Duration` parameters.
final class DurationParameterProjection extends ParameterProjection {
  DurationParameterProjection(super.parameter);

  @override
  String get type => 'Duration';

  @override
  String get creator => '$identifier.toDartDuration()';

  @override
  String get into => '$identifier.toWinRTDuration()';

  @override
  String get toListCreator => '.map(($identifier) => $creator).toList()';

  @override
  String get toListInto => '$identifier[i].toWinRTDuration()';
}
