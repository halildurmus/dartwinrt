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
import 'package:windows_system/windows_system.dart';

import 'toastnotificationhistory.dart';
import 'toastnotifier.dart';

/// @nodoc
const IID_IToastNotificationManagerForUser =
    '{79ab57f6-43fe-487b-8a7f-99567200ae94}';

class IToastNotificationManagerForUser extends IInspectable {
  IToastNotificationManagerForUser.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IToastNotificationManagerForUserVtbl>().ref;

  final _IToastNotificationManagerForUserVtbl _vtable;

  factory IToastNotificationManagerForUser.from(IInspectable interface) =>
      interface.cast(IToastNotificationManagerForUser.fromPtr,
          IID_IToastNotificationManagerForUser);

  ToastNotifier? createToastNotifier() {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateToastNotifier.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

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

    final hr = _vtable.CreateToastNotifierWithId.asFunction<
            int Function(VTablePointer lpVtbl, int applicationId,
                Pointer<COMObject> result)>()(
        lpVtbl, applicationId.toHString(), result);

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

  ToastNotificationHistory? get history {
    final value = calloc<COMObject>();

    final hr = _vtable.get_History.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

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

  User? get user {
    final value = calloc<COMObject>();

    final hr = _vtable.get_User.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return User.fromPtr(value);
  }
}

final class _IToastNotificationManagerForUserVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      CreateToastNotifier;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr applicationId,
              Pointer<COMObject> result)>> CreateToastNotifierWithId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_History;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_User;
}
