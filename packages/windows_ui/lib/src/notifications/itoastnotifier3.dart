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

import 'toastnotifier.dart';

/// @nodoc
const IID_IToastNotifier3 = '{ae75a04a-3b0c-51ad-b7e8-b08ab6052549}';

class IToastNotifier3 extends IInspectable {
  IToastNotifier3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IToastNotifier3Vtbl>().ref;

  final _IToastNotifier3Vtbl _vtable;

  factory IToastNotifier3.from(IInspectable interface) =>
      interface.cast(IToastNotifier3.fromPtr, IID_IToastNotifier3);

  int add_ScheduledToastNotificationShowing(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_ScheduledToastNotificationShowing.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_ScheduledToastNotificationShowing(int token) {
    final hr = _vtable.remove_ScheduledToastNotificationShowing
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IToastNotifier3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_ScheduledToastNotificationShowing;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_ScheduledToastNotificationShowing;
}
