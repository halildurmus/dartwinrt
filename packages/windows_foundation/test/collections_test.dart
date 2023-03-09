// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

// Exhaustively test the WinRT collection interfaces to make sure constructors,
// properties and methods are working correctly.

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('IMap<String, Object?> (PropertySet)', () {
    late IMap<String, Object?> map;

    setUp(() {
      final guid = Guid.parse(IID_ISpVoice);
      map = IMap.empty()
        ..insert('key1', null)
        ..insert('key2', StringMap())
        ..insert('key3', true)
        ..insert('key4', DateTime(2022, 7, 11, 17, 30))
        ..insert('key5', 0.5)
        ..insert('key6', const Duration(seconds: 30))
        ..insert('key7', guid)
        ..insert('key8', 259)
        ..insert('key9', Point(3, -3))
        ..insert('key10', Rect(2, -2, 200, 100))
        ..insert('key11', Size(300, 1500))
        ..insert('key12', 'strVal')
        ..insert('key13', [true, false])
        ..insert('key14',
            [DateTime(2020, 7, 11, 17, 30), DateTime(2022, 7, 11, 17, 30)])
        ..insert('key15', [2.5, 0.99])
        ..insert('key16', const [Duration(hours: 1), Duration(minutes: 60)])
        ..insert('key17', [guid])
        ..insert('key18', [StringMap()])
        ..insert('key19', [2022, -2022])
        ..insert('key20', [Point(3, -3)])
        ..insert('key21', [Rect(2, -2, 200, 100)])
        ..insert('key22', [Size(300, 1500)])
        ..insert('key23', ['str1', 'str2']);
    });

    test('fromMap', () {
      map = IMap.fromMap({'key1': StringMap(), 'key2': 259, 'key3': 'strVal'});

      final stringMapVal = map.lookup('key1');
      expect(stringMapVal, isA<IInspectable>());
      expect(getClassName(stringMapVal as IInspectable),
          equals('Windows.Foundation.Collections.StringMap'));
      expect(map.lookup('key2'), equals(259));
      expect(map.lookup('key3'), equals('strVal'));
    });

    test('lookup fails if the map is empty', () {
      map.clear();
      expect(() => map.lookup('key1'), throwsException);
    });

    test('lookup throws exception if the item does not exists', () {
      expect(() => map.lookup('key0'), throwsException);
    });

    test('lookup returns items', () {
      expect(map.lookup('key1'), isNull);

      final stringMapVal = map.lookup('key2');
      expect(stringMapVal, isA<IInspectable>());
      expect(getClassName(stringMapVal as IInspectable),
          equals('Windows.Foundation.Collections.StringMap'));

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
      expect(dateTimeList.first.millisecondsSinceEpoch,
          equals(DateTime(2020, 7, 11, 17, 30).millisecondsSinceEpoch));
      expect(dateTimeList.last.millisecondsSinceEpoch,
          equals(DateTime(2022, 7, 11, 17, 30).millisecondsSinceEpoch));

      expect(map.lookup('key15'), equals([2.5, 0.99]));

      expect(map.lookup('key16'),
          equals(const [Duration(hours: 1), Duration(minutes: 60)]));

      final guidListVal = map.lookup('key17');
      expect(guidListVal, isA<List<Guid>>());
      final guidList = guidListVal as List<Guid>;
      expect(guidList.first.toString(), equals(IID_ISpVoice));

      final stringMapListVal = map.lookup('key18');
      expect(stringMapListVal, isA<List<Object?>>());
      final stringMapList = stringMapListVal as List<Object?>;
      expect(getClassName(stringMapList.first as IInspectable),
          equals('Windows.Foundation.Collections.StringMap'));

      expect(map.lookup('key19'), equals([2022, -2022]));

      final pointListVal = map.lookup('key20');
      expect(pointListVal, isA<List<Point>>());
      final pointList = pointListVal as List<Point>;
      expect(pointList.first.x, equals(3));
      expect(pointList.first.y, equals(-3));

      final rectListVal = map.lookup('key21');
      expect(rectListVal, isA<List<Rect>>());
      final rectList = rectListVal as List<Rect>;
      expect(rectList.first.height, equals(100));
      expect(rectList.first.width, equals(200));
      expect(rectList.first.x, equals(2));
      expect(rectList.first.y, equals(-2));

      final sizeListVal = map.lookup('key22');
      expect(sizeListVal, isA<List<Size>>());
      final sizeList = sizeListVal as List<Size>;
      expect(sizeList.first.height, equals(1500));
      expect(sizeList.first.width, equals(300));

      expect(map.lookup('key23'), equals(['str1', 'str2']));
    });

    test('hasKey finds items', () {
      expect(map.hasKey('key1'), isTrue);
      expect(map.hasKey('key11'), isTrue);
      expect(map.hasKey('key23'), isTrue);
    });

    test('hasKey returns false if the item does not exists', () {
      expect(map.hasKey('key0'), isFalse);
    });

    test('getView', () {
      final unmodifiableMap = map.getView();
      expect(unmodifiableMap.length, equals(23));
      expect(() => unmodifiableMap..clear(), throwsUnsupportedError);
    });

    test('insert replaces an existing item', () {
      expect(map.size, equals(23));
      expect(map.insert('key12', 'strValNew'), isTrue);
      expect(map.size, equals(23));
      expect(map.lookup('key12'), equals('strValNew'));
    });

    test('insert inserts a new item', () {
      expect(map.size, equals(23));
      expect(map.insert('key24', null), isFalse);
      expect(map.size, equals(24));
      expect(map.lookup('key24'), isNull);
    });

    test('remove throws exception if the map is empty', () {
      map.clear();
      expect(() => map.remove('key1'), throwsException);
    });

    test('remove throws exception if the item does not exists', () {
      expect(() => map.remove('key0'), throwsException);
    });

    test('remove', () {
      expect(map.size, equals(23));

      map.remove('key1');
      expect(map.size, equals(22));
      expect(() => map.lookup('key1'), throwsException);

      map.remove('key6');
      expect(map.size, equals(21));
      expect(() => map.lookup('key6'), throwsException);
    });

    test('clear', () {
      expect(map.size, equals(23));
      map.clear();
      expect(map.size, equals(0));
    });

    test('toMap', () {
      final dartMap = map.toMap();
      expect(dartMap.length, equals(23));
      expect(dartMap['key8'], equals(259));
      expect(dartMap['key12'], equals('strVal'));
      expect(dartMap['key15'], equals([2.5, 0.99]));
      expect(() => dartMap..clear(), throwsUnsupportedError);
    });

    test('first', () {
      map = IMap.fromMap({'key1': 'icalendar', 'key2': 259});

      final iterator = map.first();
      expect(iterator.hasCurrent, isTrue);
      expect(iterator.current.key, equals('key2'));
      expect(iterator.current.value, equals(259));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current.key, equals('key1'));
      expect(iterator.current.value, equals('icalendar'));
      expect(iterator.moveNext(), isFalse);
    });
  });

  group('IMap<String, Object?> (ValueSet)', () {
    late IMap<String, Object?> map;

    setUp(() {
      final guid = Guid.parse(IID_ISpVoice);
      final valueSet = ValueSet()
        ..insert('key1', null)
        ..insert('key2', 'strVal');
      map = ValueSet()
        ..insert('key1', null)
        ..insert('key2', valueSet)
        ..insert('key3', true)
        ..insert('key4', DateTime(2022, 7, 11, 17, 30))
        ..insert('key5', 0.5)
        ..insert('key6', const Duration(seconds: 30))
        ..insert('key7', guid)
        ..insert('key8', 259)
        ..insert('key9', Point(3, -3))
        ..insert('key10', Rect(2, -2, 200, 100))
        ..insert('key11', Size(300, 1500))
        ..insert('key12', 'strVal')
        ..insert('key13', [true, false])
        ..insert('key14',
            [DateTime(2020, 7, 11, 17, 30), DateTime(2022, 7, 11, 17, 30)])
        ..insert('key15', [2.5, 0.99])
        ..insert('key16', const [Duration(hours: 1), Duration(minutes: 60)])
        ..insert('key17', [guid])
        ..insert('key18', [2022, -2022])
        ..insert('key19', [Point(3, -3)])
        ..insert('key20', [Rect(2, -2, 200, 100)])
        ..insert('key21', [Size(300, 1500)])
        ..insert('key22', ['str1', 'str2']);
    });

    test('lookup fails if the map is empty', () {
      map.clear();
      expect(() => map.lookup('key1'), throwsException);
    });

    test('lookup throws exception if the item does not exists', () {
      expect(() => map.lookup('key0'), throwsException);
    });

    test('lookup returns items', () {
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
      expect(dateTimeList.first.millisecondsSinceEpoch,
          equals(DateTime(2020, 7, 11, 17, 30).millisecondsSinceEpoch));
      expect(dateTimeList.last.millisecondsSinceEpoch,
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
      expect(map.hasKey('key1'), isTrue);
      expect(map.hasKey('key11'), isTrue);
      expect(map.hasKey('key22'), isTrue);
    });

    test('hasKey returns false if the item does not exists', () {
      expect(map.hasKey('key0'), isFalse);
    });

    test('getView', () {
      final unmodifiableMap = map.getView();
      expect(unmodifiableMap.length, equals(22));
      expect(() => unmodifiableMap..clear(), throwsUnsupportedError);
    });

    test('insert replaces an existing item', () {
      expect(map.size, equals(22));
      expect(map.insert('key12', 'strValNew'), isTrue);
      expect(map.size, equals(22));
      expect(map.lookup('key12'), equals('strValNew'));
    });

    test('insert inserts a new item', () {
      expect(map.size, equals(22));
      expect(map.insert('key23', null), isFalse);
      expect(map.size, equals(23));
      expect(map.lookup('key23'), isNull);
    });

    test('remove throws exception if the map is empty', () {
      map.clear();
      expect(() => map.remove('key1'), throwsException);
    });

    test('remove throws exception if the item does not exists', () {
      expect(() => map.remove('key0'), throwsException);
    });

    test('remove', () {
      expect(map.size, equals(22));

      map.remove('key1');
      expect(map.size, equals(21));
      expect(() => map.lookup('key1'), throwsException);

      map.remove('key6');
      expect(map.size, equals(20));
      expect(() => map.lookup('key6'), throwsException);
    });

    test('clear', () {
      expect(map.size, equals(22));
      map.clear();
      expect(map.size, equals(0));
    });

    test('toMap', () {
      final dartMap = map.toMap();
      expect(dartMap.length, equals(22));
      expect(dartMap['key8'], equals(259));
      expect(dartMap['key12'], equals('strVal'));
      expect(dartMap['key15'], equals([2.5, 0.99]));
      expect(() => dartMap..clear(), throwsUnsupportedError);
    });

    test('first', () {
      map = ValueSet()
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
  });

  group('IMap<String, String> (StringMap)', () {
    late IMap<String, String> map;

    setUp(() {
      map = IMap.empty()
        ..insert('key1', 'value1')
        ..insert('key2', '')
        ..insert('key3', 'value3');
    });

    test('fromMap', () {
      map = IMap.fromMap({'key1': 'value1', 'key2': '', 'key3': 'value3'});
      expect(map.lookup('key1'), equals('value1'));
      expect(map.lookup('key2'), isEmpty);
      expect(map.lookup('key3'), equals('value3'));
    });

    test('lookup fails if the map is empty', () {
      map.clear();
      expect(() => map.lookup('key1'), throwsException);
    });

    test('lookup throws exception if the item does not exists', () {
      expect(() => map.lookup('key4'), throwsException);
    });

    test('lookup returns items', () {
      expect(map.lookup('key1'), equals('value1'));
      expect(map.lookup('key2'), isEmpty);
      expect(map.lookup('key3'), equals('value3'));
    });

    test('hasKey finds items', () {
      expect(map.hasKey('key1'), isTrue);
      expect(map.hasKey('key2'), isTrue);
      expect(map.hasKey('key3'), isTrue);
    });

    test('hasKey returns false if the item does not exists', () {
      expect(map.hasKey('key4'), isFalse);
    });

    test('getView', () {
      final unmodifiableMap = map.getView();
      expect(unmodifiableMap.length, equals(3));
      expect(() => unmodifiableMap..clear(), throwsUnsupportedError);
    });

    test('insert replaces an existing item', () {
      expect(map.size, equals(3));
      expect(map.insert('key1', 'value1New'), isTrue);
      expect(map.size, equals(3));
      expect(map.lookup('key1'), equals('value1New'));
    });

    test('insert inserts a new item', () {
      expect(map.size, equals(3));
      expect(map.insert('key4', 'value4'), isFalse);
      expect(map.size, equals(4));
      expect(map.lookup('key4'), equals('value4'));
    });

    test('remove throws exception if the map is empty', () {
      map.clear();
      expect(() => map.remove('key0'), throwsException);
    });

    test('remove throws exception if the item does not exists', () {
      expect(() => map.remove('key4'), throwsException);
    });

    test('remove', () {
      expect(map.size, equals(3));
      map.remove('key1');
      expect(map.size, equals(2));
      expect(() => map.lookup('key1'), throwsException);

      map.remove('key2');
      expect(map.size, equals(1));
      expect(() => map.lookup('key2'), throwsException);
    });

    test('clear', () {
      expect(map.size, equals(3));
      map.clear();
      expect(map.size, equals(0));
    });

    test('toMap', () {
      final dartMap = map.toMap();
      expect(dartMap.length, equals(3));
      expect(dartMap['key1'], equals('value1'));
      expect(dartMap['key2'], isEmpty);
      expect(dartMap['key3'], equals('value3'));
      expect(() => dartMap..clear(), throwsUnsupportedError);
    });

    test('first', () {
      final iterator = map.first();
      expect(iterator.hasCurrent, isTrue);
      var current = iterator.current;
      expect(current.key, equals('key3'));
      expect(current.value, equals('value3'));
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current.key, equals('key2'));
      expect(current.value, isEmpty);
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current.key, equals('key1'));
      expect(current.value, equals('value1'));
      expect(iterator.moveNext(), isFalse);
    });
  });

  group('IMapView<String, String> (StringMap)', () {
    late IMapView<String, String> mapView;

    IMapView<String, String> getView(Pointer<COMObject> ptr) {
      final retValuePtr = calloc<COMObject>();

      final hr = ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl,
                              Pointer<COMObject> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return IMapView.fromPtr(retValuePtr,
          iterableIid: IID_IIterable_IKeyValuePair_String_String);
    }

    setUp(() {
      final map = IMap<String, String>.empty()
        ..insert('key1', 'value1')
        ..insert('key2', '')
        ..insert('key3', 'value3');
      mapView = getView(map.ptr);
    });

    test('lookup fails if the map is empty', () {
      final map = IMap<String, String>.empty();
      mapView = getView(map.ptr);
      expect(() => mapView.lookup('key1'), throwsException);
    });

    test('lookup throws exception if the item does not exists', () {
      expect(() => mapView.lookup('key4'), throwsException);
    });

    test('lookup returns items', () {
      expect(mapView.lookup('key1'), equals('value1'));
      expect(mapView.lookup('key2'), isEmpty);
      expect(mapView.lookup('key3'), equals('value3'));
    });

    test('hasKey finds items', () {
      expect(mapView.hasKey('key1'), isTrue);
      expect(mapView.hasKey('key2'), isTrue);
      expect(mapView.hasKey('key3'), isTrue);
    });

    test('hasKey returns false if the item does not exists', () {
      expect(mapView.hasKey('key4'), isFalse);
    });

    test('toMap', () {
      final dartMap = mapView.toMap();
      expect(dartMap.length, equals(3));
      expect(dartMap['key1'], equals('value1'));
      expect(dartMap['key2'], isEmpty);
      expect(dartMap['key3'], equals('value3'));
      expect(() => dartMap..clear(), throwsUnsupportedError);
    });

    test('first', () {
      final iterator = mapView.first();
      expect(iterator.hasCurrent, isTrue);
      expect(iterator.current.key, equals('key3'));
      expect(iterator.current.value, equals('value3'));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current.key, equals('key2'));
      expect(iterator.current.value, isEmpty);
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current.key, equals('key1'));
      expect(iterator.current.value, equals('value1'));
      expect(iterator.moveNext(), isFalse);
    });
  });

  group('IVector<Uri>', () {
    late IVector<Uri> vector;
    late Arena allocator;

    IVector<Uri> getServerUris(Pointer<COMObject> ptr) {
      final retValuePtr = calloc<COMObject>();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl,
                              Pointer<COMObject> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return IVector.fromPtr(retValuePtr, iterableIid: IID_IIterable_Uri);
    }

    setUp(() {
      // ignore: constant_identifier_names
      const IID_IVpnPlugInProfile = '{0EDF0DA4-4F00-4589-8D7B-4BF988F6542C}';
      final object = createObject(IInspectable.new,
          'Windows.Networking.Vpn.VpnPlugInProfile', IID_IVpnPlugInProfile);
      allocator = Arena();
      vector = getServerUris(object.ptr);
    });

    test('getAt fails if the vector is empty', () {
      expect(() => vector.getAt(0), throwsException);
    });

    test('getAt throws exception if the index is out of bounds', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(() => vector.getAt(2), throwsException);
    });

    test('getAt returns elements', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(vector.getAt(0), equals(Uri.parse('https://dart.dev/overview')));
      expect(vector.getAt(1), equals(Uri.parse('https://dart.dev/docs')));
    });

    test('getView', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      final list = vector.getView();
      expect(list.length, equals(2));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('setAt throws exception if the vector is empty', () {
      expect(() => vector.setAt(0, Uri.parse('https://dart.dev/overview')),
          throwsException);
    });

    test('setAt throws exception if the index is out of bounds', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(
          () => vector.setAt(3, Uri.parse('https://flutter.dev/development')),
          throwsException);
    });

    test('setAt', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(2));
      vector.setAt(0, Uri.parse('https://flutter.dev/development'));
      expect(vector.size, equals(2));
      vector.setAt(1, Uri.parse('https://flutter.dev/multi-platform'));
      expect(vector.size, equals(2));
      expect(vector.getAt(0),
          equals(Uri.parse('https://flutter.dev/development')));
      expect(vector.getAt(1),
          equals(Uri.parse('https://flutter.dev/multi-platform')));
    });

    test('insertAt throws exception if the index is out of bounds', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(
          () =>
              vector.insertAt(3, Uri.parse('https://flutter.dev/development')),
          throwsException);
    });

    test('insertAt', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(2));
      vector.insertAt(0, Uri.parse('https://flutter.dev/development'));
      expect(vector.size, equals(3));
      vector.insertAt(2, Uri.parse('https://flutter.dev/multi-platform'));
      expect(vector.size, equals(4));
      expect(vector.getAt(0),
          equals(Uri.parse('https://flutter.dev/development')));
      expect(vector.getAt(1), equals(Uri.parse('https://dart.dev/overview')));
      expect(vector.getAt(2),
          equals(Uri.parse('https://flutter.dev/multi-platform')));
      expect(vector.getAt(3), equals(Uri.parse('https://dart.dev/docs')));
    });

    test('removeAt throws exception if the vector is empty', () {
      expect(() => vector.removeAt(0), throwsException);
    });

    test('removeAt throws exception if the index is out of bounds', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(() => vector.removeAt(3), throwsException);
    });

    test('removeAt', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'))
        ..append(Uri.parse('https://flutter.dev/development'))
        ..append(Uri.parse('https://flutter.dev/multi-platform'));
      expect(vector.size, equals(4));
      vector.removeAt(2);
      expect(vector.size, equals(3));
      expect(vector.getAt(2),
          equals(Uri.parse('https://flutter.dev/multi-platform')));
      vector.removeAt(0);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(Uri.parse('https://dart.dev/docs')));
      vector.removeAt(1);
      expect(vector.size, equals(1));
      expect(vector.getAt(0), equals(Uri.parse('https://dart.dev/docs')));
      vector.removeAt(0);
      expect(vector.size, equals(0));
    });

    test('append', () {
      expect(vector.size, equals(0));
      vector.append(Uri.parse('https://dart.dev/overview'));
      expect(vector.size, equals(1));
      vector.append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(2));
    });

    test('removeAtEnd throws exception if the vector is empty', () {
      expect(() => vector.removeAtEnd(), throwsException);
    });

    test('removeAtEnd', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(2));
      vector.removeAtEnd();
      expect(vector.size, equals(1));
    });

    test('clear', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(2));
      vector.clear();
      expect(vector.size, equals(0));
    });

    test('getMany returns 0 if the vector is empty', () {
      expect(vector.getMany(0, 1, []), equals(0));
    });

    test('getMany returns elements starting from index 0', () {
      final list = <Uri>[];

      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'))
        ..append(Uri.parse('https://flutter.dev/development'));
      expect(vector.getMany(0, 3, list), equals(3));
      expect(list.length, equals(3));
      expect(list[0].toString(), equals('https://dart.dev/overview'));
      expect(list[1].toString(), equals('https://dart.dev/docs'));
      expect(list[2].toString(), equals('https://flutter.dev/development'));
    });

    test(
        'getMany returns all elements if valueSize is greater than the number '
        'of elements', () {
      final list = <Uri>[];

      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'))
        ..append(Uri.parse('https://flutter.dev/development'));
      expect(vector.getMany(0, 5, list), equals(3));
      expect(list.length, equals(3));
      expect(list[0].toString(), equals('https://dart.dev/overview'));
      expect(list[1].toString(), equals('https://dart.dev/docs'));
      expect(list[2].toString(), equals('https://flutter.dev/development'));
    });

    test('getMany returns elements starting from index 1', () {
      final list = <Uri>[];

      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'))
        ..append(Uri.parse('https://flutter.dev/development'));
      expect(vector.getMany(1, 2, list), equals(2));
      expect(list.length, equals(2));
      expect(list[0].toString(), equals('https://dart.dev/docs'));
      expect(list[1].toString(), equals('https://flutter.dev/development'));
    });

    test('replaceAll', () {
      expect(vector.size, equals(0));
      vector.replaceAll([
        Uri.parse('https://dart.dev/overview'),
        Uri.parse('https://dart.dev/docs')
      ]);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(Uri.parse('https://dart.dev/overview')));
      expect(vector.getAt(1), equals(Uri.parse('https://dart.dev/docs')));
      vector.replaceAll([
        Uri.parse('https://flutter.dev/development'),
        Uri.parse('https://flutter.dev/multi-platform')
      ]);
      expect(vector.size, equals(2));
      expect(vector.getAt(0),
          equals(Uri.parse('https://flutter.dev/development')));
      expect(vector.getAt(1),
          equals(Uri.parse('https://flutter.dev/multi-platform')));
    });

    test('toList', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'))
        ..append(Uri.parse('https://flutter.dev/development'));
      final list = vector.toList();
      expect(list.length, equals(3));
      expect(list.elementAt(0), equals(Uri.parse('https://dart.dev/overview')));
      expect(list.elementAt(1), equals(Uri.parse('https://dart.dev/docs')));
      expect(list.elementAt(2),
          equals(Uri.parse('https://flutter.dev/development')));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('first', () {
      vector
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'))
        ..append(Uri.parse('https://flutter.dev/development'));
      final iterator = vector.first();
      expect(iterator.hasCurrent, isTrue);
      expect(iterator.current, equals(Uri.parse('https://dart.dev/overview')));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current, equals(Uri.parse('https://dart.dev/docs')));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current,
          equals(Uri.parse('https://flutter.dev/development')));
      expect(iterator.moveNext(), isFalse);
    });

    tearDown(() {
      allocator.releaseAll(reuse: true);
    });
  });
}
