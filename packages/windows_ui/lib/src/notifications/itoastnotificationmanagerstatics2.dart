// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

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
  IToastNotificationManagerStatics2.fromRawPointer(super.ptr);

  factory IToastNotificationManagerStatics2.from(IInspectable interface) =>
      IToastNotificationManagerStatics2.fromRawPointer(
          interface.toInterface(IID_IToastNotificationManagerStatics2));

  ToastNotificationHistory? get history {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ToastNotificationHistory.fromRawPointer(retValuePtr);
  }
}
