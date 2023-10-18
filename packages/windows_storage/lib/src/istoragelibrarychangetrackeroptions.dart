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

/// @nodoc
const IID_IStorageLibraryChangeTrackerOptions =
    '{bb52bcd4-1a6d-59c0-ad2a-823a20532483}';

class IStorageLibraryChangeTrackerOptions extends IInspectable {
  IStorageLibraryChangeTrackerOptions.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IStorageLibraryChangeTrackerOptionsVtbl>().ref;

  final _IStorageLibraryChangeTrackerOptionsVtbl _vtable;

  factory IStorageLibraryChangeTrackerOptions.from(IInspectable interface) =>
      interface.cast(IStorageLibraryChangeTrackerOptions.fromPtr,
          IID_IStorageLibraryChangeTrackerOptions);

  bool get trackChangeDetails {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_TrackChangeDetails.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set trackChangeDetails(bool value) {
    final hr = _vtable.put_TrackChangeDetails
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IStorageLibraryChangeTrackerOptionsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_TrackChangeDetails;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_TrackChangeDetails;
}
