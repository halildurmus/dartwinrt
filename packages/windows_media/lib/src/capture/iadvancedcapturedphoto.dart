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

import '../devices/advancedphotomode.dart';
import 'capturedframe.dart';

/// @nodoc
const IID_IAdvancedCapturedPhoto = '{f072728b-b292-4491-9d41-99807a550bbf}';

class IAdvancedCapturedPhoto extends IInspectable {
  IAdvancedCapturedPhoto.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAdvancedCapturedPhotoVtbl>().ref;

  final _IAdvancedCapturedPhotoVtbl _vtable;

  factory IAdvancedCapturedPhoto.from(IInspectable interface) => interface.cast(
      IAdvancedCapturedPhoto.fromPtr, IID_IAdvancedCapturedPhoto);

  CapturedFrame? get frame {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Frame.asFunction<
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

    return CapturedFrame.fromPtr(value);
  }

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

  Object? get context {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Context.asFunction<
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

    return IPropertyValue.fromPtr(value).value;
  }
}

final class _IAdvancedCapturedPhotoVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Frame;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Mode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Context;
}
