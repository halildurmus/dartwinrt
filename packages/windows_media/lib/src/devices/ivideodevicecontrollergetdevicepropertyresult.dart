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

import 'videodevicecontrollergetdevicepropertystatus.dart';

/// @nodoc
const IID_IVideoDeviceControllerGetDevicePropertyResult =
    '{c5d88395-6ed5-4790-8b5d-0ef13935d0f8}';

class IVideoDeviceControllerGetDevicePropertyResult extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IVideoDeviceControllerGetDevicePropertyResult.fromPtr(super.ptr);

  factory IVideoDeviceControllerGetDevicePropertyResult.from(
          IInspectable interface) =>
      interface.cast(IVideoDeviceControllerGetDevicePropertyResult.fromPtr,
          IID_IVideoDeviceControllerGetDevicePropertyResult);

  VideoDeviceControllerGetDevicePropertyStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return VideoDeviceControllerGetDevicePropertyStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  Object? get value {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
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

    return IPropertyValue.fromPtr(value).value;
  }
}
