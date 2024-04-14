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
import 'package:windows_ui/windows_ui.dart';

/// @nodoc
const IID_ILauncherViewOptions = '{8a9b29f1-7ca7-49de-9bd3-3c5b7184f616}';

class ILauncherViewOptions extends IInspectable {
  ILauncherViewOptions.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherViewOptionsVtbl>().ref;

  final _ILauncherViewOptionsVtbl _vtable;

  factory ILauncherViewOptions.from(IInspectable interface) =>
      interface.cast(ILauncherViewOptions.fromPtr, IID_ILauncherViewOptions);

  ViewSizePreference get desiredRemainingView {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_DesiredRemainingView.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ViewSizePreference.from(value.value);
    } finally {
      free(value);
    }
  }

  set desiredRemainingView(ViewSizePreference value) {
    final hr = _vtable.put_DesiredRemainingView
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ILauncherViewOptionsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_DesiredRemainingView;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_DesiredRemainingView;
}
