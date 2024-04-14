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
const IID_IAppInfo4 = '{2f34bdeb-1609-4554-9f33-12e1e803e0d4}';

class IAppInfo4 extends IInspectable {
  IAppInfo4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAppInfo4Vtbl>().ref;

  final _IAppInfo4Vtbl _vtable;

  factory IAppInfo4.from(IInspectable interface) =>
      interface.cast(IAppInfo4.fromPtr, IID_IAppInfo4);

  List<String> get supportedFileExtensions {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<IntPtr>>();

    try {
      final hr = _vtable.get_SupportedFileExtensions.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<IntPtr>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }
}

final class _IAppInfo4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<IntPtr>> value)>> get_SupportedFileExtensions;
}
