// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart' hide IUnknown;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/src/iuriruntimeclassfactory.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('activateClass', () {
    final inspectable =
        IInspectable(activateClass('Windows.Foundation.Collections.StringMap'));
    final iids = getInterfaces(inspectable);
    expect(iids.length, equals(4));
    expect(iids, contains(IID_IMap_String_String));
  });

  test('createActivationFactory', () {
    final classFactory = createActivationFactory(
        IUriRuntimeClassFactory.fromPtr,
        'Windows.Foundation.Uri',
        IID_IUriRuntimeClassFactory);
    final uri = classFactory.createUri('https://dart.dev');
    expect(getClassName(uri), equals('Windows.Foundation.Uri'));
  });

  test('createObject', () {
    final stringMap = createObject(StringMap.fromPtr,
        'Windows.Foundation.Collections.StringMap', IID_IMap_String_String);
    expect(getClassName(stringMap),
        equals('Windows.Foundation.Collections.StringMap'));
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
