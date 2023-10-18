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
const IID_INetworkOperatorTetheringAccessPointConfiguration =
    '{0bcc0284-412e-403d-acc6-b757e34774a4}';

class INetworkOperatorTetheringAccessPointConfiguration extends IInspectable {
  INetworkOperatorTetheringAccessPointConfiguration.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_INetworkOperatorTetheringAccessPointConfigurationVtbl>()
            .ref;

  final _INetworkOperatorTetheringAccessPointConfigurationVtbl _vtable;

  factory INetworkOperatorTetheringAccessPointConfiguration.from(
          IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringAccessPointConfiguration.fromPtr,
          IID_INetworkOperatorTetheringAccessPointConfiguration);

  String get ssid {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Ssid.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set ssid(String value) {
    final hr = _vtable.put_Ssid
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get passphrase {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Passphrase.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set passphrase(String value) {
    final hr = _vtable.put_Passphrase
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _INetworkOperatorTetheringAccessPointConfigurationVtbl
    extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Ssid;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Ssid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Passphrase;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Passphrase;
}
