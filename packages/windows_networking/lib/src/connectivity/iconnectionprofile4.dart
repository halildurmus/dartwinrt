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

import 'networkusagestates.dart';
import 'providernetworkusage.dart';

/// @nodoc
const IID_IConnectionProfile4 = '{7a2d42cd-81e0-4ae6-abed-ab9ca13eb714}';

class IConnectionProfile4 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IConnectionProfile4.fromPtr(super.ptr);

  factory IConnectionProfile4.from(IInspectable interface) =>
      IConnectionProfile4.fromPtr(
          interface.toInterface(IID_IConnectionProfile4));

  Future<List<ProviderNetworkUsage?>> getProviderNetworkUsageAsync(
      DateTime startTime, DateTime endTime, NetworkUsageStates states) {
    final value = calloc<COMObject>();
    final statesNativeStructPtr = states.toNative();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int64 startTime,
                            Int64 endTime,
                            NativeNetworkUsageStates states,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int startTime,
                    int endTime,
                    NativeNetworkUsageStates states,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        startTime.toWinRTDateTime(),
        endTime.toWinRTDateTime(),
        statesNativeStructPtr.ref,
        value);

    statesNativeStructPtr.free();

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ProviderNetworkUsage?>>.fromPtr(value,
            creator: (ptr) => IVectorView.fromPtr(ptr,
                creator: ProviderNetworkUsage.fromPtr,
                iterableIid: '{f79bc7ba-01df-51ec-bfaf-fd883f698e07}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}
