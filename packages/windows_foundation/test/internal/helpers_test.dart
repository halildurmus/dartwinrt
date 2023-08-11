// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  test('getWindowsBuildNumber', () {
    expect(getWindowsBuildNumber(), greaterThanOrEqualTo(17763));
  });

  test('isNullableObjectType', () {
    expect(isNullableObjectType<Object?>(), isTrue);
    expect(isNullableObjectType<Object>(), isFalse);
    expect(isNullableObjectType<String?>(), isFalse);
    expect(isNullableObjectType<String>(), isFalse);
  });

  test('isSameType', () {
    expect(isSameType<Guid, Guid>(), isTrue);
    expect(isSameType<Object, Object>(), isTrue);
    expect(isSameType<Object, Object?>(), isFalse);
    expect(isSameType<Object?, Object?>(), isTrue);
    expect(isSameType<String, String>(), isTrue);
    expect(isSameType<String?, String>(), isFalse);
  });

  test('isSubtype', () {
    expect(isSubtype<StringMap, IInspectable>(), isTrue);
    expect(isSubtype<IAsyncInfo, IInspectable>(), isTrue);
    expect(isSubtype<IUnknown, IInspectable>(), isFalse);
    expect(isSubtype<IInspectable, IUnknown>(), isTrue);
  });

  test('isSubtypeOfInspectable', () {
    expect(isSubtypeOfInspectable<IInspectable>(), isTrue);
    expect(isSubtypeOfInspectable<StringMap>(), isTrue);
    expect(isSubtypeOfInspectable<IAsyncInfo>(), isTrue);
    expect(isSubtypeOfInspectable<IUnknown>(), isFalse);
  });

  test('isSubtypeOfWinRTEnum', () {
    expect(isSubtypeOfWinRTEnum<WinRTEnum>(), isTrue);
    expect(isSubtypeOfWinRTEnum<AsyncStatus>(), isTrue);
    expect(isSubtypeOfWinRTEnum<IAsyncAction>(), isFalse);
  });

  test('isSubtypeOfWinRTFlagsEnum', () {
    expect(isSubtypeOfWinRTFlagsEnum<WinRTFlagsEnum<dynamic>>(), isTrue);
    expect(isSubtypeOfWinRTFlagsEnum<AsyncStatus>(), isFalse);
  });

  test('isSubtypeOfWinRTStruct', () {
    expect(isSubtypeOfWinRTStruct<Point>(), isTrue);
    expect(isSubtypeOfWinRTStruct<Guid>(), isFalse);
    expect(isSubtypeOfWinRTStruct<Rect>(), isTrue);
  });
}
