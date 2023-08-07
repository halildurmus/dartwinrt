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

  group('PropertyValue', () {
    test('createChar16', () {
      final pv = PropertyValue.createChar16('A');
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.char16));
      expect(pv.getChar16(), equals('A'));
      expect(pv.value, equals('A'));
    });

    test('createChar16Array', () {
      final pv = PropertyValue.createChar16Array(
          ['D', 'a', 'r', 't', '\x00', ' ', r'$']);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.char16Array));

      final list = pv.getChar16Array();
      expect(list.length, equals(7));
      expect(list[0], equals('D'));
      expect(list[1], equals('a'));
      expect(list[2], equals('r'));
      expect(list[3], equals('t'));
      expect(list[4], equals('\x00'));
      expect(list[5], equals(' '));
      expect(list[6], equals(r'$'));
      expect(pv.value, equals(['D', 'a', 'r', 't', '\x00', ' ', r'$']));
    });

    test('createDateTime', () {
      final dateTime = DateTime.utc(2023, 7, 9, 15, 59, 22);
      final pv = PropertyValue.createDateTime(dateTime);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.dateTime));
      expect(pv.getDateTime(), equals(DateTime.utc(2023, 7, 9, 15, 59, 22)));
      expect(pv.value, equals(DateTime.utc(2023, 7, 9, 15, 59, 22)));
    });

    test('createDateTimeArray', () {
      final list = [
        DateTime.utc(2021, 7, 9, 15, 59, 22),
        DateTime.utc(2022, 7, 9, 15, 59, 23),
        DateTime.utc(2023, 7, 9, 15, 59, 24)
      ];
      final pv = PropertyValue.createDateTimeArray(list);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.dateTimeArray));

      final newList = pv.getDateTimeArray();
      expect(newList.length, equals(3));
      expect(newList[0], equals(DateTime.utc(2021, 7, 9, 15, 59, 22)));
      expect(newList[1], equals(DateTime.utc(2022, 7, 9, 15, 59, 23)));
      expect(newList[2], equals(DateTime.utc(2023, 7, 9, 15, 59, 24)));
    });

    test('createDouble', () {
      final pv = PropertyValue.createDouble(3.14159);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.double_));
      expect(pv.getDouble(), equals(3.14159));
      expect(pv.value, equals(3.14159));
    });

    test('createDoubleArray', () {
      final list = <double>[for (var i = 0; i < 5; i++) 3.14 * i];
      final pv = PropertyValue.createDoubleArray(list);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.doubleArray));

      final newList = pv.getDoubleArray();
      expect(newList.length, equals(5));
      expect(newList[0], equals(0.0));
      expect(newList[1], equals(3.14));
      expect(newList[2], equals(6.28));
      expect(newList[3], equals(9.42));
      expect(newList[4], equals(12.56));
      expect(pv.value, equals([0.0, 3.14, 6.28, 9.42, 12.56]));
    });

    test('createEmpty', () {
      final pv = PropertyValue.createEmpty();
      expect(pv.isNull, isTrue);
    });

    test('createGuid', () {
      final guid = Guid.parse(IID_IAsyncInfo);
      final pv = PropertyValue.createGuid(guid);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.guid));
      expect(pv.getGuid().toString(), equals(IID_IAsyncInfo));
      expect(pv.value?.toString(), equals(IID_IAsyncInfo));
    });

    test('createGuidArray', () {
      final list = [
        Guid.parse(IID_IAsyncAction),
        Guid.parse(IID_IAsyncInfo),
        Guid.parse(IID_IClosable)
      ];
      final pv = PropertyValue.createGuidArray(list);
      expect(pv.isNumericScalar, isFalse);
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

    test('createInspectable', () {
      final stringMap = StringMap();
      final pv = PropertyValue.createInspectable(stringMap.ptr);
      final inspectable = IInspectable(pv);
      expect(getClassName(inspectable),
          equals('Windows.Foundation.Collections.StringMap'));
      expect(refCount(inspectable), equals(2));
      expect(refCount(stringMap), equals(2));
    });

    test('createInspectableArray', () {
      final list = <Object?>[5, true, null, StringMap(), PropertySet()];
      final pv = PropertyValue.createInspectableArray(list);
      expect(pv.isNumericScalar, isFalse);
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

    test('createInt16', () {
      final pv = PropertyValue.createInt16(32767);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.int16));
      expect(pv.getInt16(), equals(32767));
      expect(pv.value, equals(32767));
    });

    test('createInt16Array', () {
      final list = <int>[for (var i = 0; i < 5; i++) (8000 * i) + 10];
      final pv = PropertyValue.createInt16Array(list);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.int16Array));

      final newList = pv.getInt16Array();
      expect(newList.length, equals(5));
      expect(newList[0], equals(10));
      expect(newList[1], equals(8010));
      expect(newList[2], equals(16010));
      expect(newList[3], equals(24010));
      expect(newList[4], equals(32010));
      expect(pv.value, equals([10, 8010, 16010, 24010, 32010]));
    });

    test('createInt32', () {
      final pv = PropertyValue.createInt32(2147483647);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.int32));
      expect(pv.getInt32(), equals(2147483647));
      expect(pv.value, equals(2147483647));
    });

    test('createInt32Array', () {
      final list = <int>[for (var i = 0; i < 5; i++) (80000 * i) + 10];
      final pv = PropertyValue.createInt32Array(list);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.int32Array));

      final newList = pv.getInt32Array();
      expect(newList.length, equals(5));
      expect(newList[0], equals(10));
      expect(newList[1], equals(80010));
      expect(newList[2], equals(160010));
      expect(newList[3], equals(240010));
      expect(newList[4], equals(320010));
      expect(pv.value, equals([10, 80010, 160010, 240010, 320010]));
    });

    test('createInt64', () {
      final pv = PropertyValue.createInt64(1234567890123456789);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.int64));
      expect(pv.getInt64(), equals(1234567890123456789));
      expect(pv.value, equals(1234567890123456789));
    });

    test('createInt64Array', () {
      final list = <int>[for (var i = 0; i < 5; i++) (800000 * i) + 10];
      final pv = PropertyValue.createInt64Array(list);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.int64Array));

      final newList = pv.getInt64Array();
      expect(newList.length, equals(5));
      expect(newList[0], equals(10));
      expect(newList[1], equals(800010));
      expect(newList[2], equals(1600010));
      expect(newList[3], equals(2400010));
      expect(newList[4], equals(3200010));
      expect(pv.value, equals([10, 800010, 1600010, 2400010, 3200010]));
    });

    test('createPoint', () {
      const point = Point(10, 20);
      final pv = PropertyValue.createPoint(point);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.point));
      expect(pv.getPoint(), equals(point));
      expect(pv.value, equals(point));
    });

    test('createSingle', () {
      final pv = PropertyValue.createSingle(3.0);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.single));
      expect(pv.getSingle(), equals(3.0));
      expect(pv.value, equals(3.0));
    });

    test('createSingleArray', () {
      final list = <double>[for (var i = 0; i < 5; i++) 3.0 * i];
      final pv = PropertyValue.createSingleArray(list);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.singleArray));

      final newList = pv.getSingleArray();
      expect(newList.length, equals(5));
      expect(newList[0], equals(0.0));
      expect(newList[1], equals(3.0));
      expect(newList[2], equals(6.0));
      expect(newList[3], equals(9.0));
      expect(newList[4], equals(12.0));
      expect(pv.value, equals([0.0, 3.0, 6.0, 9.0, 12.0]));
    });

    test('createString', () {
      final pv = PropertyValue.createString('Hello World');
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.string));
      expect(pv.getString(), equals('Hello World'));
      expect(pv.value, equals('Hello World'));
    });

    test('createTimeSpan', () {
      final duration =
          const Duration(days: 1, hours: 2, minutes: 3, seconds: 4);
      final pv = PropertyValue.createTimeSpan(duration);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.timeSpan));
      expect(pv.getTimeSpan(),
          equals(const Duration(days: 1, hours: 2, minutes: 3, seconds: 4)));
      expect(pv.value,
          equals(const Duration(days: 1, hours: 2, minutes: 3, seconds: 4)));
    });

    test('createTimeSpanArray', () {
      final list = [
        const Duration(days: 1, hours: 2, minutes: 3, seconds: 4),
        const Duration(days: 5, hours: 6, minutes: 7, seconds: 8),
        const Duration(days: 9, hours: 10, minutes: 11, seconds: 12)
      ];
      final pv = PropertyValue.createTimeSpanArray(list);
      expect(pv.isNumericScalar, isFalse);
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

    test('createUInt8', () {
      final pv = PropertyValue.createUInt8(30);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.uint8));
      expect(pv.getUInt8(), equals(30));
      expect(pv.value, equals(30));
    });

    test('createUInt8Array', () {
      final list = <int>[for (var i = 0; i < 5; i++) (10 * i) + 10];
      final pv = PropertyValue.createUInt8Array(list);
      expect(pv.isNumericScalar, isFalse);
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

    test('createUInt16', () {
      final pv = PropertyValue.createUInt16(65534);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.uint16));
      expect(pv.getUInt16(), equals(65534));
      expect(pv.value, equals(65534));
    });

    test('createUInt16Array', () {
      final list = <int>[for (var i = 0; i < 5; i++) (100 * i) + 100];
      final pv = PropertyValue.createUInt16Array(list);
      expect(pv.isNumericScalar, isFalse);
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

    test('createUInt32', () {
      final pv = PropertyValue.createUInt32(4294967295);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.uint32));
      expect(pv.getUInt32(), equals(4294967295));
      expect(pv.value, equals(4294967295));
    });

    test('createUInt32Array', () {
      final list = <int>[for (var i = 0; i < 5; i++) (1000 * i) + 1000];
      final pv = PropertyValue.createUInt32Array(list);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.uint32Array));

      final newList = pv.getUInt32Array();
      expect(newList.length, equals(5));
      expect(newList[0], equals(1000));
      expect(newList[1], equals(2000));
      expect(newList[2], equals(3000));
      expect(newList[3], equals(4000));
      expect(newList[4], equals(5000));
      expect(pv.value, equals([1000, 2000, 3000, 4000, 5000]));
    });

    test('createUInt64', () {
      final pv = PropertyValue.createUInt64(4294967295);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.uint64));
      expect(pv.getUInt64(), equals(4294967295));
      expect(pv.value, equals(4294967295));
    });

    test('createUInt64Array', () {
      final list = <int>[for (var i = 0; i < 5; i++) (10000 * i) + 10000];
      final pv = PropertyValue.createUInt64Array(list);
      expect(pv.isNumericScalar, isFalse);
      expect(pv.type, equals(PropertyType.uint64Array));

      final newList = pv.getUInt64Array();
      expect(newList.length, equals(5));
      expect(newList[0], equals(10000));
      expect(newList[1], equals(20000));
      expect(newList[2], equals(30000));
      expect(newList[3], equals(40000));
      expect(newList[4], equals(50000));
      expect(pv.value, equals([10000, 20000, 30000, 40000, 50000]));
    });
  });
}
