// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('StringMap', () {
    IMap<String, String> getMap() => StringMap()
      ..insert('key1', 'value1')
      ..insert('key2', '')
      ..insert('key3', 'value3');

    test('lookup throws a WindowsException if the map is empty', () {
      final map = getMap()..clear();
      expect(() => map.lookup('key1'), throwsA(isA<WindowsException>()));
    });

    test('lookup throws a WindowsException if the item does not exists', () {
      final map = getMap();
      expect(() => map.lookup('key4'), throwsA(isA<WindowsException>()));
    });

    test('lookup returns items', () {
      final map = getMap();
      expect(map.lookup('key1'), equals('value1'));
      expect(map.lookup('key2'), isEmpty);
      expect(map.lookup('key3'), equals('value3'));
    });

    test('hasKey finds items', () {
      final map = getMap();
      expect(map.hasKey('key1'), isTrue);
      expect(map.hasKey('key2'), isTrue);
      expect(map.hasKey('key3'), isTrue);
    });

    test('hasKey returns false if the item does not exists', () {
      final map = getMap();
      expect(map.hasKey('key4'), isFalse);
    });

    test('getView', () {
      final map = getMap();
      final unmodifiableMap = map.getView();
      expect(unmodifiableMap.length, equals(3));
      expect(() => unmodifiableMap..clear(), throwsUnsupportedError);
    });

    test('insert replaces an existing item', () {
      final map = getMap();
      expect(map.size, equals(3));
      expect(map.insert('key1', 'value1New'), isTrue);
      expect(map.size, equals(3));
      expect(map.lookup('key1'), equals('value1New'));
    });

    test('insert inserts a new item', () {
      final map = getMap();
      expect(map.size, equals(3));
      expect(map.insert('key4', 'value4'), isFalse);
      expect(map.size, equals(4));
      expect(map.lookup('key4'), equals('value4'));
    });

    test('remove throws a WindowsException if the map is empty', () {
      final map = getMap()..clear();
      expect(() => map.remove('key0'), throwsA(isA<WindowsException>()));
    });

    test('remove throws a WindowsException if the item does not exists', () {
      final map = getMap();
      expect(() => map.remove('key4'), throwsA(isA<WindowsException>()));
    });

    test('remove', () {
      final map = getMap();
      expect(map.size, equals(3));
      map.remove('key1');
      expect(map.size, equals(2));
      expect(() => map.lookup('key1'), throwsA(isA<WindowsException>()));

      map.remove('key2');
      expect(map.size, equals(1));
      expect(() => map.lookup('key2'), throwsA(isA<WindowsException>()));
    });

    test('clear', () {
      final map = getMap();
      expect(map.size, equals(3));
      map.clear();
      expect(map.size, equals(0));
    });

    test('toMap', () {
      final map = getMap();
      final dartMap = map.toMap();
      expect(dartMap.length, equals(3));
      expect(dartMap['key1'], equals('value1'));
      expect(dartMap['key2'], isEmpty);
      expect(dartMap['key3'], equals('value3'));
      expect(() => dartMap..clear(), throwsUnsupportedError);
    });

    test('first', () {
      final map = getMap();
      final iterator = map.first();
      expect(iterator.hasCurrent, isTrue);
      var current = iterator.current;
      expect(current.key, equals('key3'));
      expect(current.value, equals('value3'));
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current.key, equals('key2'));
      expect(current.value, isEmpty);
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current.key, equals('key1'));
      expect(current.value, equals('value1'));
      expect(iterator.moveNext(), isFalse);
    });

    test('operator []', () {
      final map = getMap();
      expect(map['key1'], equals('value1'));
      expect(map['key2'], isEmpty);
      expect(map['key3'], equals('value3'));
    });

    test('operator []=', () {
      final map = getMap();

      // Replace an existing item.
      expect(map.size, equals(3));
      map['key3'] = 'newValue3';
      expect(map.size, equals(3));
      expect(map.lookup('key3'), equals('newValue3'));

      // Insert a new item.
      map['key4'] = 'value4';
      expect(map.size, equals(4));
      expect(map.lookup('key4'), equals('value4'));
    });
  });
}
