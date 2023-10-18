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

import 'panel.dart';

/// @nodoc
const IID_IEnclosureLocation = '{42340a27-5810-459c-aabb-c65e1f813ecf}';

class IEnclosureLocation extends IInspectable {
  IEnclosureLocation.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IEnclosureLocationVtbl>().ref;

  final _IEnclosureLocationVtbl _vtable;

  factory IEnclosureLocation.from(IInspectable interface) =>
      interface.cast(IEnclosureLocation.fromPtr, IID_IEnclosureLocation);

  bool get inDock {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_InDock.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get inLid {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_InLid.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Panel get panel {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Panel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return Panel.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IEnclosureLocationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_InDock;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_InLid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Panel;
}
