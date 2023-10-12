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

import '../core/timedmetadatastreamdescriptor.dart';

/// @nodoc
const IID_IMediaEncodingProfile3 = '{ba6ebe88-7570-4e69-accf-5611ad015f88}';

class IMediaEncodingProfile3 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IMediaEncodingProfile3.fromPtr(super.ptr);

  factory IMediaEncodingProfile3.from(IInspectable interface) => interface.cast(
      IMediaEncodingProfile3.fromPtr, IID_IMediaEncodingProfile3);

  void setTimedMetadataTracks(
      IIterable<TimedMetadataStreamDescriptor?>? value) {
    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IVector<TimedMetadataStreamDescriptor?> getTimedMetadataTracks() {
    final result = calloc<COMObject>();

    final hr = vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVector.fromPtr(result,
        iterableIid: '{f3d07841-3852-509d-a12b-a9f2ac89da93}',
        creator: TimedMetadataStreamDescriptor.fromPtr);
  }
}
