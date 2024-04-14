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

import 'networkcosttype.dart';

/// @nodoc
const IID_IConnectionProfileFilter = '{204c7cc8-bd2d-4e8d-a4b3-455ec337388a}';

class IConnectionProfileFilter extends IInspectable {
  IConnectionProfileFilter.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IConnectionProfileFilterVtbl>().ref;

  final _IConnectionProfileFilterVtbl _vtable;

  factory IConnectionProfileFilter.from(IInspectable interface) => interface
      .cast(IConnectionProfileFilter.fromPtr, IID_IConnectionProfileFilter);

  set isConnected(bool value) {
    final hr = _vtable.put_IsConnected
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get isConnected {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsConnected.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set isWwanConnectionProfile(bool value) {
    final hr = _vtable.put_IsWwanConnectionProfile
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get isWwanConnectionProfile {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsWwanConnectionProfile.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set isWlanConnectionProfile(bool value) {
    final hr = _vtable.put_IsWlanConnectionProfile
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get isWlanConnectionProfile {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsWlanConnectionProfile.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set networkCostType(NetworkCostType value) {
    final hr = _vtable.put_NetworkCostType
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  NetworkCostType get networkCostType {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NetworkCostType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return NetworkCostType.from(value.value);
    } finally {
      free(value);
    }
  }

  set serviceProviderGuid(Guid? value) {
    final hr = _vtable.put_ServiceProviderGuid.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Guid? get serviceProviderGuid {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ServiceProviderGuid.asFunction<
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

    return IReference<Guid?>.fromPtr(value,
            referenceIid: '{7d50f649-632c-51f9-849a-ee49428933ea}')
        .value;
  }
}

final class _IConnectionProfileFilterVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IsConnected;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsConnected;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IsWwanConnectionProfile;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsWwanConnectionProfile;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IsWlanConnectionProfile;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsWlanConnectionProfile;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_NetworkCostType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NetworkCostType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_ServiceProviderGuid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ServiceProviderGuid;
}
