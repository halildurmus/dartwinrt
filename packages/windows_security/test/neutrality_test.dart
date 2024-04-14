// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:windows_security/windows_security.dart';

// This test has two purposes:
// 1. Make sure that the act of including windows_security a dependency does not
//    cause failures on other platforms.
// 2. Prevent CI from failing on other platforms (GitHub Actions fails unless at
//    least one test is run successfully.)
void main() {
  test('Dormant package does not cause failures on other platforms', () {
    final webAccountState = WebAccountState.connected;
    expect(webAccountState, equals(WebAccountState.connected));
  });
}
