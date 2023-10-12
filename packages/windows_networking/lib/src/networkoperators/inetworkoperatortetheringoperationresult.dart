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

import 'tetheringoperationstatus.dart';

/// @nodoc
const IID_INetworkOperatorTetheringOperationResult =
    '{ebd203a1-01ba-476d-b4b3-bf3d12c8f80c}';

class INetworkOperatorTetheringOperationResult extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  INetworkOperatorTetheringOperationResult.fromPtr(super.ptr);

  factory INetworkOperatorTetheringOperationResult.from(
          IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringOperationResult.fromPtr,
          IID_INetworkOperatorTetheringOperationResult);

  TetheringOperationStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return TetheringOperationStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  String get additionalErrorMessage {
    final value = calloc<IntPtr>();

    try {
      final hr = vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}
