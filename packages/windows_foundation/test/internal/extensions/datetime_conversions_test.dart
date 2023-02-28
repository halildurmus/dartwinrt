// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:windows_foundation/internal.dart';

void main() {
  final winrtDateTime = DateTime.utc(2023, 8, 28, 12, 12, 12).toWinRTDateTime();

  test('toDartDateTime', () {
    final dartDateTime = winrtDateTime.toDartDateTime();
    expect(dartDateTime.year, equals(2023));
    expect(dartDateTime.month, equals(8));
    expect(dartDateTime.day, equals(28));
    expect(dartDateTime.hour, equals(12));
    expect(dartDateTime.minute, equals(12));
    expect(dartDateTime.second, equals(12));
  });

  test('toWinRTDateTime', () {
    expect(winrtDateTime, equals(133376983320000000));
  });
}
