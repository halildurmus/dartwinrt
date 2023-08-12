// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('WwwFormUrlDecoder', () {
    test('createWwwFormUrlDecoder', () {
      final decoder = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      expect(decoder.addRef(), equals(2));
      expect(decoder.release(), equals(1));
    });

    test('getFirstValueByName', () {
      final decoder = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      expect(decoder.getFirstValueByName('a'), equals('1'));
      expect(decoder.getFirstValueByName('b'), equals('2'));
      expect(decoder.getFirstValueByName('c'), equals('3'));
    });

    test('getAt', () {
      final decoder = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      final element = decoder.getAt(0);
      expect(element, isNotNull);
      expect(element!.name, equals('a'));
      expect(element.value, equals('1'));
    });

    test('size', () {
      final decoder = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      expect(decoder.size, equals(3));
    });

    test('indexOf', () {
      final decoder = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      final entry = decoder.getAt(1);
      expect(entry, isNotNull);
      expect(decoder.indexOf(entry), equals((true, index: 1)));
    });

    test('getMany', () {
      final decoder = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      final (count, :items) = decoder.getMany(1, 2);
      expect(count, equals(2));
      final first = items[0];
      expect(first, isNotNull);
      expect(first!.name, equals('b'));
      expect(first.value, equals('2'));
      final last = items[1];
      expect(last!.name, equals('c'));
      expect(last.value, equals('3'));
    });

    test('first', () {
      final decoder = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      final iterator = decoder.first();
      var current = iterator.current;
      expect(current, isNotNull);
      expect(current!.name, equals('a'));
      expect(current.value, equals('1'));
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current, isNotNull);
      expect(current!.name, equals('b'));
      expect(current.value, equals('2'));
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current, isNotNull);
      expect(current!.name, equals('c'));
      expect(current.value, equals('3'));
      expect(iterator.moveNext(), isFalse);
    });

    test('toList', () {
      final decoder = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      final list = decoder.toList();
      expect(list.length, equals(3));
      final first = list[0];
      expect(first, isNotNull);
      expect(first!.name, equals('a'));
      expect(first.value, equals('1'));
      final last = list[2];
      expect(last, isNotNull);
      expect(last!.name, equals('c'));
      expect(last.value, equals('3'));
    });

    test('operator []', () {
      final decoder = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      final element = decoder[1];
      expect(element, isNotNull);
      expect(element!.name, equals('b'));
      expect(element.value, equals('2'));
    });

    test('operator +', () {
      final decoder1 = WwwFormUrlDecoder.createWwwFormUrlDecoder('a=1&b=2&c=3');
      final decoder2 = WwwFormUrlDecoder.createWwwFormUrlDecoder('d=4&e=5');
      final list = decoder1 + [decoder2[0], decoder2[1]];
      expect(list.length, equals(5));
      final first = list[0];
      expect(first, isNotNull);
      expect(first!.name, equals('a'));
      expect(first.value, equals('1'));
      final last = list[4];
      expect(last, isNotNull);
      expect(last!.name, equals('e'));
      expect(last.value, equals('5'));
    });
  });

  tearDownAll(forceGC);
}
