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
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_ui/windows_ui.dart';

/// @nodoc
const IID_IMediaFrameSourceInfo3 = '{ca824ab6-66ea-5885-a2b6-26c0eeec3c7b}';

class IMediaFrameSourceInfo3 extends IInspectable {
  IMediaFrameSourceInfo3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameSourceInfo3Vtbl>().ref;

  final _IMediaFrameSourceInfo3Vtbl _vtable;

  factory IMediaFrameSourceInfo3.from(IInspectable interface) => interface.cast(
      IMediaFrameSourceInfo3.fromPtr, IID_IMediaFrameSourceInfo3);

  Panel getRelativePanel(DisplayRegion? displayRegion) {
    final result = calloc<Int32>();

    try {
      final hr = _vtable.GetRelativePanel.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer displayRegion,
              Pointer<Int32> result)>()(lpVtbl, displayRegion.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return Panel.from(result.value);
    } finally {
      free(result);
    }
  }
}

final class _IMediaFrameSourceInfo3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer displayRegion,
              Pointer<Int32> result)>> GetRelativePanel;
}
