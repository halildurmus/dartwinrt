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

import 'core/applistentry.dart';
import 'packagestatus.dart';

/// @nodoc
const IID_IPackage3 = '{5f738b61-f86a-4917-93d1-f1ee9d3b35d9}';

class IPackage3 extends IInspectable {
  IPackage3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackage3Vtbl>().ref;

  final _IPackage3Vtbl _vtable;

  factory IPackage3.from(IInspectable interface) =>
      interface.cast(IPackage3.fromPtr, IID_IPackage3);

  PackageStatus? get status {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Status.asFunction<
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

    return PackageStatus.fromPtr(value);
  }

  DateTime get installedDate {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_InstalledDate.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }

  Future<List<AppListEntry?>> getAppListEntriesAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetAppListEntriesAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<AppListEntry?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{86f4d4ef-d8fd-5fb5-807c-72da8fc9e544}',
            tObjectCreator: AppListEntry.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}

final class _IPackage3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Status;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_InstalledDate;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetAppListEntriesAsync;
}
