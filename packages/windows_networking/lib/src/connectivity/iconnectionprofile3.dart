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

import 'attributednetworkusage.dart';
import 'networkusagestates.dart';

/// @nodoc
const IID_IConnectionProfile3 = '{578c2528-4cd9-4161-8045-201cfd5b115c}';

class IConnectionProfile3 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IConnectionProfile3.fromPtr(super.ptr);

  factory IConnectionProfile3.from(IInspectable interface) =>
      interface.cast(IConnectionProfile3.fromPtr, IID_IConnectionProfile3);

  Future<List<AttributedNetworkUsage?>> getAttributedNetworkUsageAsync(
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

    free(statesNativeStructPtr);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<AttributedNetworkUsage?>>.fromPtr(value,
            creator: (ptr) => IVectorView.fromPtr(ptr,
                creator: AttributedNetworkUsage.fromPtr,
                iterableIid: '{d061dcb9-6854-5ef9-8e03-008a7a704c48}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}
