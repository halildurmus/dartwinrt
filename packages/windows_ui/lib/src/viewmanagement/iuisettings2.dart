// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'uisettings.dart';

/// @nodoc
const IID_IUISettings2 = '{bad82401-2721-44f9-bb91-2bb228be442f}';

class IUISettings2 extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IUISettings2.fromPtr(super.ptr);

  factory IUISettings2.from(IInspectable interface) =>
      IUISettings2.fromPtr(interface.toInterface(IID_IUISettings2));

  double get textScaleFactor {
    final value = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Double> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Double> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int add_TextScaleFactorChanged(Pointer<COMObject> handler) {
    final cookie = calloc<IntPtr>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(7)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer handler,
                                  Pointer<IntPtr> cookie)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, VTablePointer handler,
                          Pointer<IntPtr> cookie)>()(
              ptr.ref.lpVtbl, handler.ref.lpVtbl, cookie);

      if (FAILED(hr)) throw WindowsException(hr);

      return cookie.value;
    } finally {
      free(cookie);
    }
  }

  void remove_TextScaleFactorChanged(int cookie) {
    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr cookie)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int cookie)>()(
            ptr.ref.lpVtbl, cookie);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
