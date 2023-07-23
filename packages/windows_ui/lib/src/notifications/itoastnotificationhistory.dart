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

/// @nodoc
const IID_IToastNotificationHistory = '{5caddc63-01d3-4c97-986f-0533483fee14}';

class IToastNotificationHistory extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IToastNotificationHistory.fromPtr(super.ptr);

  factory IToastNotificationHistory.from(IInspectable interface) =>
      IToastNotificationHistory.fromPtr(
          interface.toInterface(IID_IToastNotificationHistory));

  void removeGroup(String group) {
    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr group)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int group)>()(
            ptr.ref.lpVtbl, group.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeGroupWithId(String group, String applicationId) {
    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr group,
                            IntPtr applicationId)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int group, int applicationId)>()(
        ptr.ref.lpVtbl, group.toHString(), applicationId.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeGroupedTagWithId(String tag, String group, String applicationId) {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr tag,
                            IntPtr group, IntPtr applicationId)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int tag, int group,
                    int applicationId)>()(ptr.ref.lpVtbl, tag.toHString(),
        group.toHString(), applicationId.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeGroupedTag(String tag, String group) {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, IntPtr tag, IntPtr group)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int tag, int group)>()(
        ptr.ref.lpVtbl, tag.toHString(), group.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void remove(String tag) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr tag)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int tag)>()(
        ptr.ref.lpVtbl, tag.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void clear() {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void clearWithId(String applicationId) {
    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, IntPtr applicationId)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int applicationId)>()(
        ptr.ref.lpVtbl, applicationId.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
