// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'networkauthenticationtype.dart';
import 'networkencryptiontype.dart';

/// @nodoc
const IID_INetworkSecuritySettings = '{7ca07e8d-917b-4b5f-b84d-28f7a5ac5402}';

class INetworkSecuritySettings extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  INetworkSecuritySettings.fromPtr(super.ptr);

  factory INetworkSecuritySettings.from(IInspectable interface) =>
      INetworkSecuritySettings.fromPtr(
          interface.toInterface(IID_INetworkSecuritySettings));

  NetworkAuthenticationType get networkAuthenticationType {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return NetworkAuthenticationType.from(value.value);
    } finally {
      free(value);
    }
  }

  NetworkEncryptionType get networkEncryptionType {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return NetworkEncryptionType.from(value.value);
    } finally {
      free(value);
    }
  }
}
