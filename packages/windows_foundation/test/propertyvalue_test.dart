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

  test('DateTime', () {
    final dateTime = DateTime.utc(2023, 7, 9, 15, 59, 22);
    final pv = PropertyValue.createDateTime(dateTime);
    expect(pv.type, equals(PropertyType.dateTime));
    expect(pv.getDateTime(), equals(DateTime.utc(2023, 7, 9, 15, 59, 22)));
    expect(pv.value, equals(DateTime.utc(2023, 7, 9, 15, 59, 22)));
  });

  test('DateTimeArray', () {
    final list = <DateTime>[
      DateTime.utc(2021, 7, 9, 15, 59, 22),
      DateTime.utc(2022, 7, 9, 15, 59, 23),
      DateTime.utc(2023, 7, 9, 15, 59, 24)
    ];
    final pv = PropertyValue.createDateTimeArray(list);
    expect(pv.type, equals(PropertyType.dateTimeArray));

    final newList = pv.getDateTimeArray();
    expect(newList.length, equals(3));
    expect(newList[0], equals(DateTime.utc(2021, 7, 9, 15, 59, 22)));
    expect(newList[1], equals(DateTime.utc(2022, 7, 9, 15, 59, 23)));
    expect(newList[2], equals(DateTime.utc(2023, 7, 9, 15, 59, 24)));
  });

  test('Duration', () {
    final duration = const Duration(days: 1, hours: 2, minutes: 3, seconds: 4);
    final pv = PropertyValue.createTimeSpan(duration);
    expect(pv.type, equals(PropertyType.timeSpan));
    expect(pv.getTimeSpan(),
        equals(const Duration(days: 1, hours: 2, minutes: 3, seconds: 4)));
    expect(pv.value,
        equals(const Duration(days: 1, hours: 2, minutes: 3, seconds: 4)));
  });

  test('DurationArray', () {
    final list = <Duration>[
      const Duration(days: 1, hours: 2, minutes: 3, seconds: 4),
      const Duration(days: 5, hours: 6, minutes: 7, seconds: 8),
      const Duration(days: 9, hours: 10, minutes: 11, seconds: 12)
    ];
    final pv = PropertyValue.createTimeSpanArray(list);
    expect(pv.type, equals(PropertyType.timeSpanArray));

    final newList = pv.getTimeSpanArray();
    expect(newList.length, equals(3));
    expect(newList[0],
        equals(const Duration(days: 1, hours: 2, minutes: 3, seconds: 4)));
    expect(newList[1],
        equals(const Duration(days: 5, hours: 6, minutes: 7, seconds: 8)));
    expect(newList[2],
        equals(const Duration(days: 9, hours: 10, minutes: 11, seconds: 12)));
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

    final newList = pv.getGuidArray();
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

    final newList = pv.getInspectableArray();
    expect(newList.length, equals(5));
    expect(newList[0], equals(5));
    expect(newList[1], isTrue);
    expect(newList[2], isNull);
    expect(getClassName(newList[3] as IInspectable),
        equals('Windows.Foundation.Collections.StringMap'));
    expect(getClassName(newList[4] as IInspectable),
        equals('Windows.Foundation.Collections.PropertySet'));
  });

  test('Point', () {
    const point = Point(10, 20);
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

    final newList = pv.getUInt8Array();
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

    final newList = pv.getUInt16Array();
    expect(newList.length, equals(5));
    expect(newList[0], equals(100));
    expect(newList[1], equals(200));
    expect(newList[2], equals(300));
    expect(newList[3], equals(400));
    expect(newList[4], equals(500));
    expect(pv.value, equals([100, 200, 300, 400, 500]));
  });
}
