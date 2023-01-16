// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

// Test the map helper functions to make sure everything is working correctly.

void main() {
  test('isSupportedKeyValuePair', () {
    expect(isSupportedKeyValuePair<int, IInspectable?>(), isTrue);
    expect(isSupportedKeyValuePair<int, int?>(), isFalse);
    expect(isSupportedKeyValuePair<int, Object?>(), isFalse);
    expect(isSupportedKeyValuePair<int, String?>(), isFalse);
    expect(isSupportedKeyValuePair<int, WinRTEnum>(), isFalse);

    expect(isSupportedKeyValuePair<Guid, IInspectable?>(), isTrue);
    expect(isSupportedKeyValuePair<Guid, Object?>(), isTrue);
    expect(isSupportedKeyValuePair<Guid, String?>(), isFalse);
    expect(isSupportedKeyValuePair<Guid, WinRTEnum>(), isFalse);

    expect(isSupportedKeyValuePair<WinRTEnum, IInspectable?>(), isTrue);
    expect(isSupportedKeyValuePair<WinRTEnum, Object?>(), isFalse);
    expect(isSupportedKeyValuePair<WinRTEnum, String?>(), isFalse);
    expect(isSupportedKeyValuePair<WinRTEnum, WinRTEnum>(), isFalse);

    expect(isSupportedKeyValuePair<Object, IInspectable?>(), isFalse);
    expect(isSupportedKeyValuePair<Object, Object?>(), isTrue);
    expect(isSupportedKeyValuePair<Object, String?>(), isFalse);
    expect(isSupportedKeyValuePair<Object, WinRTEnum>(), isFalse);

    expect(isSupportedKeyValuePair<String, Object?>(), isTrue);
    expect(isSupportedKeyValuePair<String, String>(), isTrue);
    expect(isSupportedKeyValuePair<String, String?>(), isFalse);
    expect(isSupportedKeyValuePair<String, IInspectable?>(), isTrue);
    expect(isSupportedKeyValuePair<String, WinRTEnum>(), isTrue);
  });
}
