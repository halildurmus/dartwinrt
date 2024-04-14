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

/// @nodoc
const IID_IScheduledToastNotification4 =
    '{1d4761fd-bdef-4e4a-96be-0101369b58d2}';

class IScheduledToastNotification4 extends IInspectable {
  IScheduledToastNotification4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IScheduledToastNotification4Vtbl>().ref;

  final _IScheduledToastNotification4Vtbl _vtable;

  factory IScheduledToastNotification4.from(IInspectable interface) =>
      interface.cast(IScheduledToastNotification4.fromPtr,
          IID_IScheduledToastNotification4);

  DateTime? get expirationTime {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ExpirationTime.asFunction<
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

    return IReference<DateTime?>.fromPtr(value,
            referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}')
        .value;
  }

  set expirationTime(DateTime? value) {
    final hr = _vtable.put_ExpirationTime.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IScheduledToastNotification4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ExpirationTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_ExpirationTime;
}
