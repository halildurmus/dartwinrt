// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:windows_foundation/internal.dart';

void main() {
  final winrtDuration =
      const Duration(days: 28, hours: 12, minutes: 12, seconds: 12)
          .toWinRTDuration();

  test('toDartDuration', () {
    final dartDuration = winrtDuration.toDartDuration();
    expect(dartDuration,
        equals(const Duration(days: 28, hours: 12, minutes: 12, seconds: 12)));
  });

  test('toWinRTDuration', () {
    expect(winrtDuration, equals(24631320000000));
  });
}
