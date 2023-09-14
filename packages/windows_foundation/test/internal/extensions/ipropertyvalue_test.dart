// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart' hide IUnknown;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('IPropertyValue value extension getter returns', () {
    test('Point', () {
      final pv = PropertyValue.createPoint(const Point(-1, 1));
      final value = pv.value;
      expect(value, isA<Point>());
      expect(value, equals(const Point(-1, 1)));
    });

    test('String', () {
      final pv = PropertyValue.createString('Hello');
      final value = pv.value;
      expect(value, isA<String>());
      expect(value, equals('Hello'));
    });

    test('List<Object?>', () {
      final propertySet = PropertySet();
      final stringMap = StringMap();
      final pv = PropertyValue.createInspectableArray([propertySet, stringMap]);
      final value = pv.value;
      expect(value, isA<List<Object?>>());
      final list = value as List<Object?>;
      final [element1, element2] = list;
      expect(element1, isA<IInspectable>());
      final firstObject = element1 as IInspectable;
      expect(getClassName(firstObject),
          equals('Windows.Foundation.Collections.PropertySet'));
      expect(element2, isA<IInspectable>());
      final secondObject = element2 as IInspectable;
      expect(getClassName(secondObject),
          equals('Windows.Foundation.Collections.StringMap'));
    });

    test('List<Point>', () {
      final pv = PropertyValue.createPointArray(
          [const Point(1, -1), const Point(-1, 1)]);
      final value = pv.value;
      expect(value, isA<List<Point>>());
      expect(value, orderedEquals([const Point(1, -1), const Point(-1, 1)]));
    });

    test('List<String>', () {
      final pv = PropertyValue.createStringArray(['Hello', 'World']);
      final value = pv.value;
      expect(value, isA<List<String>>());
      expect(value, orderedEquals(['Hello', 'World']));
    });
  });

  tearDownAll(forceGC);
}
