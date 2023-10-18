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
const IID_INetworkUsage = '{49da8fce-9985-4927-bf5b-072b5c65f8d9}';

class INetworkUsage extends IInspectable {
  INetworkUsage.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INetworkUsageVtbl>().ref;

  final _INetworkUsageVtbl _vtable;

  factory INetworkUsage.from(IInspectable interface) =>
      interface.cast(INetworkUsage.fromPtr, IID_INetworkUsage);

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

  Duration get connectionDuration {
    final duration = calloc<Int64>();

    try {
      final hr = _vtable.get_ConnectionDuration.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int64> duration)>()(
          lpVtbl, duration);

      if (FAILED(hr)) throwWindowsException(hr);

      return duration.toDartDuration();
    } finally {
      free(duration);
    }
  }
}

final class _INetworkUsageVtbl extends Struct {
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
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> duration)>>
      get_ConnectionDuration;
}
