// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'istorageitem.dart';

/// @nodoc
const IID_IStorageFolder2 = '{e827e8b9-08d9-4a8e-a0ac-fe5ed3cbbbd3}';

/// {@category interface}
class IStorageFolder2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFolder2.fromRawPointer(super.ptr);

  factory IStorageFolder2.from(IInspectable interface) =>
      IStorageFolder2.fromRawPointer(
          interface.toInterface(IID_IStorageFolder2));

  Future<IStorageItem?> tryGetItemAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IStorageItem?>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int name, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    final asyncOperation = IAsyncOperation<IStorageItem?>.fromRawPointer(
        retValuePtr,
        creator: IStorageItem.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
