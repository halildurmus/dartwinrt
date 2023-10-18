// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'istorageitem.dart';

/// @nodoc
const IID_IStorageFolder2 = '{e827e8b9-08d9-4a8e-a0ac-fe5ed3cbbbd3}';

class IStorageFolder2 extends IInspectable {
  IStorageFolder2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFolder2Vtbl>().ref;

  final _IStorageFolder2Vtbl _vtable;

  factory IStorageFolder2.from(IInspectable interface) =>
      interface.cast(IStorageFolder2.fromPtr, IID_IStorageFolder2);

  Future<IStorageItem?> tryGetItemAsync(String name) {
    final operation = calloc<COMObject>();

    final hr = _vtable.TryGetItemAsync.asFunction<
            int Function(VTablePointer lpVtbl, int name,
                Pointer<COMObject> operation)>()(
        lpVtbl, name.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IStorageItem?>.fromPtr(operation,
        creator: IStorageItem.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IStorageFolder2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              Pointer<COMObject> operation)>> TryGetItemAsync;
}
