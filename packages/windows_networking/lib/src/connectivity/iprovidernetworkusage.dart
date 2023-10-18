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

/// @nodoc
const IID_IProviderNetworkUsage = '{5ec69e04-7931-48c8-b8f3-46300fa42728}';

class IProviderNetworkUsage extends IInspectable {
  IProviderNetworkUsage.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IProviderNetworkUsageVtbl>().ref;

  final _IProviderNetworkUsageVtbl _vtable;

  factory IProviderNetworkUsage.from(IInspectable interface) =>
      interface.cast(IProviderNetworkUsage.fromPtr, IID_IProviderNetworkUsage);

  int get bytesSent {
    final value = calloc<Uint64>();

    try {
      final hr = _vtable.get_BytesSent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get bytesReceived {
    final value = calloc<Uint64>();

    try {
      final hr = _vtable.get_BytesReceived.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String get providerId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ProviderId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IProviderNetworkUsageVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      get_BytesSent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      get_BytesReceived;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ProviderId;
}
