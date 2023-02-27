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

import 'attributednetworkusage.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IConnectionProfile3 = '{578c2528-4cd9-4161-8045-201cfd5b115c}';

/// {@category interface}
class IConnectionProfile3 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IConnectionProfile3.fromRawPointer(super.ptr);

  factory IConnectionProfile3.from(IInspectable interface) =>
      IConnectionProfile3.fromRawPointer(
          interface.toInterface(IID_IConnectionProfile3));

  Future<List<AttributedNetworkUsage>> getAttributedNetworkUsageAsync(
      DateTime startTime, DateTime endTime, NetworkUsageStates states) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<AttributedNetworkUsage>>();
    final startTimeDateTime =
        startTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
    final endTimeDateTime =
        endTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL,
                                Uint64 startTime,
                                Uint64 endTime,
                                NetworkUsageStates states,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, int startTime, int endTime,
                        NetworkUsageStates states, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            startTimeDateTime,
            endTimeDateTime,
            states,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<AttributedNetworkUsage>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: AttributedNetworkUsage.fromRawPointer,
                iterableIid: '{d061dcb9-6854-5ef9-8e03-008a7a704c48}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }
}
