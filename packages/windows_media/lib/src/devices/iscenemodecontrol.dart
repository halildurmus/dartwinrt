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

import 'capturescenemode.dart';

/// @nodoc
const IID_ISceneModeControl = '{d48e5af7-8d59-4854-8c62-12c70ba89b7c}';

class ISceneModeControl extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  ISceneModeControl.fromPtr(super.ptr);

  factory ISceneModeControl.from(IInspectable interface) =>
      interface.cast(ISceneModeControl.fromPtr, IID_ISceneModeControl);

  List<CaptureSceneMode>? get supportedModes {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
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

    return IVectorView<CaptureSceneMode>.fromPtr(value,
            iterableIid: '{16d26b98-2cbc-52f0-ab64-1723714418e9}',
            enumCreator: CaptureSceneMode.from)
        .toList();
  }

  CaptureSceneMode get value {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(7)
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

      return CaptureSceneMode.from(value.value);
    } finally {
      free(value);
    }
  }

  Future<void> setValueAsync(CaptureSceneMode sceneMode) {
    final asyncInfo = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 sceneMode,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int sceneMode,
                    Pointer<COMObject> asyncInfo)>()(
        lpVtbl, sceneMode.value, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}
