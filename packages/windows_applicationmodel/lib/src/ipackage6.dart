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

import 'appinstallerinfo.dart';
import 'packageupdateavailabilityresult.dart';

/// @nodoc
const IID_IPackage6 = '{8b1ad942-12d7-4754-ae4e-638cbc0e3a2e}';

class IPackage6 extends IInspectable {
  IPackage6.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackage6Vtbl>().ref;

  final _IPackage6Vtbl _vtable;

  factory IPackage6.from(IInspectable interface) =>
      interface.cast(IPackage6.fromPtr, IID_IPackage6);

  AppInstallerInfo? getAppInstallerInfo() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetAppInstallerInfo.asFunction<
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

    return AppInstallerInfo.fromPtr(value);
  }

  Future<PackageUpdateAvailabilityResult?> checkUpdateAvailabilityAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.CheckUpdateAvailabilityAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<PackageUpdateAvailabilityResult?>.fromPtr(operation,
            tResultObjectCreator: PackageUpdateAvailabilityResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IPackage6Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetAppInstallerInfo;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      CheckUpdateAvailabilityAsync;
}
