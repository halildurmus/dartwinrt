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

import 'tetheringoperationstatus.dart';

/// @nodoc
const IID_INetworkOperatorTetheringOperationResult =
    '{ebd203a1-01ba-476d-b4b3-bf3d12c8f80c}';

class INetworkOperatorTetheringOperationResult extends IInspectable {
  INetworkOperatorTetheringOperationResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_INetworkOperatorTetheringOperationResultVtbl>()
            .ref;

  final _INetworkOperatorTetheringOperationResultVtbl _vtable;

  factory INetworkOperatorTetheringOperationResult.from(
          IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringOperationResult.fromPtr,
          IID_INetworkOperatorTetheringOperationResult);

  TetheringOperationStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
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
      final hr = _vtable.get_AdditionalErrorMessage.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _INetworkOperatorTetheringOperationResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Status;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AdditionalErrorMessage;
}
