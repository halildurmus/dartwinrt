// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';

// Test the WinRT helper functions to make sure everything is working correctly.

void main() {
  test('isNull', () {
    final ptr = calloc<COMObject>();

    expect(ptr.ref.isNull, isTrue);

    free(ptr);
  });

  test('toDartString', () {
    final hString = convertToHString('Hello, world!');
    final ptr = calloc<HSTRING>()..value = hString;

    expect(ptr.toDartString(), 'Hello, world!');

    WindowsDeleteString(hString);
    free(ptr);
  });

  test('getInterfaces', () {
    const iids = [
      '{f6d1f700-49c2-52ae-8154-826f9908773c}', // IMap<String, String>
      '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}', // IIterable<IKeyValuePair<String, String>
      '{1e036276-2f60-55f6-b7f3-f86079e6900b}', // IObservableMap<String, String>
      '{00000038-0000-0000-c000-000000000046}' // IWeakReferenceSource
    ];

    final stringMap = StringMap();
    expect(getInterfaces(stringMap), equals(iids));

    stringMap.release();
  });

  test('getClassName', () {
    const stringMapClassName = 'Windows.Foundation.Collections.StringMap';

    final stringMap = StringMap();
    expect(getClassName(stringMap), equals(stringMapClassName));

    stringMap.release();
  });

  test('getTrustLevel of base trust class', () {
    final stringMap = StringMap();
    expect(getTrustLevel(stringMap), equals(TrustLevel.baseTrust));

    stringMap.release();
  });

  test('getTrustLevel of partial trust class', () {
    const className = 'Windows.Storage.Pickers.FileOpenPicker';

    final object = createObject(className, IID_IInspectable);
    final inspectableObject = IInspectable(object);
    expect(getTrustLevel(inspectableObject), equals(TrustLevel.partialTrust));

    inspectableObject.release();
  });
}
