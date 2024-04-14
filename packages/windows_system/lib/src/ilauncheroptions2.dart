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
import 'package:windows_storage/windows_storage.dart';

/// @nodoc
const IID_ILauncherOptions2 = '{3ba08eb4-6e40-4dce-a1a3-2f53950afb49}';

class ILauncherOptions2 extends IInspectable {
  ILauncherOptions2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherOptions2Vtbl>().ref;

  final _ILauncherOptions2Vtbl _vtable;

  factory ILauncherOptions2.from(IInspectable interface) =>
      interface.cast(ILauncherOptions2.fromPtr, IID_ILauncherOptions2);

  String get targetApplicationPackageFamilyName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_TargetApplicationPackageFamilyName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set targetApplicationPackageFamilyName(String value) {
    final hr = _vtable.put_TargetApplicationPackageFamilyName
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  StorageFileQueryResult? get neighboringFilesQuery {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NeighboringFilesQuery.asFunction<
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

    return StorageFileQueryResult.fromPtr(value);
  }

  set neighboringFilesQuery(StorageFileQueryResult? value) {
    final hr = _vtable.put_NeighboringFilesQuery.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ILauncherOptions2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_TargetApplicationPackageFamilyName;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_TargetApplicationPackageFamilyName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NeighboringFilesQuery;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_NeighboringFilesQuery;
}
