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

// Test the PropertyValue class to make sure overrides, properties and methods
// are working correctly.

void main() {
  if (isWindowsRuntimeAvailable()) {
    test('UInt8', () {
      final pv = PropertyValue.createUInt8(30);
      expect(pv.type, equals(PropertyType.uint8));
      expect(pv.getUInt8(), equals(30));

      pv.release();
    });

    test('UInt8Array', () {
      final array = calloc<Uint8>(5);
      for (var idx = 0; idx < 5; idx++) {
        array[idx] = (10 * idx) + 10;
      }
      final pv = PropertyValue.createUInt8Array(5, array);
      expect(pv.type, equals(PropertyType.uint8Array));

      final arraySize = calloc<Uint32>();
      final newArray = calloc<Pointer<Uint8>>();

      pv.getUInt8Array(arraySize, newArray);
      expect(arraySize.value, equals(5));
      expect(newArray.value[0], equals(10));
      expect(newArray.value[1], equals(20));
      expect(newArray.value[2], equals(30));
      expect(newArray.value[3], equals(40));
      expect(newArray.value[4], equals(50));

      pv.release();
    });

    test('UInt16', () {
      final pv = PropertyValue.createUInt16(65534);
      expect(pv.type, equals(PropertyType.uint16));
      expect(pv.getUInt16(), equals(65534));

      pv.release();
    });

    test('UInt16Array', () {
      final array = calloc<Uint16>(5);
      for (var idx = 0; idx < 5; idx++) {
        array[idx] = (100 * idx) + 100;
      }
      final pv = PropertyValue.createUInt16Array(5, array);
      expect(pv.type, equals(PropertyType.uint16Array));

      final arraySize = calloc<Uint32>();
      final newArray = calloc<Pointer<Uint16>>();

      pv.getUInt16Array(arraySize, newArray);
      expect(arraySize.value, equals(5));
      expect(newArray.value[0], equals(100));
      expect(newArray.value[1], equals(200));
      expect(newArray.value[2], equals(300));
      expect(newArray.value[3], equals(400));
      expect(newArray.value[4], equals(500));

      pv.release();
    });

    test('Guid', () {
      final pv = PropertyValue.createGuid(Guid.parse(IID_IAsyncInfo));
      expect(pv.type, equals(PropertyType.guid));
      expect(pv.getGuid().toString(), equals(IID_IAsyncInfo));

      pv.release();
    });

    test('GuidArray', () {
      final array = calloc<GUID>(3);
      array[0].setGUID(IID_IAsyncAction);
      array[1].setGUID(IID_IAsyncInfo);
      array[2].setGUID(IID_IClosable);
      final pv = PropertyValue.createGuidArray(3, array);
      expect(pv.type, equals(PropertyType.guidArray));

      final arraySize = calloc<Uint32>();
      final newArray = calloc<Pointer<GUID>>();

      pv.getGuidArray(arraySize, newArray);
      expect(arraySize.value, equals(3));
      expect(newArray.value[0].toString(), equals(IID_IAsyncAction));
      expect(newArray.value[1].toString(), equals(IID_IAsyncInfo));
      expect(newArray.value[2].toString(), equals(IID_IClosable));

      pv.release();
    });

    test('Inspectable', () {
      final stringMap = StringMap();
      final pv = PropertyValue.createInspectable(stringMap.ptr);
      expect(IInspectable(pv).runtimeClassName,
          equals('Windows.Foundation.Collections.StringMap'));

      stringMap.release();
    });

    test('InspectableArray', () {
      final stringMap = StringMap();
      final propertySet = PropertySet();
      final array = calloc<COMObject>(2);
      array[0] = stringMap.ptr.ref;
      array[1] = propertySet.ptr.ref;
      final pv = PropertyValue.createInspectableArray(2, array);
      expect(pv.type, equals(PropertyType.inspectableArray));

      final arraySize = calloc<Uint32>();
      final newArray = calloc<Pointer<COMObject>>();

      pv.getInspectableArray(arraySize, newArray);
      expect(arraySize.value, equals(2));
      final list = newArray.value.toList(IInspectable.new, length: 2);
      final firstElement = list.first;
      final lastElement = list.last;
      expect(firstElement.runtimeClassName,
          equals('Windows.Foundation.Collections.StringMap'));
      expect(lastElement.runtimeClassName,
          equals('Windows.Foundation.Collections.PropertySet'));

      lastElement.release();
      firstElement.release();
      free(newArray);
      pv.release();
      free(array);
    });
  }
}
