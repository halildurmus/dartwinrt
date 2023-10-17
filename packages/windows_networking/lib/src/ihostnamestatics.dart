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
const IID_IHostNameStatics = '{f68cd4bf-a388-4e8b-91ea-54dd6dd901c0}';

class IHostNameStatics extends IInspectable {
  IHostNameStatics.fromPtr(super.ptr);

  factory IHostNameStatics.from(IInspectable interface) =>
      interface.cast(IHostNameStatics.fromPtr, IID_IHostNameStatics);

  int compare(String value1, String value2) {
    final result = calloc<Int32>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr value1,
                              IntPtr value2, Pointer<Int32> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int value1, int value2,
                      Pointer<Int32> result)>()(
          lpVtbl, value1.toHString(), value2.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}
