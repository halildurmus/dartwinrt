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

import 'ienclosurelocation.dart';
import 'panel.dart';

/// @nodoc
const IID_IEnclosureLocation2 = '{2885995b-e07d-485d-8a9e-bdf29aef4f66}';

class IEnclosureLocation2 extends IInspectable implements IEnclosureLocation {
  IEnclosureLocation2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IEnclosureLocation2Vtbl>().ref;

  final _IEnclosureLocation2Vtbl _vtable;

  factory IEnclosureLocation2.from(IInspectable interface) =>
      interface.cast(IEnclosureLocation2.fromPtr, IID_IEnclosureLocation2);

  int get rotationAngleInDegreesClockwise {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_RotationAngleInDegreesClockwise.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  late final _iEnclosureLocation = IEnclosureLocation.from(this);

  @override
  bool get inDock => _iEnclosureLocation.inDock;

  @override
  bool get inLid => _iEnclosureLocation.inLid;

  @override
  Panel get panel => _iEnclosureLocation.panel;
}

final class _IEnclosureLocation2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_RotationAngleInDegreesClockwise;
}
