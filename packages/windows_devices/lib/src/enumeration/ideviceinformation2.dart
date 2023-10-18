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

import 'deviceinformationkind.dart';
import 'deviceinformationpairing.dart';

/// @nodoc
const IID_IDeviceInformation2 = '{f156a638-7997-48d9-a10c-269d46533f48}';

class IDeviceInformation2 extends IInspectable {
  IDeviceInformation2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDeviceInformation2Vtbl>().ref;

  final _IDeviceInformation2Vtbl _vtable;

  factory IDeviceInformation2.from(IInspectable interface) =>
      interface.cast(IDeviceInformation2.fromPtr, IID_IDeviceInformation2);

  DeviceInformationKind get kind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Kind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DeviceInformationKind.from(value.value);
    } finally {
      free(value);
    }
  }

  DeviceInformationPairing? get pairing {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Pairing.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return DeviceInformationPairing.fromPtr(value);
  }
}

final class _IDeviceInformation2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Kind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Pairing;
}
