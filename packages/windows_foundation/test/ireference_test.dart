// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

// Test the IReference<T> types to make sure everything is working correctly.

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('IReference<bool?>', () {
    final reference = true.toReference();
    expect(reference.value, isNotNull);
    expect(reference.value, isTrue);
  });

  test('IReference<DateTime?>', () {
    final dateTime = DateTime(2022, 8, 28, 17);
    final reference = dateTime.toReference();
    expect(reference.value, isNotNull);
    expect(reference.value!.millisecondsSinceEpoch,
        dateTime.millisecondsSinceEpoch);
  });

  test('IReference<double?> (Double)', () {
    final reference = 3.0.toReference(DoubleType.double);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(3.0));
  });

  test('IReference<double?> (Float)', () {
    final reference = 3.0.toReference(DoubleType.float);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(3.0));
  });

  test('IReference<Duration?>', () {
    final reference = const Duration(seconds: 30).toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.inSeconds, equals(30));
  });

  test('IReference<Guid?>', () {
    final reference = Guid.parse(IID_IAsyncInfo).toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.toString(), equals(IID_IAsyncInfo));
  });

  test('IReference<int?> (Int16)', () {
    final reference = 16.toReference(IntType.int16);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(16));
  });

  test('IReference<int?> (Int32)', () {
    final reference = 32.toReference(IntType.int32);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(32));
  });

  test('IReference<int?> (Int64)', () {
    final reference = 64.toReference(IntType.int64);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(64));
  });

  test('IReference<int?> (Uint8)', () {
    final reference = 8.toReference(IntType.uint8);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(8));
  });

  test('IReference<int?> (Uint16)', () {
    final reference = 16.toReference(IntType.uint16);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(16));
  });

  test('IReference<int?> (Uint32)', () {
    final reference = 32.toReference(IntType.uint32);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(32));
  });

  test('IReference<int?> (Uint64)', () {
    final reference = 64.toReference(IntType.uint64);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(64));
  });

  test('IReference<Point?>', () {
    final reference = Point(50, 100).toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.x, equals(50));
    expect(reference.value?.y, equals(100));
  });

  test('IReference<Rect?>', () {
    final reference = Rect(50, 100, 200, 100).toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.height, equals(100));
    expect(reference.value?.width, equals(200));
    expect(reference.value?.x, equals(50));
    expect(reference.value?.y, equals(100));
  });

  test('IReference<Size?>', () {
    final reference = Size(100, 200).toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.height, equals(200));
    expect(reference.value?.width, equals(100));
  });

  test('IReference<String?>', () {
    final reference = 'Hello World'.toReference();
    expect(reference.value, isNotNull);
    expect(reference.value, equals('Hello World'));
  });
}
