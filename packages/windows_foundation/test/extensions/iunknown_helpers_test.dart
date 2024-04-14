// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('IUnknown', () {
    test('cast works', () {
      final uri = winrt_uri.Uri.createUri('https://dart.dev/');
      final stringable = uri.cast(IStringable.fromPtr, IID_IStringable);
      expect(stringable.toString(), equals('https://dart.dev/'));
    });

    test('cast throws', () {
      final stringMap = StringMap();
      expect(() => stringMap.cast(IPropertySet.fromPtr, IID_IPropertySet),
          throwsA(isA<WindowsException>()));
    });

    test('tryCast works', () {
      final uri = winrt_uri.Uri.createUri('https://dart.dev/');
      final stringable = uri.tryCast(IStringable.fromPtr, IID_IStringable);
      expect(stringable, isNotNull);
      expect(stringable.toString(), equals('https://dart.dev/'));
    });

    test('tryCast returns null', () {
      final stringMap = StringMap();
      expect(stringMap.tryCast(IPropertySet.fromPtr, IID_IPropertySet), isNull);
    });
  });

  tearDownAll(forceGC);
}
