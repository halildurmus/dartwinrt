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

import '../../devices/videodevicecontroller.dart';
import 'mediaframesourcegetpropertyresult.dart';
import 'mediaframesourcesetpropertystatus.dart';

/// @nodoc
const IID_IMediaFrameSourceController =
    '{6d076635-316d-4b8f-b7b6-eeb04a8c6525}';

class IMediaFrameSourceController extends IInspectable {
  IMediaFrameSourceController.fromPtr(super.ptr);

  factory IMediaFrameSourceController.from(IInspectable interface) =>
      interface.cast(
          IMediaFrameSourceController.fromPtr, IID_IMediaFrameSourceController);

  Future<MediaFrameSourceGetPropertyResult?> getPropertyAsync(
      String propertyId) {
    final value = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, IntPtr propertyId,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                int propertyId,
                Pointer<COMObject>
                    value)>()(lpVtbl, propertyId.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<MediaFrameSourceGetPropertyResult?>.fromPtr(value,
            creator: MediaFrameSourceGetPropertyResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<MediaFrameSourceSetPropertyStatus> setPropertyAsync(
      String propertyId, Object? propertyValue) {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr propertyId,
                            VTablePointer propertyValue,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int propertyId,
                    VTablePointer propertyValue, Pointer<COMObject> value)>()(
        lpVtbl,
        propertyId.toHString(),
        propertyValue?.boxValue().lpVtbl ?? nullptr,
        value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<MediaFrameSourceSetPropertyStatus>.fromPtr(value,
            enumCreator: MediaFrameSourceSetPropertyStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  VideoDeviceController? get videoDeviceController {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return VideoDeviceController.fromPtr(value);
  }
}
