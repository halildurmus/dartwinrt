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

import 'connectivity/ipinformation.dart';
import 'hostname.dart';
import 'hostnametype.dart';

/// @nodoc
const IID_IHostName = '{bf8ecaad-ed96-49a7-9084-d416cae88dcb}';

class IHostName extends IInspectable {
  IHostName.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IHostNameVtbl>().ref;

  final _IHostNameVtbl _vtable;

  factory IHostName.from(IInspectable interface) =>
      interface.cast(IHostName.fromPtr, IID_IHostName);

  IPInformation? get ipInformation {
    final value = calloc<COMObject>();

    final hr = _vtable.get_IPInformation.asFunction<
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

    return IPInformation.fromPtr(value);
  }

  String get rawName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_RawName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get displayName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get canonicalName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_CanonicalName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  HostNameType get type {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return HostNameType.from(value.value);
    } finally {
      free(value);
    }
  }

  bool isEqual(HostName? hostName) {
    final isEqual = calloc<Bool>();

    try {
      final hr = _vtable.IsEqual.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer hostName,
              Pointer<Bool> isEqual)>()(lpVtbl, hostName.lpVtbl, isEqual);

      if (FAILED(hr)) throwWindowsException(hr);

      return isEqual.value;
    } finally {
      free(isEqual);
    }
  }
}

final class _IHostNameVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_IPInformation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_RawName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_CanonicalName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Type;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer hostName,
              Pointer<Bool> isEqual)>> IsEqual;
}
