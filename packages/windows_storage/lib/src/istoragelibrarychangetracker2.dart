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

import 'storagelibrarychangetrackeroptions.dart';

/// @nodoc
const IID_IStorageLibraryChangeTracker2 =
    '{cd051c3b-0f9f-42f9-8fb3-158d82e13821}';

/// {@category interface}
class IStorageLibraryChangeTracker2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IStorageLibraryChangeTracker2.fromPtr(super.ptr);

  factory IStorageLibraryChangeTracker2.from(IInspectable interface) =>
      IStorageLibraryChangeTracker2.fromPtr(
          interface.toInterface(IID_IStorageLibraryChangeTracker2));

  void enableWithOptions(StorageLibraryChangeTrackerOptions? options) {
    final optionsPtr = options == null ? nullptr : options.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL options)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, LPVTBL options)>()(
        ptr.ref.lpVtbl, optionsPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void disable() {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL lpVtbl)>>>()
        .value
        .asFunction<int Function(LPVTBL lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
