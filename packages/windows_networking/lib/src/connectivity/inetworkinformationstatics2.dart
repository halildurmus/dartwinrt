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

import 'connectionprofile.dart';
import 'connectionprofilefilter.dart';

/// @nodoc
const IID_INetworkInformationStatics2 =
    '{459ced14-2832-49b6-ba6e-e265f04786a8}';

class INetworkInformationStatics2 extends IInspectable {
  INetworkInformationStatics2.fromPtr(super.ptr);

  factory INetworkInformationStatics2.from(IInspectable interface) =>
      interface.cast(
          INetworkInformationStatics2.fromPtr, IID_INetworkInformationStatics2);

  Future<List<ConnectionProfile?>> findConnectionProfilesAsync(
      ConnectionProfileFilter? pProfileFilter) {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer pProfileFilter,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer pProfileFilter,
                    Pointer<COMObject> value)>()(
        lpVtbl, pProfileFilter.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ConnectionProfile?>>.fromPtr(
            value,
            creator: (ptr) => IVectorView.fromPtr(ptr,
                creator: ConnectionProfile.fromPtr,
                iterableIid: '{34dabef9-87d0-5b1c-a7ac-9d290adeb0c8}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}
