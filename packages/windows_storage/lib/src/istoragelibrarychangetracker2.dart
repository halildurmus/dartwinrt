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

import 'storagelibrarychangetrackeroptions.dart';

/// @nodoc
const IID_IStorageLibraryChangeTracker2 =
    '{cd051c3b-0f9f-42f9-8fb3-158d82e13821}';

class IStorageLibraryChangeTracker2 extends IInspectable {
  IStorageLibraryChangeTracker2.fromPtr(super.ptr);

  factory IStorageLibraryChangeTracker2.from(IInspectable interface) =>
      interface.cast(IStorageLibraryChangeTracker2.fromPtr,
          IID_IStorageLibraryChangeTracker2);

  void enableWithOptions(StorageLibraryChangeTrackerOptions? options) {
    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer options)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer options)>()(
        lpVtbl, options.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void disable() {
    final hr = vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
