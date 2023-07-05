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
import 'package:windows_data/windows_data.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotificationFactory = '{04124b20-82c6-4229-b109-fd9ed4662b53}';

class IToastNotificationFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IToastNotificationFactory.fromPtr(super.ptr);

  factory IToastNotificationFactory.from(IInspectable interface) =>
      IToastNotificationFactory.fromPtr(
          interface.toInterface(IID_IToastNotificationFactory));

  ToastNotification createToastNotification(XmlDocument content) {
    final value = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer content,
                                Pointer<COMObject> value)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer content,
                        Pointer<COMObject> value)>()(
            ptr.ref.lpVtbl, content.ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return ToastNotification.fromPtr(value);
  }
}
