// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WinRT interfaces have a chain of inheritance, and the function vtable depends
// on this being calculated accurately. Test a variety of existing interfaces to
// make sure the algorithm matches a manual count.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('vTableStart for Windows Runtime types', () {
    const types = <String, int>{
      'Windows.Foundation.Collections.IPropertySet': 6,
      'Windows.Foundation.IAsyncAction': 6,
      'Windows.Foundation.IAsyncInfo': 6,
      'Windows.Globalization.ICalendar': 6,
    };

    for (final type in types.keys) {
      final projectedClass = WinRTInterfaceProjection.from(type);
      final calculatedVTableStart = projectedClass.vtableStart;
      expect(calculatedVTableStart, equals(types[type]), reason: type);
    }
  });
}
