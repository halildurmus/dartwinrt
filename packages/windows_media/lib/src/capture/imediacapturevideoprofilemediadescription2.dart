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

/// @nodoc
const IID_IMediaCaptureVideoProfileMediaDescription2 =
    '{c6a6ef13-322d-413a-b85a-68a88e02f4e9}';

class IMediaCaptureVideoProfileMediaDescription2 extends IInspectable {
  IMediaCaptureVideoProfileMediaDescription2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IMediaCaptureVideoProfileMediaDescription2Vtbl>()
            .ref;

  final _IMediaCaptureVideoProfileMediaDescription2Vtbl _vtable;

  factory IMediaCaptureVideoProfileMediaDescription2.from(
          IInspectable interface) =>
      interface.cast(IMediaCaptureVideoProfileMediaDescription2.fromPtr,
          IID_IMediaCaptureVideoProfileMediaDescription2);

  String get subtype {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Subtype.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  Map<Guid, Object?>? get properties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Properties.asFunction<
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

    return IMapView<Guid, Object?>.fromPtr(value,
            iterableIid: '{f3b20528-e3b3-5331-b2d0-0c2623aee785}')
        .toMap();
  }
}

final class _IMediaCaptureVideoProfileMediaDescription2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Subtype;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
}
