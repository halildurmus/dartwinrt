// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'istorageitem.dart';

/// @nodoc
const IID_IStorageFolder2 = '{e827e8b9-08d9-4a8e-a0ac-fe5ed3cbbbd3}';

class IStorageFolder2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFolder2.fromPtr(super.ptr);

  factory IStorageFolder2.from(IInspectable interface) =>
      IStorageFolder2.fromPtr(interface.toInterface(IID_IStorageFolder2));

  Future<IStorageItem?> tryGetItemAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IStorageItem?>.fromPtr(retValuePtr,
        creator: IStorageItem.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
