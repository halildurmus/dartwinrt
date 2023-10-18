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
const IID_IProxyConfiguration = '{ef3a60b4-9004-4dd6-b7d8-b3e502f4aad0}';

class IProxyConfiguration extends IInspectable {
  IProxyConfiguration.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IProxyConfigurationVtbl>().ref;

  final _IProxyConfigurationVtbl _vtable;

  factory IProxyConfiguration.from(IInspectable interface) =>
      interface.cast(IProxyConfiguration.fromPtr, IID_IProxyConfiguration);

  List<Uri?>? get proxyUris {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ProxyUris.asFunction<
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

    return IVectorView<Uri?>.fromPtr(value,
            iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}')
        .toList();
  }

  bool get canConnectDirectly {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_CanConnectDirectly.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IProxyConfigurationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ProxyUris;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_CanConnectDirectly;
}
