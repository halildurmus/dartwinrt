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
const IID_ICharacterGrouping = '{fae761bb-805d-4bb0-95bb-c1f7c3e8eb8e}';

class ICharacterGrouping extends IInspectable {
  ICharacterGrouping.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICharacterGroupingVtbl>().ref;

  final _ICharacterGroupingVtbl _vtable;

  factory ICharacterGrouping.from(IInspectable interface) =>
      interface.cast(ICharacterGrouping.fromPtr, IID_ICharacterGrouping);

  String get first {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_First.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get label {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Label.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _ICharacterGroupingVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_First;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Label;
}
