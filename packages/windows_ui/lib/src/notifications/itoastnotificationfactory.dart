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

import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotificationFactory = '{04124b20-82c6-4229-b109-fd9ed4662b53}';

class IToastNotificationFactory extends IInspectable {
  IToastNotificationFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IToastNotificationFactoryVtbl>().ref;

  final _IToastNotificationFactoryVtbl _vtable;

  factory IToastNotificationFactory.from(IInspectable interface) => interface
      .cast(IToastNotificationFactory.fromPtr, IID_IToastNotificationFactory);

  ToastNotification createToastNotification(XmlDocument? content) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateToastNotification.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer content,
            Pointer<COMObject> value)>()(lpVtbl, content.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return ToastNotification.fromPtr(value);
  }
}

final class _IToastNotificationFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer content,
              Pointer<COMObject> value)>> CreateToastNotification;
}
