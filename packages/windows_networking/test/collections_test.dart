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
import 'package:windows_networking/windows_networking.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('IVectorView<HostName>', () {
    late Arena allocator;
    late IVectorView<HostName> vectorView;

    IVectorView<HostName> getHostNames(Pointer<COMObject> ptr) {
      final retValuePtr = calloc<COMObject>();

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl,
                              Pointer<COMObject> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return IVectorView.fromPtr(retValuePtr,
          creator: HostName.fromPtr, iterableIid: IID_IIterable_HostName);
    }

    setUp(() {
      allocator = Arena();
      final object = createActivationFactory(
          IInspectable.new,
          'Windows.Networking.Connectivity.NetworkInformation',
          '{5074f851-950d-4165-9c15-365619481eea}' // IID_INetworkInformationStatics,
          );
      vectorView = getHostNames(object.ptr);
    });

    test('getAt throws exception if the index is out of bounds', () {
      expect(() => vectorView.getAt(20), throwsException);
    });

    test('getAt returns elements', () {
      final hostName = vectorView.getAt(0);
      expect(hostName.displayName, isNotEmpty);
    });

    test('indexOf finds element', () {
      final pIndex = allocator<Uint32>();
      final hostName = vectorView.getAt(0);
      final containsElement = vectorView.indexOf(hostName, pIndex);
      expect(containsElement, isTrue);
      expect(pIndex.value, greaterThanOrEqualTo(0));
    });

    test('getMany returns elements starting from index 0', () {
      final list = <HostName>[];
      expect(vectorView.getMany(0, vectorView.size, list),
          greaterThanOrEqualTo(1));
    });

    test('toList', () {
      final list = vectorView.toList();
      expect(list.length, greaterThanOrEqualTo(1));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('first', () {
      final list = vectorView.toList();
      final iterator = vectorView.first();

      for (var i = 0; i < list.length; i++) {
        expect(iterator.hasCurrent, isTrue);
        expect(iterator.current.rawName, equals(list[i].rawName));
        // moveNext() should return true except for the last iteration
        expect(iterator.moveNext(), i < list.length - 1);
      }
    });

    tearDown(() {
      allocator.releaseAll(reuse: true);
    });
  });
}
