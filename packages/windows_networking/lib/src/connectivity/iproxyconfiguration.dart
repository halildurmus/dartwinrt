// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_IProxyConfiguration = '{ef3a60b4-9004-4dd6-b7d8-b3e502f4aad0}';

/// {@category interface}
class IProxyConfiguration extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IProxyConfiguration.fromRawPointer(super.ptr);

  factory IProxyConfiguration.from(IInspectable interface) =>
      IProxyConfiguration.fromRawPointer(
          interface.toInterface(IID_IProxyConfiguration));

  List<Uri> get proxyUris {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<Uri>.fromRawPointer(retValuePtr,
        iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}');
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }

  bool get canConnectDirectly {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
