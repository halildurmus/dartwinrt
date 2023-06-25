// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  group('NativePoint', () {
    test('toDart', () {
      final nativePoint = calloc<NativePoint>();
      nativePoint.ref
        ..x = 1
        ..y = 2;

      final point = nativePoint.toDart();
      expect(point, equals(Point(1, 2)));

      free(nativePoint);
    });
  });

  group('Point', () {
    test('toNative', () {
      final point = Point(1, -2);
      final nativePointPtr = point.toNative();
      final nativePoint = nativePointPtr.ref;
      expect(nativePoint.x, equals(1));
      expect(nativePoint.y, equals(-2));

      free(nativePointPtr);
    });

    test('toList', () {
      final nativePointPtr = calloc<NativePoint>(3);
      nativePointPtr[0]
        ..x = 1
        ..y = 2;
      nativePointPtr[1]
        ..x = 3
        ..y = 4;
      nativePointPtr[2]
        ..x = 5
        ..y = 6;

      final list = nativePointPtr.toList(length: 3);
      expect(list.length, equals(3));
      expect(list[0], equals(Point(1, 2)));
      expect(list[1], equals(Point(3, 4)));
      expect(list[2], equals(Point(5, 6)));

      free(nativePointPtr);
    });
  });
}
