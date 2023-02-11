// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
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
    expect(isSubtypeOfInspectable<INetwork>(), isFalse);
  });

  test('isSubtypeOfStruct', () {
    expect(isSubtypeOfStruct<GUID>(), isTrue);
    expect(isSubtypeOfStruct<Guid>(), isFalse);
    expect(isSubtypeOfStruct<Point>(), isTrue);
  });

  test('isSubtypeOfWinRTEnum', () {
    expect(isSubtypeOfWinRTEnum<WinRTEnum>(), isTrue);
    expect(isSubtypeOfWinRTEnum<AsyncStatus>(), isTrue);
    expect(isSubtypeOfWinRTEnum<IAsyncAction>(), isFalse);
  });
}
