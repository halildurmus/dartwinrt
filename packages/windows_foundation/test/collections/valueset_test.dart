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

  group('ValueSet', () {
    IMap<String, Object?> getMap() {
      final guid = Guid.parse(IID_ISpVoice);
      final valueSet = ValueSet()
        ..insert('key1', null)
        ..insert('key2', 'strVal');
      return ValueSet()
        ..insert('key1', null)
        ..insert('key2', valueSet)
        ..insert('key3', true)
        ..insert('key4', DateTime(2022, 7, 11, 17, 30))
        ..insert('key5', 0.5)
        ..insert('key6', const Duration(seconds: 30))
        ..insert('key7', guid)
        ..insert('key8', 259)
        ..insert('key9', const Point(3, -3))
        ..insert('key10', const Rect(2, -2, 200, 100))
        ..insert('key11', const Size(300, 1500))
        ..insert('key12', 'strVal')
        ..insert('key13', [true, false])
        ..insert('key14',
            [DateTime(2020, 7, 11, 17, 30), DateTime(2022, 7, 11, 17, 30)])
        ..insert('key15', [2.5, 0.99])
        ..insert('key16', const [Duration(hours: 1), Duration(minutes: 60)])
        ..insert('key17', [guid])
        ..insert('key18', [2022, -2022])
        ..insert('key19', [const Point(3, -3)])
        ..insert('key20', [const Rect(2, -2, 200, 100)])
        ..insert('key21', [const Size(300, 1500)])
        ..insert('key22', ['str1', 'str2']);
    }

    test('lookup throws a WindowsException if the map is empty', () {
      final map = getMap()..clear();
      expect(() => map.lookup('key1'), throwsA(isA<WindowsException>()));
    });

    test('lookup throws a WindowsException if the item does not exists', () {
      final map = getMap();
      expect(() => map.lookup('key0'), throwsA(isA<WindowsException>()));
    });

    test('lookup returns items', () {
      final map = getMap();
      expect(map.lookup('key1'), isNull);

      final valueSetVal = map.lookup('key2');
      expect(valueSetVal, isA<IInspectable>());
      final valueSet = ValueSet.fromPtr(
          (valueSetVal as IInspectable).toInterface(IID_IMap_String_Object));
      expect(getClassName(valueSet),
          equals('Windows.Foundation.Collections.ValueSet'));
      expect(valueSet.size, equals(2));
      expect(valueSet.lookup('key1'), isNull);
      expect(valueSet.lookup('key2'), equals('strVal'));

      expect(map.lookup('key3'), isTrue);

      final dateTimeVal = map.lookup('key4');
      expect(dateTimeVal, isA<DateTime>());
      final dateTime = dateTimeVal as DateTime;
      expect(dateTime.millisecondsSinceEpoch,
          equals(DateTime(2022, 7, 11, 17, 30).millisecondsSinceEpoch));

      expect(map.lookup('key5'), equals(0.5));
      expect(map.lookup('key6'), equals(const Duration(seconds: 30)));

      final guidVal = map.lookup('key7');
      expect(guidVal, isA<Guid>());
      final guid = guidVal as Guid;
      expect(guid.toString(), equals(IID_ISpVoice));

      expect(map.lookup('key8'), equals(259));

      final pointVal = map.lookup('key9');
      expect(pointVal, isA<Point>());
      final point = pointVal as Point;
      expect(point.x, equals(3));
      expect(point.y, equals(-3));

      final rectVal = map.lookup('key10');
      expect(rectVal, isA<Rect>());
      final rect = rectVal as Rect;
      expect(rect.height, equals(100));
      expect(rect.width, equals(200));
      expect(rect.x, equals(2));
      expect(rect.y, equals(-2));

      final sizeVal = map.lookup('key11');
      expect(sizeVal, isA<Size>());
      final size = sizeVal as Size;
      expect(size.height, equals(1500));
      expect(size.width, equals(300));

      expect(map.lookup('key12'), equals('strVal'));

      expect(map.lookup('key13'), equals([true, false]));

      final dateTimeListVal = map.lookup('key14');
      expect(dateTimeListVal, isA<List<DateTime>>());
      final dateTimeList = dateTimeListVal as List<DateTime>;
      final [dateTime1, dateTime2] = dateTimeList;
      expect(dateTime1.millisecondsSinceEpoch,
          equals(DateTime(2020, 7, 11, 17, 30).millisecondsSinceEpoch));
      expect(dateTime2.millisecondsSinceEpoch,
          equals(DateTime(2022, 7, 11, 17, 30).millisecondsSinceEpoch));

      expect(map.lookup('key15'), equals([2.5, 0.99]));

      expect(map.lookup('key16'),
          equals(const [Duration(hours: 1), Duration(minutes: 60)]));

      final guidListVal = map.lookup('key17');
      expect(guidListVal, isA<List<Guid>>());
      final guidList = guidListVal as List<Guid>;
      expect(guidList.first.toString(), equals(IID_ISpVoice));

      expect(map.lookup('key18'), equals([2022, -2022]));

      final pointListVal = map.lookup('key19');
      expect(pointListVal, isA<List<Point>>());
      final pointList = pointListVal as List<Point>;
      expect(pointList.first.x, equals(3));
      expect(pointList.first.y, equals(-3));

      final rectListVal = map.lookup('key20');
      expect(rectListVal, isA<List<Rect>>());
      final rectList = rectListVal as List<Rect>;
      expect(rectList.first.height, equals(100));
      expect(rectList.first.width, equals(200));
      expect(rectList.first.x, equals(2));
      expect(rectList.first.y, equals(-2));

      final sizeListVal = map.lookup('key21');
      expect(sizeListVal, isA<List<Size>>());
      final sizeList = sizeListVal as List<Size>;
      expect(sizeList.first.height, equals(1500));
      expect(sizeList.first.width, equals(300));

      expect(map.lookup('key22'), equals(['str1', 'str2']));
    });

    test('hasKey finds items', () {
      final map = getMap();
      expect(map.hasKey('key1'), isTrue);
      expect(map.hasKey('key11'), isTrue);
      expect(map.hasKey('key22'), isTrue);
    });

    test('hasKey returns false if the item does not exists', () {
      final map = getMap();
      expect(map.hasKey('key0'), isFalse);
    });

    test('getView', () {
      final map = getMap();
      final unmodifiableMap = map.getView();
      expect(unmodifiableMap.length, equals(22));
      expect(() => unmodifiableMap..clear(), throwsUnsupportedError);
    });

    test('insert replaces an existing item', () {
      final map = getMap();
      expect(map.size, equals(22));
      expect(map.insert('key12', 'strValNew'), isTrue);
      expect(map.size, equals(22));
      expect(map.lookup('key12'), equals('strValNew'));
    });

    test('insert inserts a new item', () {
      final map = getMap();
      expect(map.size, equals(22));
      expect(map.insert('key23', null), isFalse);
      expect(map.size, equals(23));
      expect(map.lookup('key23'), isNull);
    });

    test('remove throws a WindowsException if the map is empty', () {
      final map = getMap()..clear();
      expect(() => map.remove('key1'), throwsA(isA<WindowsException>()));
    });

    test('remove throws a WindowsException if the item does not exists', () {
      final map = getMap();
      expect(() => map.remove('key0'), throwsA(isA<WindowsException>()));
    });

    test('remove', () {
      final map = getMap();
      expect(map.size, equals(22));

      map.remove('key1');
      expect(map.size, equals(21));
      expect(() => map.lookup('key1'), throwsA(isA<WindowsException>()));

      map.remove('key6');
      expect(map.size, equals(20));
      expect(() => map.lookup('key6'), throwsA(isA<WindowsException>()));
    });

    test('clear', () {
      final map = getMap();
      expect(map.size, equals(22));
      map.clear();
      expect(map.size, equals(0));
    });

    test('toMap', () {
      final map = getMap();
      final dartMap = map.toMap();
      expect(dartMap.length, equals(22));
      expect(dartMap['key8'], equals(259));
      expect(dartMap['key12'], equals('strVal'));
      expect(dartMap['key15'], equals([2.5, 0.99]));
      expect(() => dartMap..clear(), throwsUnsupportedError);
    });

    test('first', () {
      final map = ValueSet()
        ..insert('key1', 'icalendar')
        ..insert('key2', 259);

      final iterator = map.first();
      expect(iterator.hasCurrent, isTrue);
      expect(iterator.current.key, equals('key2'));
      expect(iterator.current.value, equals(259));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current.key, equals('key1'));
      expect(iterator.current.value, equals('icalendar'));
      expect(iterator.moveNext(), isFalse);
    });

    test('operator []', () {
      final map = getMap();
      expect(map['key1'], isNull);
      expect(map['key3'], isTrue);
      expect(map['key5'], equals(0.5));
    });

    test('operator []=', () {
      final map = getMap();

      // Replace an existing item.
      expect(map.size, equals(22));
      map['key5'] = null;
      expect(map.size, equals(22));
      expect(map.lookup('key5'), isNull);

      // Insert a new item.
      map['key23'] = 23;
      expect(map.size, equals(23));
      expect(map.lookup('key23'), equals(23));
    });
  });

  tearDownAll(forceGC);
}
