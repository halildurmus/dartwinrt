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

import 'endpointpair.dart';
import 'hostname.dart';

/// @nodoc
const IID_IEndpointPairFactory = '{b609d971-64e0-442b-aa6f-cc8c8f181f78}';

class IEndpointPairFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IEndpointPairFactory.fromPtr(super.ptr);

  factory IEndpointPairFactory.from(IInspectable interface) =>
      IEndpointPairFactory.fromPtr(
          interface.toInterface(IID_IEndpointPairFactory));

  EndpointPair createEndpointPair(
      HostName? localHostName,
      String localServiceName,
      HostName? remoteHostName,
      String remoteServiceName) {
    final value = calloc<COMObject>();
    final localServiceNameHString = localServiceName.toHString();
    final remoteServiceNameHString = remoteServiceName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer localHostName,
                            IntPtr localServiceName,
                            VTablePointer remoteHostName,
                            IntPtr remoteServiceName,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer localHostName,
                    int localServiceName,
                    VTablePointer remoteHostName,
                    int remoteServiceName,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        localHostName == null ? nullptr : localHostName.ptr.ref.lpVtbl,
        localServiceNameHString,
        remoteHostName == null ? nullptr : remoteHostName.ptr.ref.lpVtbl,
        remoteServiceNameHString,
        value);

    WindowsDeleteString(localServiceNameHString);
    WindowsDeleteString(remoteServiceNameHString);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return EndpointPair.fromPtr(value);
  }
}
