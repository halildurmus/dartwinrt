// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart' hide IUnknown;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  test('activateClass', () {
    const className = 'Windows.Globalization.Calendar';
    final inspectablePtr = activateClass(className);
    expect(inspectablePtr.address, isNonZero);
    expect(inspectablePtr.ref.isNull, isFalse);
    final inspectable = IInspectable(inspectablePtr);
    expect(getClassName(inspectable), equals(className));
    expect(refCount(inspectable), equals(1));
  });

  test('createActivationFactory', () {
    const className = 'Windows.Globalization.Calendar';
    const iidIcalendarfactory = '{83f58412-e56b-4c75-a66e-0f63d57758a6}';
    final calendarFactory = createActivationFactory(
        IInspectable.new, className, iidIcalendarfactory);
    expect(calendarFactory.ptr.address, isNonZero);
    expect(calendarFactory.ptr.ref.isNull, isFalse);
    expect(refCount(calendarFactory), equals(2));
  });

  test('createObject', () {
    const className = 'Windows.Globalization.Calendar';
    final calendar =
        createObject(IInspectable.new, className, IID_IInspectable);
    expect(calendar.ptr.address, isNonZero);
    expect(calendar.ptr.ref.isNull, isFalse);
    expect(getClassName(calendar), equals(className));
    expect(refCount(calendar), equals(1));
  });

  test('forceGC', () {
    expect(() async => forceGC(), returnsNormally);
  });

  test('getWindowHandle', () {
    expect(getWindowHandle(), isZero);
  });

  tearDownAll(forceGC);
}
