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

/// @nodoc
const IID_IBitmapCodecInformation = '{400caaf2-c4b0-4392-a3b0-6f6f9ba95cb4}';

class IBitmapCodecInformation extends IInspectable {
  IBitmapCodecInformation.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBitmapCodecInformationVtbl>().ref;

  final _IBitmapCodecInformationVtbl _vtable;

  factory IBitmapCodecInformation.from(IInspectable interface) => interface
      .cast(IBitmapCodecInformation.fromPtr, IID_IBitmapCodecInformation);

  Guid get codecId {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_CodecId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  List<String>? get fileExtensions {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FileExtensions.asFunction<
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

    return IVectorView<String>.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')
        .toList();
  }

  String get friendlyName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_FriendlyName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  List<String>? get mimeTypes {
    final value = calloc<COMObject>();

    final hr = _vtable.get_MimeTypes.asFunction<
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

    return IVectorView<String>.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')
        .toList();
  }
}

final class _IBitmapCodecInformationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_CodecId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FileExtensions;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_FriendlyName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_MimeTypes;
}
