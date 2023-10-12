// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';

/// Notifies listeners of dynamic changes to a map, such as when items are added
/// or removed.
interface class IObservableMap<K, V> extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IObservableMap.fromPtr(super.ptr);

  int add_MapChanged(Pointer<COMObject> vhnd) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr =
          vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer vhnd,
                                  Pointer<IntPtr> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, VTablePointer vhnd,
                          Pointer<IntPtr> retValuePtr)>()(
              lpVtbl, vhnd.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_MapChanged(int token) {
    final hr =
        vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
