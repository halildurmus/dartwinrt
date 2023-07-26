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

  group('IReference', () {
    test('bool?', () {
      final reference = true.toReference();
      expect(reference.value, isNotNull);
      expect(reference.value, isTrue);
    });

    test('DateTime?', () {
      final dateTime = DateTime(2022, 8, 28, 17);
      final reference = dateTime.toReference();
      expect(reference.value, isNotNull);
      expect(reference.value!.millisecondsSinceEpoch,
          dateTime.millisecondsSinceEpoch);
    });

    test('double? (Double)', () {
      final reference = 3.0.toReference(DoubleType.double);
      expect(reference.value, isNotNull);
      expect(reference.value, equals(3.0));
    });

    test('double? (Float)', () {
      final reference = 3.0.toReference(DoubleType.float);
      expect(reference.value, isNotNull);
      expect(reference.value, equals(3.0));
    });

    test('Duration?', () {
      final reference = const Duration(seconds: 30).toReference();
      expect(reference.value, isNotNull);
      expect(reference.value?.inSeconds, equals(30));
    });

    test('Guid?', () {
      final reference = Guid.parse(IID_IAsyncInfo).toReference();
      expect(reference.value, isNotNull);
      expect(reference.value?.toString(), equals(IID_IAsyncInfo));
    });

    test('int? (Int16)', () {
      final reference = 16.toReference(IntType.int16);
      expect(reference.value, isNotNull);
      expect(reference.value, equals(16));
    });

    test('int? (Int32)', () {
      final reference = 32.toReference(IntType.int32);
      expect(reference.value, isNotNull);
      expect(reference.value, equals(32));
    });

    test('int? (Int64)', () {
      final reference = 64.toReference(IntType.int64);
      expect(reference.value, isNotNull);
      expect(reference.value, equals(64));
    });

    test('int? (Uint8)', () {
      final reference = 8.toReference(IntType.uint8);
      expect(reference.value, isNotNull);
      expect(reference.value, equals(8));
    });

    test('int? (Uint16)', () {
      final reference = 16.toReference(IntType.uint16);
      expect(reference.value, isNotNull);
      expect(reference.value, equals(16));
    });

    test('int? (Uint32)', () {
      final reference = 32.toReference(IntType.uint32);
      expect(reference.value, isNotNull);
      expect(reference.value, equals(32));
    });

    test('int? (Uint64)', () {
      final reference = 64.toReference(IntType.uint64);
      expect(reference.value, isNotNull);
      expect(reference.value, equals(64));
    });

    test('Point?', () {
      final reference = const Point(50, 100).toReference();
      expect(reference.value, isNotNull);
      expect(reference.value?.x, equals(50));
      expect(reference.value?.y, equals(100));
    });

    test('Rect?', () {
      final reference = const Rect(50, 100, 200, 100).toReference();
      expect(reference.value, isNotNull);
      expect(reference.value?.height, equals(100));
      expect(reference.value?.width, equals(200));
      expect(reference.value?.x, equals(50));
      expect(reference.value?.y, equals(100));
    });

    test('Size?', () {
      final reference = const Size(100, 200).toReference();
      expect(reference.value, isNotNull);
      expect(reference.value?.height, equals(200));
      expect(reference.value?.width, equals(100));
    });

    test('String?', () {
      final reference = 'Hello World'.toReference();
      expect(reference.value, isNotNull);
      expect(reference.value, equals('Hello World'));
    });
  });
}
