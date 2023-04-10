// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ienclosurelocation.dart';
import 'panel.dart';

/// @nodoc
const IID_IEnclosureLocation2 = '{2885995b-e07d-485d-8a9e-bdf29aef4f66}';

/// {@category interface}
class IEnclosureLocation2 extends IInspectable implements IEnclosureLocation {
  // vtable begins at 6, is 1 entries long.
  IEnclosureLocation2.fromPtr(super.ptr);

  factory IEnclosureLocation2.from(IInspectable interface) =>
      IEnclosureLocation2.fromPtr(
          interface.toInterface(IID_IEnclosureLocation2));

  int get rotationAngleInDegreesClockwise {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
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
