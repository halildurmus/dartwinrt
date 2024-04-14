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
import 'package:windows_system/windows_system.dart';

import 'appinfo.dart';

/// @nodoc
const IID_IAppInfoStatics = '{cf1f782a-e48b-4f0c-9b0b-79c3f8957dd7}';

class IAppInfoStatics extends IInspectable {
  IAppInfoStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAppInfoStaticsVtbl>().ref;

  final _IAppInfoStaticsVtbl _vtable;

  factory IAppInfoStatics.from(IInspectable interface) =>
      interface.cast(IAppInfoStatics.fromPtr, IID_IAppInfoStatics);

  AppInfo? get current {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Current.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

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

    final hr = _vtable.GetFromAppUserModelId.asFunction<
            int Function(VTablePointer lpVtbl, int appUserModelId,
                Pointer<COMObject> result)>()(
        lpVtbl, appUserModelId.toHString(), result);

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

    final hr = _vtable.GetFromAppUserModelIdForUser.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user,
                int appUserModelId, Pointer<COMObject> result)>()(
        lpVtbl, user.lpVtbl, appUserModelId.toHString(), result);

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

final class _IAppInfoStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr appUserModelId,
              Pointer<COMObject> result)>> GetFromAppUserModelId;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              IntPtr appUserModelId,
              Pointer<COMObject> result)>> GetFromAppUserModelIdForUser;
}
