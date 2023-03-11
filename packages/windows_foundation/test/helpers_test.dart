// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
    expect(ptr.ref.isNull, isTrue);
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
  });

  test('getClassName', () {
    const stringMapClassName = 'Windows.Foundation.Collections.StringMap';
    final stringMap = StringMap();
    expect(getClassName(stringMap), equals(stringMapClassName));
  });

  test('getTrustLevel of base trust class', () {
    final stringMap = StringMap();
    expect(getTrustLevel(stringMap), equals(TrustLevel.baseTrust));
  });

  test('getTrustLevel of partial trust class', () {
    const className = 'Windows.Storage.Pickers.FileOpenPicker';
    final inspectable = IInspectable(activateClass(className));
    expect(getTrustLevel(inspectable), equals(TrustLevel.partialTrust));
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
