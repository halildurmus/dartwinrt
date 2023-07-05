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

import 'webaccountmonitor.dart';

/// @nodoc
const IID_IWebAccountMonitor2 = '{a7adc1f8-24b8-4f01-9ae5-24545e71233a}';

class IWebAccountMonitor2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IWebAccountMonitor2.fromPtr(super.ptr);

  factory IWebAccountMonitor2.from(IInspectable interface) =>
      IWebAccountMonitor2.fromPtr(
          interface.toInterface(IID_IWebAccountMonitor2));

  int add_AccountPictureUpdated(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              VTablePointer handler, Pointer<IntPtr> token)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer handler,
                      Pointer<IntPtr> token)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throw WindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_AccountPictureUpdated(int token) {
    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
