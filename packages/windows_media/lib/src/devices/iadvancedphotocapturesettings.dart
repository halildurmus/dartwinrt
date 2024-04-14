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

import 'advancedphotomode.dart';

/// @nodoc
const IID_IAdvancedPhotoCaptureSettings =
    '{08f3863a-0018-445b-93d2-646d1c5ed05c}';

class IAdvancedPhotoCaptureSettings extends IInspectable {
  IAdvancedPhotoCaptureSettings.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAdvancedPhotoCaptureSettingsVtbl>().ref;

  final _IAdvancedPhotoCaptureSettingsVtbl _vtable;

  factory IAdvancedPhotoCaptureSettings.from(IInspectable interface) =>
      interface.cast(IAdvancedPhotoCaptureSettings.fromPtr,
          IID_IAdvancedPhotoCaptureSettings);

  AdvancedPhotoMode get mode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Mode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return AdvancedPhotoMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set mode(AdvancedPhotoMode value) {
    final hr = _vtable.put_Mode
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IAdvancedPhotoCaptureSettingsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Mode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Mode;
}
