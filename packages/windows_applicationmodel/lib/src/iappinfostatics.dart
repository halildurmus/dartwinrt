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
import 'package:windows_system/windows_system.dart';

import 'appinfo.dart';

/// @nodoc
const IID_IAppInfoStatics = '{cf1f782a-e48b-4f0c-9b0b-79c3f8957dd7}';

class IAppInfoStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IAppInfoStatics.fromPtr(super.ptr);

  factory IAppInfoStatics.from(IInspectable interface) =>
      IAppInfoStatics.fromPtr(interface.toInterface(IID_IAppInfoStatics));

  AppInfo? get current {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return AppInfo.fromPtr(retValuePtr);
  }

  AppInfo? getFromAppUserModelId(String appUserModelId) {
    final retValuePtr = calloc<COMObject>();
    final appUserModelIdHString = appUserModelId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr appUserModelId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int appUserModelId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, appUserModelIdHString, retValuePtr);

    WindowsDeleteString(appUserModelIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return AppInfo.fromPtr(retValuePtr);
  }

  AppInfo? getFromAppUserModelIdForUser(User? user, String appUserModelId) {
    final retValuePtr = calloc<COMObject>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;
    final appUserModelIdHString = appUserModelId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer user,
                            IntPtr appUserModelId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer user,
                    int appUserModelId, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, userPtr, appUserModelIdHString, retValuePtr);

    WindowsDeleteString(appUserModelIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return AppInfo.fromPtr(retValuePtr);
  }
}
