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

import 'networktypes.dart';

/// @nodoc
const IID_INetworkItem = '{01bc4d39-f5e0-4567-a28c-42080c831b2b}';

class INetworkItem extends IInspectable {
  INetworkItem.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INetworkItemVtbl>().ref;

  final _INetworkItemVtbl _vtable;

  factory INetworkItem.from(IInspectable interface) =>
      interface.cast(INetworkItem.fromPtr, IID_INetworkItem);

  Guid get networkId {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_NetworkId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  NetworkTypes getNetworkTypes() {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.GetNetworkTypes.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return NetworkTypes.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _INetworkItemVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_NetworkId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      GetNetworkTypes;
}
