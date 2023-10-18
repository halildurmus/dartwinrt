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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';

/// @nodoc
const IID_IUriRuntimeClassWithAbsoluteCanonicalUri =
    '{758d9661-221c-480f-a339-50656673f46f}';

class IUriRuntimeClassWithAbsoluteCanonicalUri extends IInspectable {
  IUriRuntimeClassWithAbsoluteCanonicalUri.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IUriRuntimeClassWithAbsoluteCanonicalUriVtbl>()
            .ref;

  final _IUriRuntimeClassWithAbsoluteCanonicalUriVtbl _vtable;

  factory IUriRuntimeClassWithAbsoluteCanonicalUri.from(
          IInspectable interface) =>
      interface.cast(IUriRuntimeClassWithAbsoluteCanonicalUri.fromPtr,
          IID_IUriRuntimeClassWithAbsoluteCanonicalUri);

  String get absoluteCanonicalUri {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_AbsoluteCanonicalUri.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get displayIri {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayIri.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IUriRuntimeClassWithAbsoluteCanonicalUriVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AbsoluteCanonicalUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayIri;
}
