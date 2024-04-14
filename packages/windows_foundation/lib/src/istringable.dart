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
const IID_IStringable = '{96369f54-8eb6-48f0-abce-c1b211e627c3}';

/// Provides a way to represent the current object as a string.
class IStringable extends IInspectable {
  IStringable.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStringableVtbl>().ref;

  final _IStringableVtbl _vtable;

  factory IStringable.from(IInspectable interface) =>
      interface.cast(IStringable.fromPtr, IID_IStringable);

  @override
  String toString() {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.ToString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IStringableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      ToString;
}
