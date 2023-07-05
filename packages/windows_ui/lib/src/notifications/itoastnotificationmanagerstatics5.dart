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

import 'toastnotificationmanagerforuser.dart';

/// @nodoc
const IID_IToastNotificationManagerStatics5 =
    '{d6f5f569-d40d-407c-8989-88cab42cfd14}';

class IToastNotificationManagerStatics5 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IToastNotificationManagerStatics5.fromPtr(super.ptr);

  factory IToastNotificationManagerStatics5.from(IInspectable interface) =>
      IToastNotificationManagerStatics5.fromPtr(
          interface.toInterface(IID_IToastNotificationManagerStatics5));

  ToastNotificationManagerForUser? getDefault() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return ToastNotificationManagerForUser.fromPtr(result);
  }
}
