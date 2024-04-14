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
import 'package:windows_storage/windows_storage.dart';

/// @nodoc
const IID_IAttributedNetworkUsage = '{f769b039-eca2-45eb-ade1-b0368b756c49}';

class IAttributedNetworkUsage extends IInspectable {
  IAttributedNetworkUsage.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAttributedNetworkUsageVtbl>().ref;

  final _IAttributedNetworkUsageVtbl _vtable;

  factory IAttributedNetworkUsage.from(IInspectable interface) => interface
      .cast(IAttributedNetworkUsage.fromPtr, IID_IAttributedNetworkUsage);

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

  String get attributionId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_AttributionId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get attributionName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_AttributionName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  IRandomAccessStreamReference? get attributionThumbnail {
    final value = calloc<COMObject>();

    final hr = _vtable.get_AttributionThumbnail.asFunction<
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

    return IRandomAccessStreamReference.fromPtr(value);
  }
}

final class _IAttributedNetworkUsageVtbl extends Struct {
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
      get_AttributionId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AttributionName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_AttributionThumbnail;
}
