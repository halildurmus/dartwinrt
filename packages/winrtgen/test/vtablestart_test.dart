// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WinRT interfaces have a chain of inheritance, and the function vtable depends
// on this being calculated accurately. Test a variety of existing interfaces to
// make sure the algorithm matches a manual count.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('vTableStart for Windows Runtime types', () {
    const testedTypes = <String, int>{
      'Windows.Globalization.ICalendar': 6,
      'Windows.Foundation.IAsyncInfo': 6,
      'Windows.Foundation.IAsyncAction': 6,
      'Windows.Foundation.Collections.IPropertySet': 6
    };

    for (final type in testedTypes.keys) {
      final scope = MetadataStore.getScopeForType(type);
      final typeDef = scope.findTypeDef(type);
      expect(typeDef, isNotNull);
      if (typeDef != null) {
        final projectedClass = WinRTInterfaceProjection(typeDef);
        final calculatedVTableStart = projectedClass.vtableStart;

        expect(calculatedVTableStart, equals(testedTypes[type]),
            reason: typeDef.name);
      }
    }
  });
}
