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
const IID_IContentTypeProvider = '{97d098a5-3b99-4de9-88a5-e11d2f50c795}';

class IContentTypeProvider extends IInspectable {
  IContentTypeProvider.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IContentTypeProviderVtbl>().ref;

  final _IContentTypeProviderVtbl _vtable;

  factory IContentTypeProvider.from(IInspectable interface) =>
      interface.cast(IContentTypeProvider.fromPtr, IID_IContentTypeProvider);

  String get contentType {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ContentType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IContentTypeProviderVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ContentType;
}
