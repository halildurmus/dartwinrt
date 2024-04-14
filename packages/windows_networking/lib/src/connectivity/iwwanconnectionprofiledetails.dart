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

import 'wwandataclass.dart';
import 'wwannetworkregistrationstate.dart';

/// @nodoc
const IID_IWwanConnectionProfileDetails =
    '{0e4da8fe-835f-4df3-82fd-df556ebc09ef}';

class IWwanConnectionProfileDetails extends IInspectable {
  IWwanConnectionProfileDetails.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWwanConnectionProfileDetailsVtbl>().ref;

  final _IWwanConnectionProfileDetailsVtbl _vtable;

  factory IWwanConnectionProfileDetails.from(IInspectable interface) =>
      interface.cast(IWwanConnectionProfileDetails.fromPtr,
          IID_IWwanConnectionProfileDetails);

  String get homeProviderId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_HomeProviderId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get accessPointName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_AccessPointName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  WwanNetworkRegistrationState getNetworkRegistrationState() {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.GetNetworkRegistrationState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return WwanNetworkRegistrationState.from(value.value);
    } finally {
      free(value);
    }
  }

  WwanDataClass getCurrentDataClass() {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.GetCurrentDataClass.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return WwanDataClass.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IWwanConnectionProfileDetailsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_HomeProviderId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AccessPointName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      GetNetworkRegistrationState;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      GetCurrentDataClass;
}
