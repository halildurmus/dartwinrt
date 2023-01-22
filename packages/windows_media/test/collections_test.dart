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
import 'package:windows_media/windows_media.dart';

void main() {
  if (isWindowsRuntimeAvailable()) {
    group('IMap<Guid, Object?> (MediaPropertySet)', () {
      late IMap<Guid, Object?> map;
      late Arena allocator;

      setUp(() {
        allocator = Arena();
        final pPoint = allocator<Point>()
          ..ref.X = 3
          ..ref.Y = -3;
        final pRect = allocator<Rect>()
          ..ref.Height = 100
          ..ref.Width = 200
          ..ref.X = 2
          ..ref.Y = -2;
        final pSize = allocator<Size>()
          ..ref.Height = 1500
          ..ref.Width = 300;

        map = MediaPropertySet()
          ..insert(Guid.parse(IID_IClosable), null)
          ..insert(Guid.parse(IID_IStringable), StringMap())
          ..insert(Guid.parse(IID_IDispatch), true)
          ..insert(Guid.parse(IID_IPropertySet), DateTime(2022, 7, 11, 17, 30))
          ..insert(Guid.parse(IID_ISpellChecker), 0.5)
          ..insert(Guid.parse(IID_IShellLink), const Duration(seconds: 30))
          ..insert(Guid.parse(IID_IShellService), Guid.parse(IID_ISpVoice))
          ..insert(Guid.parse(IID_IShellFolder), 259)
          ..insert(Guid.parse(IID_IShellItem), pPoint.ref)
          ..insert(Guid.parse(IID_IShellItem2), pRect.ref)
          ..insert(Guid.parse(IID_IShellItemArray), pSize.ref)
          ..insert(Guid.parse(IID_IShellItemFilter), 'strVal')
          ..insert(Guid.parse(IID_IUnknown), [true, false])
          ..insert(Guid.parse(IID_IAppxManifestReader),
              [DateTime(2020, 7, 11, 17, 30), DateTime(2022, 7, 11, 17, 30)])
          ..insert(Guid.parse(IID_IAppxManifestReader2), [2.5, 0.99])
          ..insert(Guid.parse(IID_IAppxManifestReader3),
              const [Duration(hours: 1), Duration(minutes: 60)])
          ..insert(Guid.parse(IID_IAppxManifestReader4),
              [Guid.parse(IID_IShellItem)])
          ..insert(Guid.parse(IID_IAppxManifestReader5), [StringMap()])
          ..insert(Guid.parse(IID_IAppxManifestReader6), [2022, -2022])
          ..insert(Guid.parse(IID_IAppxManifestReader7), [pPoint.ref])
          ..insert(Guid.parse(IID_IAppxManifestProperties), [pRect.ref])
          ..insert(Guid.parse(IID_IAppxManifestPackageId), [pSize.ref])
          ..insert(Guid.parse(IID_IAppxFile), ['str1', 'str2']);
      });

      test('fromMap', () {
        final stringableGuid = Guid.parse(IID_IStringable);
        final closableGuid = Guid.parse(IID_IClosable);
        final propertyValueGuid = Guid.parse(IID_IPropertyValue);
        map = IMap.fromMap({
          stringableGuid: StringMap(),
          closableGuid: 259,
          propertyValueGuid: 'strVal',
        });

        final stringMapVal = map.lookup(stringableGuid);
        expect(stringMapVal, isA<IInspectable>());
        expect(getClassName(stringMapVal as IInspectable),
            equals('Windows.Foundation.Collections.StringMap'));
        expect(map.lookup(closableGuid), equals(259));
        expect(map.lookup(propertyValueGuid), equals('strVal'));
      });

      test('lookup fails if the map is empty', () {
        map.clear();
        expect(() => map.lookup(Guid.parse(IID_IStringable)), throwsException);
      });

      test('lookup throws exception if the item does not exists', () {
        expect(() => map.lookup(Guid.parse(IID_IInspectable)), throwsException);
      });

      test('lookup returns items', () {
        expect(map.lookup(Guid.parse(IID_IClosable)), isNull);

        final stringableVal = map.lookup(Guid.parse(IID_IStringable));
        expect(stringableVal, isA<IInspectable>());
        expect(getClassName(stringableVal as IInspectable),
            equals('Windows.Foundation.Collections.StringMap'));

        expect(map.lookup(Guid.parse(IID_IDispatch)), isTrue);

        final dateTimeVal = map.lookup(Guid.parse(IID_IPropertySet));
        expect(dateTimeVal, isA<DateTime>());
        final dateTime = dateTimeVal as DateTime;
        expect(dateTime.millisecondsSinceEpoch,
            equals(DateTime(2022, 7, 11, 17, 30).millisecondsSinceEpoch));

        expect(map.lookup(Guid.parse(IID_ISpellChecker)), equals(0.5));
        expect(map.lookup(Guid.parse(IID_IShellLink)),
            equals(const Duration(seconds: 30)));

        final guidVal = map.lookup(Guid.parse(IID_IShellService));
        expect(guidVal, isA<Guid>());
        final guid = guidVal as Guid;
        expect(guid.toString(), equals(IID_ISpVoice));

        expect(map.lookup(Guid.parse(IID_IShellFolder)), equals(259));

        final pointVal = map.lookup(Guid.parse(IID_IShellItem));
        expect(pointVal, isA<Point>());
        final point = pointVal as Point;
        expect(point.X, equals(3));
        expect(point.Y, equals(-3));

        final rectVal = map.lookup(Guid.parse(IID_IShellItem2));
        expect(rectVal, isA<Rect>());
        final rect = rectVal as Rect;
        expect(rect.Height, equals(100));
        expect(rect.Width, equals(200));
        expect(rect.X, equals(2));
        expect(rect.Y, equals(-2));

        final sizeVal = map.lookup(Guid.parse(IID_IShellItemArray));
        expect(sizeVal, isA<Size>());
        final size = sizeVal as Size;
        expect(size.Height, equals(1500));
        expect(size.Width, equals(300));

        expect(map.lookup(Guid.parse(IID_IShellItemFilter)), equals('strVal'));

        expect(map.lookup(Guid.parse(IID_IUnknown)), equals([true, false]));

        final dateTimeListVal = map.lookup(Guid.parse(IID_IAppxManifestReader));
        expect(dateTimeListVal, isA<List<DateTime>>());
        final dateTimeList = dateTimeListVal as List<DateTime>;
        expect(dateTimeList.first.millisecondsSinceEpoch,
            equals(DateTime(2020, 7, 11, 17, 30).millisecondsSinceEpoch));
        expect(dateTimeList.last.millisecondsSinceEpoch,
            equals(DateTime(2022, 7, 11, 17, 30).millisecondsSinceEpoch));

        expect(map.lookup(Guid.parse(IID_IAppxManifestReader2)),
            equals([2.5, 0.99]));

        expect(map.lookup(Guid.parse(IID_IAppxManifestReader3)),
            equals(const [Duration(hours: 1), Duration(minutes: 60)]));

        final guidListVal = map.lookup(Guid.parse(IID_IAppxManifestReader4));
        expect(guidListVal, isA<List<Guid>>());
        final guidList = guidListVal as List<Guid>;
        expect(guidList.first.toString(), equals(IID_IShellItem));

        final stringableListVal =
            map.lookup(Guid.parse(IID_IAppxManifestReader5));
        expect(stringableListVal, isA<List<IInspectable>>());
        final stringableList = stringableListVal as List<IInspectable>;
        expect(getClassName(stringableList.first),
            equals('Windows.Foundation.Collections.StringMap'));

        expect(map.lookup(Guid.parse(IID_IAppxManifestReader6)),
            equals([2022, -2022]));

        final pointListVal = map.lookup(Guid.parse(IID_IAppxManifestReader7));
        expect(pointListVal, isA<List<Point>>());
        final pointList = pointListVal as List<Point>;
        expect(pointList.first.X, equals(3));
        expect(pointList.first.Y, equals(-3));

        final rectListVal = map.lookup(Guid.parse(IID_IAppxManifestProperties));
        expect(rectListVal, isA<List<Rect>>());
        final rectList = rectListVal as List<Rect>;
        expect(rectList.first.Height, equals(100));
        expect(rectList.first.Width, equals(200));
        expect(rectList.first.X, equals(2));
        expect(rectList.first.Y, equals(-2));

        final sizeListVal = map.lookup(Guid.parse(IID_IAppxManifestPackageId));
        expect(sizeListVal, isA<List<Size>>());
        final sizeList = sizeListVal as List<Size>;
        expect(sizeList.first.Height, equals(1500));
        expect(sizeList.first.Width, equals(300));

        expect(map.lookup(Guid.parse(IID_IAppxFile)), equals(['str1', 'str2']));
      });

      test('hasKey finds items', () {
        expect(map.hasKey(Guid.parse(IID_IDispatch)), isTrue);
        expect(map.hasKey(Guid.parse(IID_IShellLink)), isTrue);
        expect(map.hasKey(Guid.parse(IID_IShellItemFilter)), isTrue);
      });

      test('hasKey returns false if the item does not exists', () {
        expect(map.hasKey(Guid.parse(IID_IInspectable)), isFalse);
      });

      test('getView', () {
        final unmodifiableMap = map.getView();
        expect(unmodifiableMap.length, equals(23));
        expect(() => unmodifiableMap..clear(), throwsUnsupportedError);
      });

      test('insert replaces an existing item', () {
        final guid = Guid.parse(IID_IShellItemFilter);
        expect(map.size, equals(23));
        expect(map.insert(guid, 'strValNew'), isTrue);
        expect(map.size, equals(23));
        expect(map.lookup(guid), equals('strValNew'));
      });

      test('insert inserts a new item', () {
        final guid = Guid.parse(IID_IClassFactory);
        expect(map.size, equals(23));
        expect(map.insert(guid, 'iclassfactory'), isFalse);
        expect(map.size, equals(24));
        expect(map.lookup(guid), equals('iclassfactory'));
      });

      test('remove throws exception if the map is empty', () {
        map.clear();
        final guid = Guid.parse(IID_IStringable);
        expect(() => map.remove(guid), throwsException);
      });

      test('remove throws exception if the item does not exists', () {
        final guid = Guid.parse(IID_IInspectable);
        expect(() => map.remove(guid), throwsException);
      });

      test('remove', () {
        final guid1 = Guid.parse(IID_IShellFolder);
        final guid2 = Guid.parse(IID_IShellItemFilter);
        expect(map.size, equals(23));

        map.remove(guid1);
        expect(map.size, equals(22));
        expect(() => map.lookup(guid1), throwsException);

        map.remove(guid2);
        expect(map.size, equals(21));
        expect(() => map.lookup(guid2), throwsException);
      });

      test('clear', () {
        expect(map.size, equals(23));
        map.clear();
        expect(map.size, equals(0));
      });

      test('toMap', () {
        final guid1 = Guid.parse(IID_IShellFolder);
        final guid2 = Guid.parse(IID_IShellItemFilter);
        final guid3 = Guid.parse(IID_IAppxManifestReader2);
        final dartMap = map.toMap();
        expect(dartMap.length, equals(23));
        expect(dartMap[guid1], equals(259));
        expect(dartMap[guid2], equals('strVal'));
        expect(dartMap[guid3], equals([2.5, 0.99]));
        expect(() => dartMap..clear(), throwsUnsupportedError);
      });

      test('first', () {
        final stringableGuid = Guid.parse(IID_IStringable);
        final propertyValueGuid = Guid.parse(IID_IPropertyValue);
        map = IMap.fromMap(
            {stringableGuid: 'istringable', propertyValueGuid: 259});

        final iterator = map.first();
        expect(iterator.hasCurrent, isTrue);
        expect(
            iterator.current.key.toString(), equals(stringableGuid.toString()));
        expect(iterator.current.value, equals('istringable'));
        expect(iterator.moveNext(), isTrue);
        expect(iterator.current.key.toString(),
            equals(propertyValueGuid.toString()));
        expect(iterator.current.value, equals(259));
        expect(iterator.moveNext(), isFalse);
      });

      tearDown(() {
        map.release();
        allocator.releaseAll(reuse: true);
      });
    });
  }
}
