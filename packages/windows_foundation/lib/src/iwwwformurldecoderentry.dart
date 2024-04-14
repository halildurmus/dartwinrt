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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';

/// @nodoc
const IID_IWwwFormUrlDecoderEntry = '{125e7431-f678-4e8e-b670-20a9b06c512d}';

class IWwwFormUrlDecoderEntry extends IInspectable {
  IWwwFormUrlDecoderEntry.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWwwFormUrlDecoderEntryVtbl>().ref;

  final _IWwwFormUrlDecoderEntryVtbl _vtable;

  factory IWwwFormUrlDecoderEntry.from(IInspectable interface) => interface
      .cast(IWwwFormUrlDecoderEntry.fromPtr, IID_IWwwFormUrlDecoderEntry);

  String get name {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Name.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get value {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Value.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IWwwFormUrlDecoderEntryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Name;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Value;
}
