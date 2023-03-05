// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'storagelibrarychangetracker.dart';

/// @nodoc
const IID_IStorageFolder3 = '{9f617899-bde1-4124-aeb3-b06ad96f98d4}';

/// {@category interface}
class IStorageFolder3 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFolder3.fromRawPointer(super.ptr);

  factory IStorageFolder3.from(IInspectable interface) =>
      IStorageFolder3.fromRawPointer(
          interface.toInterface(IID_IStorageFolder3));

  StorageLibraryChangeTracker? tryGetChangeTracker() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageLibraryChangeTracker.fromRawPointer(retValuePtr);
  }
}
