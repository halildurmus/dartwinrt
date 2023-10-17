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

import 'toastnotificationhistory.dart';

/// @nodoc
const IID_IToastNotificationManagerStatics2 =
    '{7ab93c52-0e48-4750-ba9d-1a4113981847}';

class IToastNotificationManagerStatics2 extends IInspectable {
  IToastNotificationManagerStatics2.fromPtr(super.ptr);

  factory IToastNotificationManagerStatics2.from(IInspectable interface) =>
      interface.cast(IToastNotificationManagerStatics2.fromPtr,
          IID_IToastNotificationManagerStatics2);

  ToastNotificationHistory? get history {
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

    return ToastNotificationHistory.fromPtr(value);
  }
}
