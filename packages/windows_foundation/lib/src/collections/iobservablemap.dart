// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../callbacks.dart';
import '../iinspectable.dart';

/// Notifies listeners of dynamic changes to a map, such as when items are added
/// or removed.
///
/// {@category interface}
class IObservableMap<K, V> extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IObservableMap.fromRawPointer(super.ptr);

  int add_MapChanged(Pointer<NativeFunction<MapChangedEventHandler>> vhnd) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Pointer<COMObject> vhnd,
                              Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<COMObject> vhnd, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, vhnd.cast<Pointer<COMObject>>().value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_MapChanged(int token) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
