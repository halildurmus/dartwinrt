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
const IID_IXmlNodeSerializer = '{5cc5b382-e6dd-4991-abef-06d8d2e7bd0c}';

class IXmlNodeSerializer extends IInspectable {
  IXmlNodeSerializer.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlNodeSerializerVtbl>().ref;

  final _IXmlNodeSerializerVtbl _vtable;

  factory IXmlNodeSerializer.from(IInspectable interface) =>
      interface.cast(IXmlNodeSerializer.fromPtr, IID_IXmlNodeSerializer);

  String getXml() {
    final outerXml = calloc<IntPtr>();

    try {
      final hr = _vtable.GetXml.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<IntPtr> outerXml)>()(
          lpVtbl, outerXml);

      if (FAILED(hr)) throwWindowsException(hr);

      return outerXml.toDartString();
    } finally {
      free(outerXml);
    }
  }

  String get innerText {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_InnerText.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set innerText(String value) {
    final hr = _vtable.put_InnerText
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IXmlNodeSerializerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> outerXml)>>
      GetXml;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_InnerText;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_InnerText;
}
