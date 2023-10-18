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
const IID_IPackageIdWithMetadata = '{40577a7c-0c9e-443d-9074-855f5ce0a08d}';

class IPackageIdWithMetadata extends IInspectable {
  IPackageIdWithMetadata.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackageIdWithMetadataVtbl>().ref;

  final _IPackageIdWithMetadataVtbl _vtable;

  factory IPackageIdWithMetadata.from(IInspectable interface) => interface.cast(
      IPackageIdWithMetadata.fromPtr, IID_IPackageIdWithMetadata);

  String get productId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ProductId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get author {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Author.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IPackageIdWithMetadataVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ProductId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Author;
}
