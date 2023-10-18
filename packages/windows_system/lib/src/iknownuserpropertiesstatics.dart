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
const IID_IKnownUserPropertiesStatics =
    '{7755911a-70c5-48e5-b637-5ba3441e4ee4}';

class IKnownUserPropertiesStatics extends IInspectable {
  IKnownUserPropertiesStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IKnownUserPropertiesStaticsVtbl>().ref;

  final _IKnownUserPropertiesStaticsVtbl _vtable;

  factory IKnownUserPropertiesStatics.from(IInspectable interface) =>
      interface.cast(
          IKnownUserPropertiesStatics.fromPtr, IID_IKnownUserPropertiesStatics);

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

  String get firstName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_FirstName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get lastName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_LastName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get providerName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ProviderName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get accountName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_AccountName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get guestHost {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_GuestHost.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get principalName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_PrincipalName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get domainName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DomainName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get sessionInitiationProtocolUri {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_SessionInitiationProtocolUri.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IKnownUserPropertiesStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_FirstName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_LastName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ProviderName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AccountName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_GuestHost;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_PrincipalName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DomainName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_SessionInitiationProtocolUri;
}
