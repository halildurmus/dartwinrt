// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('WinRT', () {
    test('initialization should succeed', () {
      final hr = RoInitialize(RO_INIT_TYPE.RO_INIT_MULTITHREADED);
      expect(hr, equals(S_OK));
      RoUninitialize();
    });

    test('double initialization should succeed with warning', () {
      final hr = RoInitialize(RO_INIT_TYPE.RO_INIT_MULTITHREADED);
      expect(SUCCEEDED(hr), isTrue);
      expect(hr, equals(S_OK));

      final hr2 = RoInitialize(RO_INIT_TYPE.RO_INIT_MULTITHREADED);
      expect(SUCCEEDED(hr2), isTrue);
      expect(hr2, equals(S_FALSE));

      // Balance out uninitialization. This is deliberately called twice.
      RoUninitialize();
      RoUninitialize();
    });

    test('change of threading model should fail', () {
      final hr = RoInitialize(RO_INIT_TYPE.RO_INIT_MULTITHREADED);
      expect(SUCCEEDED(hr), isTrue);
      expect(hr, equals(S_OK));

      final hr2 = RoInitialize(RO_INIT_TYPE.RO_INIT_SINGLETHREADED);
      expect(FAILED(hr2), isTrue);
      expect(hr2, equals(RPC_E_CHANGED_MODE));

      // Balance out uninitialization. This is deliberately only called once,
      // because it only succeeded once.
      RoUninitialize();
    });

    test('basic test', () {
      final propertyValue = PropertyValue.createString('dartwinrt');
      expect(propertyValue.getString(), equals('dartwinrt'));
    });
  });
}
