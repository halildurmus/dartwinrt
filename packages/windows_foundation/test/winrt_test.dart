// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

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
      final pv = PropertyValue.createString('dartwinrt');
      expect(pv.getString(), equals('dartwinrt'));
    });
  });

  group('IUnknown', () {
    test('addRef and release works correctly', () {
      final stringMap = StringMap()..detach();
      expect(refCount(stringMap), 1);
      stringMap.addRef();
      expect(refCount(stringMap), 2);
      stringMap.release();
      expect(refCount(stringMap), 1);
    });

    test('toInterface works', () {
      final uri = winrt_uri.Uri.createUri('https://dart.dev/');
      final stringable = IStringable.fromPtr(uri.toInterface(IID_IStringable));
      expect(stringable.toString(), equals('https://dart.dev/'));
    });

    test('toInterface throws', () {
      final stringMap = StringMap();
      expect(() => stringMap.toInterface(IID_IPropertySet),
          throwsA(isA<WindowsException>()));
    });
  });

  tearDownAll(forceGC);
}
