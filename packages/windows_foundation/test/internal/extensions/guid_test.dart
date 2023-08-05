// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  final guid1 = Guid.parse(IID_IPropertyValue);
  final guid2 = Guid.parse(IID_IStringable);

  group('Guid', () {
    test('to IPropertyValue', () {
      final pv = guid1.toPropertyValue();
      expect(pv.type, equals(PropertyType.guid));
      expect(pv.getGuid(), equals(guid1));
    });

    test('to IReference', () {
      final ireference = Guid.parse(IID_IPropertyValue).toReference();
      expect(ireference.value, equals(guid1));
    });
  });

  group('List<Guid>', () {
    test('to Pointer<GUID>', () {
      final list = <Guid>[guid1, guid2];
      final array = list.toArray();
      expect(array.elementAt(0).toDartGuid(), equals(guid1));
      expect(array.elementAt(1).toDartGuid(), equals(guid2));
      free(array);
    });

    test('to IPropertyValue', () {
      final pv = [guid1, guid2].toPropertyValue();
      expect(pv.type, equals(PropertyType.guidArray));
      final list = pv.getGuidArray();
      expect(list.length, equals(2));
      expect(list, orderedEquals([guid1, guid2]));
    });
  });

  test('Pointer<GUID> to List<Guid>', () {
    final allocator = Arena();
    final array = allocator<GUID>(2)
      ..[0] = guid1.toNativeGUID(allocator: allocator).ref
      ..[1] = guid2.toNativeGUID(allocator: allocator).ref;
    final list = array.toList(length: 2);
    expect(list, orderedEquals([guid1, guid2]));
    allocator.releaseAll();
  });
}
