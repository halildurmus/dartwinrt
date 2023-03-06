// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart' hide IUnknown;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

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
}
