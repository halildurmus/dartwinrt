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
const IID_IWebProviderError = '{db191bb1-50c5-4809-8dca-09c99410245c}';

class IWebProviderError extends IInspectable {
  IWebProviderError.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebProviderErrorVtbl>().ref;

  final _IWebProviderErrorVtbl _vtable;

  factory IWebProviderError.from(IInspectable interface) =>
      interface.cast(IWebProviderError.fromPtr, IID_IWebProviderError);

  int get errorCode {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_ErrorCode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String get errorMessage {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ErrorMessage.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  IMap<String, String>? get properties {
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

    return IMap.fromPtr(value,
        iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}');
  }
}

final class _IWebProviderErrorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_ErrorCode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ErrorMessage;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
}
