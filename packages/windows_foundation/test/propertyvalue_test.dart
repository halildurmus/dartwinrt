// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

// Test the PropertyValue class to make sure overrides, properties and methods
// are working correctly.

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('UInt8', () {
    final pv = PropertyValue.createUInt8(30);
    expect(pv.type, equals(PropertyType.uint8));
    expect(pv.getUInt8(), equals(30));
    expect(pv.value, equals(30));
  });

  test('UInt8Array', () {
    final list = <int>[for (var i = 0; i < 5; i++) (10 * i) + 10];
    final pv = PropertyValue.createUInt8Array(list);
    expect(pv.type, equals(PropertyType.uint8Array));

    final newList = <int>[];
    pv.getUInt8Array(newList);
    expect(newList.length, equals(5));
    expect(newList[0], equals(10));
    expect(newList[1], equals(20));
    expect(newList[2], equals(30));
    expect(newList[3], equals(40));
    expect(newList[4], equals(50));
    expect(pv.value, equals([10, 20, 30, 40, 50]));
  });

  test('UInt16', () {
    final pv = PropertyValue.createUInt16(65534);
    expect(pv.type, equals(PropertyType.uint16));
    expect(pv.getUInt16(), equals(65534));
    expect(pv.value, equals(65534));
  });

  test('UInt16Array', () {
    final list = <int>[for (var i = 0; i < 5; i++) (100 * i) + 100];
    final pv = PropertyValue.createUInt16Array(list);
    expect(pv.type, equals(PropertyType.uint16Array));

    final newList = <int>[];
    pv.getUInt16Array(newList);
    expect(newList.length, equals(5));
    expect(newList[0], equals(100));
    expect(newList[1], equals(200));
    expect(newList[2], equals(300));
    expect(newList[3], equals(400));
    expect(newList[4], equals(500));
    expect(pv.value, equals([100, 200, 300, 400, 500]));
  });

  test('Guid', () {
    final guid = Guid.parse(IID_IAsyncInfo);
    final pv = PropertyValue.createGuid(guid);
    expect(pv.type, equals(PropertyType.guid));
    expect(pv.getGuid().toString(), equals(IID_IAsyncInfo));
    expect(pv.value?.toString(), equals(IID_IAsyncInfo));
  });

  test('GuidArray', () {
    final list = <Guid>[
      Guid.parse(IID_IAsyncAction),
      Guid.parse(IID_IAsyncInfo),
      Guid.parse(IID_IClosable)
    ];
    final pv = PropertyValue.createGuidArray(list);
    expect(pv.type, equals(PropertyType.guidArray));

    final newList = <Guid>[];
    pv.getGuidArray(newList);
    expect(newList.length, equals(3));
    expect(newList[0].toString(), equals(IID_IAsyncAction));
    expect(newList[1].toString(), equals(IID_IAsyncInfo));
    expect(newList[2].toString(), equals(IID_IClosable));
    expect(
        pv.value,
        equals([
          Guid.parse(IID_IAsyncAction),
          Guid.parse(IID_IAsyncInfo),
          Guid.parse(IID_IClosable)
        ]));
  });

  test('Point', () {
    final point = Point(10, 20);
    final pv = PropertyValue.createPoint(point);
    expect(pv.type, equals(PropertyType.point));
    expect(pv.getPoint(), equals(point));
    expect(pv.value, equals(point));
  });

  test('String', () {
    final pv = PropertyValue.createString('Hello World');
    expect(pv.type, equals(PropertyType.string));
    expect(pv.getString(), equals('Hello World'));
    expect(pv.value, equals('Hello World'));
  });

  test('Inspectable', () {
    final stringMap = StringMap();
    final pv = PropertyValue.createInspectable(stringMap.ptr);
    expect(getClassName(IInspectable(pv)),
        equals('Windows.Foundation.Collections.StringMap'));
  });

  test('InspectableArray', () {
    final list = <Object?>[5, true, null, StringMap(), PropertySet()];
    final pv = PropertyValue.createInspectableArray(list);
    expect(pv.type, equals(PropertyType.inspectableArray));

    final newList = <Object?>[];
    pv.getInspectableArray(newList);
    expect(newList.length, equals(5));
    expect(newList[0], equals(5));
    expect(newList[1], isTrue);
    expect(newList[2], isNull);
    expect(getClassName(newList[3] as IInspectable),
        equals('Windows.Foundation.Collections.StringMap'));
    expect(getClassName(newList[4] as IInspectable),
        equals('Windows.Foundation.Collections.PropertySet'));
  });
}
