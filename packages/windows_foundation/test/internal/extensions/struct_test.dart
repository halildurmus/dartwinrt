// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  const point1 = Point(1, 2);
  const point2 = Point(3, 4);
  const rect1 = Rect(1, 2, 3, 4);
  const rect2 = Rect(5, 6, 7, 8);
  const size1 = Size(1, 2);
  const size2 = Size(3, 4);

  group('Point', () {
    test('to IPropertyValue', () {
      final pv = point1.toPropertyValue();
      expect(pv.type, equals(PropertyType.point));
      expect(pv.getPoint(), equals(point1));
    });

    test('to IReference', () {
      final ireference = point1.toReference();
      expect(ireference.value, equals(point1));
    });
  });

  test('List<Point> to IPropertyValue', () {
    final pv = [point1, point2].toPropertyValue();
    expect(pv.type, equals(PropertyType.pointArray));
    final list = pv.getPointArray();
    expect(list.length, equals(2));
    expect(list, orderedEquals([point1, point2]));
  });

  group('Rect', () {
    test('to IPropertyValue', () {
      final pv = rect1.toPropertyValue();
      expect(pv.type, equals(PropertyType.rect));
      expect(pv.getRect(), equals(rect1));
    });

    test('to IReference', () {
      final ireference = rect1.toReference();
      expect(ireference.value, equals(rect1));
    });
  });

  test('List<Rect> to IPropertyValue', () {
    final pv = [rect1, rect2].toPropertyValue();
    expect(pv.type, equals(PropertyType.rectArray));
    final list = pv.getRectArray();
    expect(list.length, equals(2));
    expect(list, orderedEquals([rect1, rect2]));
  });

  group('Size', () {
    test('to IPropertyValue', () {
      final pv = size1.toPropertyValue();
      expect(pv.type, equals(PropertyType.size));
      expect(pv.getSize(), equals(size1));
    });

    test('to IReference', () {
      final ireference = size1.toReference();
      expect(ireference.value, equals(size1));
    });
  });

  test('List<Size> to IPropertyValue', () {
    final pv = [size1, size2].toPropertyValue();
    expect(pv.type, equals(PropertyType.sizeArray));
    final list = pv.getSizeArray();
    expect(list.length, equals(2));
    expect(list, orderedEquals([size1, size2]));
  });
}
