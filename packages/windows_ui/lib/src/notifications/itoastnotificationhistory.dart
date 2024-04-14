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

/// @nodoc
const IID_IToastNotificationHistory = '{5caddc63-01d3-4c97-986f-0533483fee14}';

class IToastNotificationHistory extends IInspectable {
  IToastNotificationHistory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IToastNotificationHistoryVtbl>().ref;

  final _IToastNotificationHistoryVtbl _vtable;

  factory IToastNotificationHistory.from(IInspectable interface) => interface
      .cast(IToastNotificationHistory.fromPtr, IID_IToastNotificationHistory);

  void removeGroup(String group) {
    final hr = _vtable.RemoveGroup.asFunction<
        int Function(
            VTablePointer lpVtbl, int group)>()(lpVtbl, group.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeGroupWithId(String group, String applicationId) {
    final hr = _vtable.RemoveGroupWithId.asFunction<
            int Function(VTablePointer lpVtbl, int group, int applicationId)>()(
        lpVtbl, group.toHString(), applicationId.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeGroupedTagWithId(String tag, String group, String applicationId) {
    final hr = _vtable.RemoveGroupedTagWithId.asFunction<
            int Function(
                VTablePointer lpVtbl, int tag, int group, int applicationId)>()(
        lpVtbl, tag.toHString(), group.toHString(), applicationId.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeGroupedTag(String tag, String group) {
    final hr = _vtable.RemoveGroupedTag.asFunction<
            int Function(VTablePointer lpVtbl, int tag, int group)>()(
        lpVtbl, tag.toHString(), group.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void remove(String tag) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int tag)>()(lpVtbl, tag.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void clear() {
    final hr =
        _vtable.Clear.asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void clearWithId(String applicationId) {
    final hr = _vtable.ClearWithId.asFunction<
            int Function(VTablePointer lpVtbl, int applicationId)>()(
        lpVtbl, applicationId.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IToastNotificationHistoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr group)>>
      RemoveGroup;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr group, IntPtr applicationId)>>
      RemoveGroupWithId;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr tag, IntPtr group,
              IntPtr applicationId)>> RemoveGroupedTagWithId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr tag, IntPtr group)>>
      RemoveGroupedTag;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr tag)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr applicationId)>>
      ClearWithId;
}
