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

import 'mediapropertyset.dart';

/// @nodoc
const IID_IMediaEncodingProperties = '{b4002af6-acd4-4e5a-a24b-5d7498a8b8c4}';

/// Describes the format of a media stream or media container.
class IMediaEncodingProperties extends IInspectable {
  IMediaEncodingProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaEncodingPropertiesVtbl>().ref;

  final _IMediaEncodingPropertiesVtbl _vtable;

  factory IMediaEncodingProperties.from(IInspectable interface) => interface
      .cast(IMediaEncodingProperties.fromPtr, IID_IMediaEncodingProperties);

  MediaPropertySet? get properties {
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

    return MediaPropertySet.fromPtr(value);
  }

  String get type {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set subtype(String value) {
    final hr = _vtable.put_Subtype
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

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
}

final class _IMediaEncodingPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Type;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Subtype;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Subtype;
}
