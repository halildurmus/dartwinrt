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

/// @nodoc
const IID_IToastNotificationHistory = '{5caddc63-01d3-4c97-986f-0533483fee14}';

/// {@category interface}
class IToastNotificationHistory extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IToastNotificationHistory.fromPtr(super.ptr);

  factory IToastNotificationHistory.from(IInspectable interface) =>
      IToastNotificationHistory.fromPtr(
          interface.toInterface(IID_IToastNotificationHistory));

  void removeGroup(String group) {
    final groupHString = group.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr group)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int group)>()(
        ptr.ref.lpVtbl, groupHString);

    WindowsDeleteString(groupHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void removeGroupWithId(String group, String applicationId) {
    final groupHString = group.toHString();
    final applicationIdHString = applicationId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr group,
                            IntPtr applicationId)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int group, int applicationId)>()(
        ptr.ref.lpVtbl, groupHString, applicationIdHString);

    WindowsDeleteString(groupHString);
    WindowsDeleteString(applicationIdHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void removeGroupedTagWithId(String tag, String group, String applicationId) {
    final tagHString = tag.toHString();
    final groupHString = group.toHString();
    final applicationIdHString = applicationId.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(LPVTBL lpVtbl, IntPtr tag,
                                IntPtr group, IntPtr applicationId)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, int tag, int group,
                        int applicationId)>()(
            ptr.ref.lpVtbl, tagHString, groupHString, applicationIdHString);

    WindowsDeleteString(tagHString);
    WindowsDeleteString(groupHString);
    WindowsDeleteString(applicationIdHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void removeGroupedTag(String tag, String group) {
    final tagHString = tag.toHString();
    final groupHString = group.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, IntPtr tag, IntPtr group)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int tag, int group)>()(
        ptr.ref.lpVtbl, tagHString, groupHString);

    WindowsDeleteString(tagHString);
    WindowsDeleteString(groupHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void remove(String tag) {
    final tagHString = tag.toHString();

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, IntPtr tag)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int tag)>()(ptr.ref.lpVtbl, tagHString);

    WindowsDeleteString(tagHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void clear() {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL lpVtbl)>>>()
        .value
        .asFunction<int Function(LPVTBL lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void clearWithId(String applicationId) {
    final applicationIdHString = applicationId.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl, IntPtr applicationId)>>>()
                .value
                .asFunction<int Function(LPVTBL lpVtbl, int applicationId)>()(
            ptr.ref.lpVtbl, applicationIdHString);

    WindowsDeleteString(applicationIdHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
