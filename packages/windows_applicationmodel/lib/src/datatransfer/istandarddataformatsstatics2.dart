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
const IID_IStandardDataFormatsStatics2 =
    '{42a254f4-9d76-42e8-861b-47c25dd0cf71}';

class IStandardDataFormatsStatics2 extends IInspectable {
  IStandardDataFormatsStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStandardDataFormatsStatics2Vtbl>().ref;

  final _IStandardDataFormatsStatics2Vtbl _vtable;

  factory IStandardDataFormatsStatics2.from(IInspectable interface) =>
      interface.cast(IStandardDataFormatsStatics2.fromPtr,
          IID_IStandardDataFormatsStatics2);

  String get webLink {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_WebLink.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get applicationLink {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ApplicationLink.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IStandardDataFormatsStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_WebLink;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ApplicationLink;
}
