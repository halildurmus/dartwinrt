// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (isWindowsRuntimeAvailable()) {
    test('WinRT initialization should succeed', () {
      final hr = RoInitialize(RO_INIT_TYPE.RO_INIT_MULTITHREADED);
      expect(hr, equals(S_OK));
      RoUninitialize();
    });

    test('WinRT double initialization should succeed with warning', () {
      final hr = RoInitialize(RO_INIT_TYPE.RO_INIT_MULTITHREADED);
      expect(SUCCEEDED(hr), isTrue);
      expect(hr, equals(S_OK));

      final hr2 = RoInitialize(RO_INIT_TYPE.RO_INIT_MULTITHREADED);
      expect(SUCCEEDED(hr2), isTrue);
      expect(hr2, equals(S_FALSE));

      // Balance out uninitialization. This is deliberately called twice.
      RoUninitialize();
      RoUninitialize();
    });

    test('WinRT change of threading model should fail', () {
      final hr = RoInitialize(RO_INIT_TYPE.RO_INIT_MULTITHREADED);
      expect(SUCCEEDED(hr), isTrue);
      expect(hr, equals(S_OK));

      final hr2 = RoInitialize(RO_INIT_TYPE.RO_INIT_SINGLETHREADED);
      expect(FAILED(hr2), isTrue);
      expect(hr2, equals(RPC_E_CHANGED_MODE));

      // Balance out uninitialization. This is deliberately only called once,
      // because it only succeeded once.
      RoUninitialize();
    });

    test('WinRT basic test', () {
      final propertyValue = PropertyValue.createString('basic');
      expect(propertyValue.getString(), equals('basic'));

      propertyValue.release();
    });

    test('WinRT getIids test', () {
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

    test('WinRT getRuntimeClassName test', () {
      const stringMapClassName = 'Windows.Foundation.Collections.StringMap';

      final stringMap = StringMap();
      expect(getClassName(stringMap), equals(stringMapClassName));

      stringMap.release();
    });

    test('WinRT getTrustLevel test of base trust class', () {
      final stringMap = StringMap();
      expect(getTrustLevel(stringMap), equals(TrustLevel.baseTrust));

      stringMap.release();
    });

    test('WinRT getTrustLevel test of partial trust class', () {
      const className = 'Windows.Storage.Pickers.FileOpenPicker';

      final object = createObject(className, IID_IInspectable);
      final inspectableObject = IInspectable(object);
      expect(getTrustLevel(inspectableObject), equals(TrustLevel.partialTrust));

      inspectableObject.release();
    });
  }
}
