// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'networkusagestates.dart';
import 'providernetworkusage.dart';

/// @nodoc
const IID_IConnectionProfile4 = '{7a2d42cd-81e0-4ae6-abed-ab9ca13eb714}';

class IConnectionProfile4 extends IInspectable {
  IConnectionProfile4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IConnectionProfile4Vtbl>().ref;

  final _IConnectionProfile4Vtbl _vtable;

  factory IConnectionProfile4.from(IInspectable interface) =>
      interface.cast(IConnectionProfile4.fromPtr, IID_IConnectionProfile4);

  Future<List<ProviderNetworkUsage?>> getProviderNetworkUsageAsync(
      DateTime startTime, DateTime endTime, NetworkUsageStates states) {
    final value = calloc<COMObject>();
    final statesNativeStructPtr = states.toNative();

    final hr = _vtable.GetProviderNetworkUsageAsync.asFunction<
            int Function(VTablePointer lpVtbl, int startTime, int endTime,
                NativeNetworkUsageStates states, Pointer<COMObject> value)>()(
        lpVtbl,
        startTime.toWinRTDateTime(),
        endTime.toWinRTDateTime(),
        statesNativeStructPtr.ref,
        value);

    free(statesNativeStructPtr);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ProviderNetworkUsage?>>.fromPtr(value,
            tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
                iterableIid: '{f79bc7ba-01df-51ec-bfaf-fd883f698e07}',
                tObjectCreator: ProviderNetworkUsage.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}

final class _IConnectionProfile4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int64 startTime,
              Int64 endTime,
              NativeNetworkUsageStates states,
              Pointer<COMObject> value)>> GetProviderNetworkUsageAsync;
}
