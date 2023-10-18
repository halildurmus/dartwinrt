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
const IID_IWebAccountProvider = '{29dcc8c3-7ab9-4a7c-a336-b942f9dbf7c7}';

class IWebAccountProvider extends IInspectable {
  IWebAccountProvider.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebAccountProviderVtbl>().ref;

  final _IWebAccountProviderVtbl _vtable;

  factory IWebAccountProvider.from(IInspectable interface) =>
      interface.cast(IWebAccountProvider.fromPtr, IID_IWebAccountProvider);

  String get id {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Id.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get displayName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  @Deprecated(
      "IconUri may be altered or unavailable for releases after Windows 8.2. Instead, use Icon.")
  Uri? get iconUri {
    final value = calloc<COMObject>();

    final hr = _vtable.get_IconUri.asFunction<
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

    return value.toWinRTUri().toDartUri();
  }
}

final class _IWebAccountProviderVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Id;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_IconUri;
}
