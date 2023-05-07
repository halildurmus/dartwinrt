// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart' hide IUnknown;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/src/exports.g.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('intoBox', () {
    test('Pointer<COMObject>', () {
      final propertyValuePtr = PropertyValue.createString('Dart').ptr;
      final boxed = propertyValuePtr.intoBox();
      expect(getClassName(boxed),
          equals('Windows.Foundation.IReference`1<String>'));
    });

    test('Guid', () {
      final boxed = Guid.parse(IID_IAsyncAction).intoBox();
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.guid));
      expect(pv.getGuid().toString(), equals(IID_IAsyncAction));
    });

    test('IInspectable', () {
      final stringMap = StringMap();
      final boxed = stringMap.intoBox();
      expect(boxed, isA<StringMap>());
      final newStringMap = boxed as StringMap;
      expect(newStringMap.size, equals(0));
    });

    test('String', () {
      final boxed = 'dart'.intoBox();
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.string));
      expect(pv.getString(), equals('dart'));
    });

    test('List<double> (Double)', () {
      final boxed = [1.5, -2.5].intoBox(doubleType: DoubleType.double);
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.doubleArray));
      final list = <double>[];
      pv.getDoubleArray(list);
      expect(list, orderedEquals([1.5, -2.5]));
    });

    test('List<double> (Float)', () {
      final boxed = [1.5, -2.5].intoBox(doubleType: DoubleType.float);
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.singleArray));
      final list = <double>[];
      pv.getDoubleArray(list);
      expect(list, orderedEquals([1.5, -2.5]));
    });
  });
}
