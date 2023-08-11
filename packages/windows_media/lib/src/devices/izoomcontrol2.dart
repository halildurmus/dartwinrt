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

import 'zoomsettings.dart';
import 'zoomtransitionmode.dart';

/// @nodoc
const IID_IZoomControl2 = '{69843db0-2e99-4641-8529-184f319d1671}';

class IZoomControl2 extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IZoomControl2.fromPtr(super.ptr);

  factory IZoomControl2.from(IInspectable interface) =>
      interface.cast(IZoomControl2.fromPtr, IID_IZoomControl2);

  List<ZoomTransitionMode>? get supportedModes {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<ZoomTransitionMode>.fromPtr(value,
            iterableIid: '{db656915-8fac-5fb2-98e0-0e97421656c5}',
            enumCreator: ZoomTransitionMode.from)
        .toList();
  }

  ZoomTransitionMode get mode {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ZoomTransitionMode.from(value.value);
    } finally {
      free(value);
    }
  }

  void configure(ZoomSettings? settings) {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer settings)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer settings)>()(
        ptr.ref.lpVtbl, settings.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
