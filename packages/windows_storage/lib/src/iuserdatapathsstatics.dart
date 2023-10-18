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

import 'userdatapaths.dart';

/// @nodoc
const IID_IUserDataPathsStatics = '{01b29def-e062-48a1-8b0c-f2c7a9ca56c0}';

class IUserDataPathsStatics extends IInspectable {
  IUserDataPathsStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUserDataPathsStaticsVtbl>().ref;

  final _IUserDataPathsStaticsVtbl _vtable;

  factory IUserDataPathsStatics.from(IInspectable interface) =>
      interface.cast(IUserDataPathsStatics.fromPtr, IID_IUserDataPathsStatics);

  UserDataPaths? getForUser(User? user) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetForUser.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer user,
            Pointer<COMObject> result)>()(lpVtbl, user.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return UserDataPaths.fromPtr(result);
  }

  UserDataPaths? getDefault() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetDefault.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return UserDataPaths.fromPtr(result);
  }
}

final class _IUserDataPathsStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer user,
              Pointer<COMObject> result)>> GetForUser;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> GetDefault;
}
