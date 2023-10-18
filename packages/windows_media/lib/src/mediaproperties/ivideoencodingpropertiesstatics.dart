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

import 'videoencodingproperties.dart';

/// @nodoc
const IID_IVideoEncodingPropertiesStatics =
    '{3ce14d44-1dc5-43db-9f38-ebebf90152cb}';

class IVideoEncodingPropertiesStatics extends IInspectable {
  IVideoEncodingPropertiesStatics.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IVideoEncodingPropertiesStaticsVtbl>().ref;

  final _IVideoEncodingPropertiesStaticsVtbl _vtable;

  factory IVideoEncodingPropertiesStatics.from(IInspectable interface) =>
      interface.cast(IVideoEncodingPropertiesStatics.fromPtr,
          IID_IVideoEncodingPropertiesStatics);

  VideoEncodingProperties? createH264() {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateH264.asFunction<
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

    return VideoEncodingProperties.fromPtr(value);
  }

  VideoEncodingProperties? createMpeg2() {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateMpeg2.asFunction<
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

    return VideoEncodingProperties.fromPtr(value);
  }

  VideoEncodingProperties? createUncompressed(
      String subtype, int width, int height) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateUncompressed.asFunction<
            int Function(VTablePointer lpVtbl, int subtype, int width,
                int height, Pointer<COMObject> value)>()(
        lpVtbl, subtype.toHString(), width, height, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return VideoEncodingProperties.fromPtr(value);
  }
}

final class _IVideoEncodingPropertiesStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      CreateH264;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      CreateMpeg2;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr subtype, Uint32 width,
              Uint32 height, Pointer<COMObject> value)>> CreateUncompressed;
}
