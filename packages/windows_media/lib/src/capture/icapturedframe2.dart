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
import 'package:windows_graphics/windows_graphics.dart';

import 'capturedframecontrolvalues.dart';

/// @nodoc
const IID_ICapturedFrame2 = '{543fa6d1-bd78-4866-adda-24314bc65dea}';

class ICapturedFrame2 extends IInspectable {
  ICapturedFrame2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICapturedFrame2Vtbl>().ref;

  final _ICapturedFrame2Vtbl _vtable;

  factory ICapturedFrame2.from(IInspectable interface) =>
      interface.cast(ICapturedFrame2.fromPtr, IID_ICapturedFrame2);

  CapturedFrameControlValues? get controlValues {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ControlValues.asFunction<
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

    return CapturedFrameControlValues.fromPtr(value);
  }

  BitmapPropertySet? get bitmapProperties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_BitmapProperties.asFunction<
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

    return BitmapPropertySet.fromPtr(value);
  }
}

final class _ICapturedFrame2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ControlValues;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_BitmapProperties;
}
