// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('IMap<String, Object?>', () {
    test('empty', () {
      final map = IMap<String, Object?>.empty();
      expect(map.size, equals(0));
      expect(getClassName(map),
          equals('Windows.Foundation.Collections.PropertySet'));
    });

    test('fromMap', () {
      final map = IMap.fromMap({'key1': 'value1', 'key2': null, 'key3': true});
      expect(map.lookup('key1'), equals('value1'));
      expect(map.lookup('key2'), isNull);
      expect(map.lookup('key3'), isTrue);
    });
  });

  group('IMap<String, String>', () {
    test('empty', () {
      final map = IMap<String, String>.empty();
      expect(map.size, equals(0));
      expect(getClassName(map),
          equals('Windows.Foundation.Collections.StringMap'));
    });

    test('fromMap', () {
      final map =
          IMap.fromMap({'key1': 'value1', 'key2': '', 'key3': 'value3'});
      expect(map.lookup('key1'), equals('value1'));
      expect(map.lookup('key2'), isEmpty);
      expect(map.lookup('key3'), equals('value3'));
    });
  });

  tearDownAll(forceGC);
}
