// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
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
    reference.release();
  });

  test('IReference<DateTime?>', () {
    final dateTime = DateTime(2022, 8, 28, 17);
    final reference = dateTime.toReference();
    expect(reference.value, isNotNull);
    expect(reference.value!.millisecondsSinceEpoch,
        dateTime.millisecondsSinceEpoch);
    reference.release();
  });

  test('IReference<double?> (Double)', () {
    final reference = 3.0.toReference(DoubleType.double);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(3.0));
    reference.release();
  });

  test('IReference<double?> (Single)', () {
    final reference = 3.0.toReference(DoubleType.single);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(3.0));
    reference.release();
  });

  test('IReference<Duration?>', () {
    final reference = const Duration(seconds: 30).toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.inSeconds, equals(30));
    reference.release();
  });

  test('IReference<Guid?>', () {
    final reference = Guid.parse(IID_IAsyncInfo).toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.toString(), equals(IID_IAsyncInfo));
    reference.release();
  });

  test('IReference<int?> (Int16)', () {
    final reference = 16.toReference(IntType.int16);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(16));
    reference.release();
  });

  test('IReference<int?> (Int32)', () {
    final reference = 32.toReference(IntType.int32);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(32));
    reference.release();
  });

  test('IReference<int?> (Int64)', () {
    final reference = 64.toReference(IntType.int64);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(64));
    reference.release();
  });

  test('IReference<int?> (Uint8)', () {
    final reference = 8.toReference(IntType.uint8);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(8));
    reference.release();
  });

  test('IReference<int?> (Uint16)', () {
    final reference = 16.toReference(IntType.uint16);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(16));
    reference.release();
  });

  test('IReference<int?> (Uint32)', () {
    final reference = 32.toReference(IntType.uint32);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(32));
    reference.release();
  });

  test('IReference<int?> (Uint64)', () {
    final reference = 64.toReference(IntType.uint64);
    expect(reference.value, isNotNull);
    expect(reference.value, equals(64));
    reference.release();
  });

  test('IReference<Point?>', () {
    final pointPtr = calloc<Point>()
      ..ref.x = 50
      ..ref.y = 100;
    final reference = pointPtr.ref.toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.x, equals(50));
    expect(reference.value?.y, equals(100));
    reference.release();
    free(pointPtr);
  });

  test('IReference<Rect?>', () {
    final rectPtr = calloc<Rect>()
      ..ref.height = 200
      ..ref.width = 100
      ..ref.x = 50
      ..ref.y = 100;
    final reference = rectPtr.ref.toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.height, equals(200));
    expect(reference.value?.width, equals(100));
    expect(reference.value?.x, equals(50));
    expect(reference.value?.y, equals(100));
    reference.release();
    free(rectPtr);
  });

  test('IReference<Size?>', () {
    final sizePtr = calloc<Size>()
      ..ref.height = 200
      ..ref.width = 100;
    final reference = sizePtr.ref.toReference();
    expect(reference.value, isNotNull);
    expect(reference.value?.height, equals(200));
    expect(reference.value?.width, equals(100));
    reference.release();
    free(sizePtr);
  });

  test('IReference<String?>', () {
    final reference = 'Hello World'.toReference();
    expect(reference.value, isNotNull);
    expect(reference.value, equals('Hello World'));
    reference.release();
  });
}
