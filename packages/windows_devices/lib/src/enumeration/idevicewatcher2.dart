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
import 'package:windows_applicationmodel/windows_applicationmodel.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'devicewatchereventkind.dart';

/// @nodoc
const IID_IDeviceWatcher2 = '{ff08456e-ed14-49e9-9a69-8117c54ae971}';

class IDeviceWatcher2 extends IInspectable {
  IDeviceWatcher2.fromPtr(super.ptr);

  factory IDeviceWatcher2.from(IInspectable interface) =>
      interface.cast(IDeviceWatcher2.fromPtr, IID_IDeviceWatcher2);

  DeviceWatcherTrigger? getBackgroundTrigger(
      IIterable<DeviceWatcherEventKind>? requestedEventKinds) {
    final trigger = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer requestedEventKinds,
                            Pointer<COMObject> trigger)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer requestedEventKinds,
                    Pointer<COMObject> trigger)>()(
        lpVtbl, requestedEventKinds.lpVtbl, trigger);

    if (FAILED(hr)) {
      free(trigger);
      throwWindowsException(hr);
    }

    if (trigger.isNull) {
      free(trigger);
      return null;
    }

    return DeviceWatcherTrigger.fromPtr(trigger);
  }
}
