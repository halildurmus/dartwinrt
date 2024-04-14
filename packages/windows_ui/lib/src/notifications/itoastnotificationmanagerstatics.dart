// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
import 'package:windows_data/windows_data.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'toastnotifier.dart';
import 'toasttemplatetype.dart';

/// @nodoc
const IID_IToastNotificationManagerStatics =
    '{50ac103f-d235-4598-bbef-98fe4d1a3ad4}';

class IToastNotificationManagerStatics extends IInspectable {
  IToastNotificationManagerStatics.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IToastNotificationManagerStaticsVtbl>().ref;

  final _IToastNotificationManagerStaticsVtbl _vtable;

  factory IToastNotificationManagerStatics.from(IInspectable interface) =>
      interface.cast(IToastNotificationManagerStatics.fromPtr,
          IID_IToastNotificationManagerStatics);

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

  XmlDocument? getTemplateContent(ToastTemplateType type) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetTemplateContent.asFunction<
        int Function(VTablePointer lpVtbl, int type,
            Pointer<COMObject> result)>()(lpVtbl, type.value, result);

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

final class _IToastNotificationManagerStaticsVtbl extends Struct {
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
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 type, Pointer<COMObject> result)>>
      GetTemplateContent;
}
