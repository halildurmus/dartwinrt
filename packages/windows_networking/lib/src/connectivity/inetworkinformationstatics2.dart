// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'connectionprofile.dart';
import 'connectionprofilefilter.dart';

/// @nodoc
const IID_INetworkInformationStatics2 =
    '{459ced14-2832-49b6-ba6e-e265f04786a8}';

/// {@category interface}
class INetworkInformationStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  INetworkInformationStatics2.fromRawPointer(super.ptr);

  factory INetworkInformationStatics2.from(IInspectable interface) =>
      INetworkInformationStatics2.fromRawPointer(
          interface.toInterface(IID_INetworkInformationStatics2));

  Future<List<ConnectionProfile>> findConnectionProfilesAsync(
      ConnectionProfileFilter? pProfileFilter) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<ConnectionProfile>>();
    final pProfileFilterPtr =
        pProfileFilter == null ? nullptr : pProfileFilter.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL pProfileFilter,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL pProfileFilter,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, pProfileFilterPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ConnectionProfile>>.fromRawPointer(
            retValuePtr,
            creator: (ptr) => IVectorView.fromRawPointer(ptr,
                creator: ConnectionProfile.fromRawPointer,
                iterableIid: '{34dabef9-87d0-5b1c-a7ac-9d290adeb0c8}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }
}
