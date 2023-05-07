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

import 'toastnotificationhistory.dart';

/// @nodoc
const IID_IToastNotificationManagerStatics2 =
    '{7ab93c52-0e48-4750-ba9d-1a4113981847}';

/// {@category interface}
class IToastNotificationManagerStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IToastNotificationManagerStatics2.fromPtr(super.ptr);

  factory IToastNotificationManagerStatics2.from(IInspectable interface) =>
      IToastNotificationManagerStatics2.fromPtr(
          interface.toInterface(IID_IToastNotificationManagerStatics2));

  ToastNotificationHistory? get history {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ToastNotificationHistory.fromPtr(retValuePtr);
  }
}
