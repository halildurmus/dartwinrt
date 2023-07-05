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

import 'toastnotifier.dart';
import 'toasttemplatetype.dart';

/// @nodoc
const IID_IToastNotificationManagerStatics =
    '{50ac103f-d235-4598-bbef-98fe4d1a3ad4}';

class IToastNotificationManagerStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IToastNotificationManagerStatics.fromPtr(super.ptr);

  factory IToastNotificationManagerStatics.from(IInspectable interface) =>
      IToastNotificationManagerStatics.fromPtr(
          interface.toInterface(IID_IToastNotificationManagerStatics));

  ToastNotifier? createToastNotifier() {
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

    return ToastNotifier.fromPtr(result);
  }

  ToastNotifier? createToastNotifierWithId(String applicationId) {
    final result = calloc<COMObject>();
    final applicationIdHString = applicationId.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr applicationId,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int applicationId,
                        Pointer<COMObject> result)>()(
            ptr.ref.lpVtbl, applicationIdHString, result);

    WindowsDeleteString(applicationIdHString);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return ToastNotifier.fromPtr(result);
  }

  XmlDocument? getTemplateContent(ToastTemplateType type) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 type,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int type,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, type.value, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return XmlDocument.fromPtr(result);
  }
}
