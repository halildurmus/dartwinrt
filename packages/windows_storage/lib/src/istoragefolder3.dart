// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'storagelibrarychangetracker.dart';

/// @nodoc
const IID_IStorageFolder3 = '{9f617899-bde1-4124-aeb3-b06ad96f98d4}';

class IStorageFolder3 extends IInspectable {
  IStorageFolder3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFolder3Vtbl>().ref;

  final _IStorageFolder3Vtbl _vtable;

  factory IStorageFolder3.from(IInspectable interface) =>
      interface.cast(IStorageFolder3.fromPtr, IID_IStorageFolder3);

  StorageLibraryChangeTracker? tryGetChangeTracker() {
    final result = calloc<COMObject>();

    final hr = _vtable.TryGetChangeTracker.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return StorageLibraryChangeTracker.fromPtr(result);
  }
}

final class _IStorageFolder3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      TryGetChangeTracker;
}
