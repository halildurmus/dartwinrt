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

import 'devicepairingprotectionlevel.dart';
import 'devicepairingresultstatus.dart';

/// @nodoc
const IID_IDevicePairingResult = '{072b02bf-dd95-4025-9b37-de51adba37b7}';

class IDevicePairingResult extends IInspectable {
  IDevicePairingResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDevicePairingResultVtbl>().ref;

  final _IDevicePairingResultVtbl _vtable;

  factory IDevicePairingResult.from(IInspectable interface) =>
      interface.cast(IDevicePairingResult.fromPtr, IID_IDevicePairingResult);

  DevicePairingResultStatus get status {
    final status = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> status)>()(lpVtbl, status);

      if (FAILED(hr)) throwWindowsException(hr);

      return DevicePairingResultStatus.from(status.value);
    } finally {
      free(status);
    }
  }

  DevicePairingProtectionLevel get protectionLevelUsed {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ProtectionLevelUsed.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DevicePairingProtectionLevel.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IDevicePairingResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> status)>>
      get_Status;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ProtectionLevelUsed;
}
