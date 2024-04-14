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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'notificationmirroring.dart';

/// @nodoc
const IID_IScheduledToastNotification3 =
    '{98429e8b-bd32-4a3b-9d15-22aea49462a1}';

class IScheduledToastNotification3 extends IInspectable {
  IScheduledToastNotification3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IScheduledToastNotification3Vtbl>().ref;

  final _IScheduledToastNotification3Vtbl _vtable;

  factory IScheduledToastNotification3.from(IInspectable interface) =>
      interface.cast(IScheduledToastNotification3.fromPtr,
          IID_IScheduledToastNotification3);

  NotificationMirroring get notificationMirroring {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NotificationMirroring.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return NotificationMirroring.from(value.value);
    } finally {
      free(value);
    }
  }

  set notificationMirroring(NotificationMirroring value) {
    final hr = _vtable.put_NotificationMirroring
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get remoteId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_RemoteId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set remoteId(String value) {
    final hr = _vtable.put_RemoteId
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IScheduledToastNotification3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NotificationMirroring;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_NotificationMirroring;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_RemoteId;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_RemoteId;
}
