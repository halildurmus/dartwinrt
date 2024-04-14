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

import 'imediaencodingproperties.dart';
import 'mediapropertyset.dart';

/// @nodoc
const IID_IImageEncodingProperties = '{78625635-f331-4189-b1c3-b48d5ae034f1}';

class IImageEncodingProperties extends IInspectable
    implements IMediaEncodingProperties {
  IImageEncodingProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IImageEncodingPropertiesVtbl>().ref;

  final _IImageEncodingPropertiesVtbl _vtable;

  factory IImageEncodingProperties.from(IInspectable interface) => interface
      .cast(IImageEncodingProperties.fromPtr, IID_IImageEncodingProperties);

  set width(int value) {
    final hr = _vtable.put_Width
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get width {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Width.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set height(int value) {
    final hr = _vtable.put_Height
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get height {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Height.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  late final _iMediaEncodingProperties = IMediaEncodingProperties.from(this);

  @override
  MediaPropertySet? get properties => _iMediaEncodingProperties.properties;

  @override
  String get type => _iMediaEncodingProperties.type;

  @override
  set subtype(String value) => _iMediaEncodingProperties.subtype = value;

  @override
  String get subtype => _iMediaEncodingProperties.subtype;
}

final class _IImageEncodingPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_Width;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Width;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_Height;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Height;
}
