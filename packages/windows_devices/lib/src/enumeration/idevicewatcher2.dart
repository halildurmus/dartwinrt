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
import 'package:windows_applicationmodel/windows_applicationmodel.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'devicewatchereventkind.dart';

/// @nodoc
const IID_IDeviceWatcher2 = '{ff08456e-ed14-49e9-9a69-8117c54ae971}';

/// {@category interface}
class IDeviceWatcher2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDeviceWatcher2.fromRawPointer(super.ptr);

  factory IDeviceWatcher2.from(IInspectable interface) =>
      IDeviceWatcher2.fromRawPointer(
          interface.toInterface(IID_IDeviceWatcher2));

  DeviceWatcherTrigger? getBackgroundTrigger(
      IIterable<DeviceWatcherEventKind>? requestedEventKinds) {
    final retValuePtr = calloc<COMObject>();
    final requestedEventKindsPtr = requestedEventKinds == null
        ? nullptr
        : IInspectable(requestedEventKinds
                .toInterface('{f04365ab-d3f3-5f85-a7da-dc19cff73d86}'))
            .ptr
            .ref
            .lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                LPVTBL requestedEventKinds,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, LPVTBL requestedEventKinds,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, requestedEventKindsPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    requestedEventKinds?.release();

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcherTrigger.fromRawPointer(retValuePtr);
  }
}
