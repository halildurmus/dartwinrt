// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart' hide IUnknown;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('isNull', () {
    final ptr = calloc<COMObject>();
    expect(ptr.isNull, isTrue);
    expect(ptr.ref.isNull, isTrue);
    free(ptr);
  });

  test('refCount', () {
    final propertySet = PropertySet()..detach();
    expect(refCount(propertySet), 1);
    propertySet.addRef();
    expect(refCount(propertySet), 2);
    propertySet.release();
    expect(refCount(propertySet), 1);
  });
}
