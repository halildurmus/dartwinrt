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
import 'package:windows_system/windows_system.dart';

import 'appinfo.dart';

/// @nodoc
const IID_IAppInfoStatics = '{cf1f782a-e48b-4f0c-9b0b-79c3f8957dd7}';

class IAppInfoStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IAppInfoStatics.fromPtr(super.ptr);

  factory IAppInfoStatics.from(IInspectable interface) =>
      interface.cast(IAppInfoStatics.fromPtr, IID_IAppInfoStatics);

  AppInfo? get current {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return AppInfo.fromPtr(value);
  }

  AppInfo? getFromAppUserModelId(String appUserModelId) {
    final result = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr appUserModelId,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int appUserModelId,
                        Pointer<COMObject> result)>()(
            ptr.ref.lpVtbl, appUserModelId.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return AppInfo.fromPtr(result);
  }

  AppInfo? getFromAppUserModelIdForUser(User? user, String appUserModelId) {
    final result = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer user,
                                IntPtr appUserModelId,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer user,
                        int appUserModelId, Pointer<COMObject> result)>()(
            ptr.ref.lpVtbl, user.lpVtbl, appUserModelId.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return AppInfo.fromPtr(result);
  }
}
