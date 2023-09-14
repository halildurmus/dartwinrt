// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  const testRuns = 100;

  group('HString', () {
    test('allocation', () {
      const testString = 'Hello world!';
      for (var i = 0; i < testRuns; i++) {
        final hString = HString.fromString(testString);
        expect(hString.toString(), equals(testString));
      }
    });

    test('allocation of long strings', () {
      final longString = 'A very long string with padding.' * 65536;
      // Ten allocations is probably enough for an expensive test like this.
      for (var i = 0; i < 10; i++) {
        final hString = HString.fromString(longString);
        expect(hString.toString(), equals(longString));
      }
    });

    test('clone', () {
      const testString1 = 'This message is not unique.';
      const testString2 = '';
      for (var i = 0; i < testRuns; i++) {
        for (final str in [testString1, testString2]) {
          final original = HString.fromString(str);
          final clone = original.clone();
          expect(original.toString(), equals(clone.toString()));
          expect(original.handle, equals(clone.handle));
        }
      }
    });

    test('concatenation', () {
      for (var i = 0; i < testRuns; i++) {
        final first = HString.fromString('Windows');
        final second = HString.fromString(' and Dart');
        final matchInHeaven = first + second;
        expect(matchInHeaven.toString(), equals('Windows and Dart'));
      }
    });

    test('detach', () {
      const testString = 'Hello world!';
      for (var i = 0; i < testRuns; i++) {
        final hString = HString.fromString(testString);
        expect(hString.toString(), equals(testString));
        hString.detach();
        WindowsDeleteString(hString.handle);
      }
    });

    test('empty', () {
      for (var i = 0; i < testRuns; i++) {
        final hString = const HString.empty();
        expect(hString.isEmpty, isTrue);
        expect(hString.toString(), isEmpty);
      }
    });

    test('free', () {
      const testString = 'Hello world!';
      for (var i = 0; i < testRuns; i++) {
        final hString = HString.fromString(testString);
        expect(hString.toString(), equals(testString));
        hString
          ..detach()
          ..free();
      }
    });

    test('isEmpty', () {
      const testString = 'dartwinrt';
      for (var i = 0; i < testRuns; i++) {
        final hString1 = HString.fromString(testString);
        expect(hString1.isEmpty, isFalse);
        final hString2 = const HString.empty();
        expect(hString2.isEmpty, isTrue);
        final hString3 = HString.fromString('');
        expect(hString3.isEmpty, isTrue);
      }
    });

    test('length', () {
      const testString = 'Lorem ipsum dolor sit amet, consectetur adipiscing '
          'elit, sed do eiusmod tempor incididunt ut labore et dolore magna '
          'aliqua.';
      for (var i = 0; i < testRuns; i++) {
        final hString = HString.fromString(testString);
        expect(testString.length, equals(123));
        expect(hString.length, equals(123));
      }
    });
  });

  tearDownAll(forceGC);
}
