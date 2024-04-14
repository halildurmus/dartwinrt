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

import 'lanidentifierdata.dart';

/// @nodoc
const IID_ILanIdentifier = '{48aa53aa-1108-4546-a6cb-9a74da4b7ba0}';

class ILanIdentifier extends IInspectable {
  ILanIdentifier.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILanIdentifierVtbl>().ref;

  final _ILanIdentifierVtbl _vtable;

  factory ILanIdentifier.from(IInspectable interface) =>
      interface.cast(ILanIdentifier.fromPtr, IID_ILanIdentifier);

  LanIdentifierData? get infrastructureId {
    final value = calloc<COMObject>();

    final hr = _vtable.get_InfrastructureId.asFunction<
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

    return LanIdentifierData.fromPtr(value);
  }

  LanIdentifierData? get portId {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PortId.asFunction<
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

    return LanIdentifierData.fromPtr(value);
  }

  Guid get networkAdapterId {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_NetworkAdapterId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }
}

final class _ILanIdentifierVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_InfrastructureId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PortId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_NetworkAdapterId;
}
