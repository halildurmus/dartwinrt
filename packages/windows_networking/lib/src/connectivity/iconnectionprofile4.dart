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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'providernetworkusage.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IConnectionProfile4 = '{7a2d42cd-81e0-4ae6-abed-ab9ca13eb714}';

/// {@category interface}
class IConnectionProfile4 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IConnectionProfile4.fromRawPointer(super.ptr);

  factory IConnectionProfile4.from(IInspectable interface) =>
      IConnectionProfile4.fromRawPointer(
          interface.toInterface(IID_IConnectionProfile4));

  Future<List<ProviderNetworkUsage>> getProviderNetworkUsageAsync(
      DateTime startTime, DateTime endTime, NetworkUsageStates states) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<ProviderNetworkUsage>>();
    final startTimeDateTime =
        startTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
    final endTimeDateTime =
        endTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Int64 startTime,
                            Int64 endTime,
                            NetworkUsageStates states,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int startTime,
                    int endTime,
                    NetworkUsageStates states,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        startTimeDateTime, endTimeDateTime, states, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ProviderNetworkUsage>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: ProviderNetworkUsage.fromRawPointer,
                iterableIid: '{f79bc7ba-01df-51ec-bfaf-fd883f698e07}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }
}
