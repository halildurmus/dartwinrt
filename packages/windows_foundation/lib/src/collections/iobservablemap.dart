// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
  IObservableMap.fromPtr(super.ptr);

  late final _IObservableMapVtbl __vtable =
      ptr.ref.vtable.cast<_IObservableMapVtbl>().ref;

  int add_MapChanged(Pointer<COMObject> vhnd) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = __vtable.add_MapChanged.asFunction<
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
    final hr = __vtable.remove_MapChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IObservableMapVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer vhnd,
              Pointer<IntPtr> retValuePtr)>> add_MapChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_MapChanged;
}
