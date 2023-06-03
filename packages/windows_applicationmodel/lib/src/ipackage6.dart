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

import 'appinstallerinfo.dart';
import 'packageupdateavailabilityresult.dart';

/// @nodoc
const IID_IPackage6 = '{8b1ad942-12d7-4754-ae4e-638cbc0e3a2e}';

class IPackage6 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IPackage6.fromPtr(super.ptr);

  factory IPackage6.from(IInspectable interface) =>
      IPackage6.fromPtr(interface.toInterface(IID_IPackage6));

  AppInstallerInfo? getAppInstallerInfo() {
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

    return AppInstallerInfo.fromPtr(retValuePtr);
  }

  Future<PackageUpdateAvailabilityResult?> checkUpdateAvailabilityAsync() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
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

    final asyncOperation =
        IAsyncOperation<PackageUpdateAvailabilityResult?>.fromPtr(retValuePtr,
            creator: PackageUpdateAvailabilityResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
