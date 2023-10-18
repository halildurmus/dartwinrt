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
import 'package:windows_storage/windows_storage.dart';

import 'package.dart';
import 'packageid.dart';

/// @nodoc
const IID_IPackage = '{163c792f-bd75-413c-bf23-b1fe7b95d825}';

class IPackage extends IInspectable {
  IPackage.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackageVtbl>().ref;

  final _IPackageVtbl _vtable;

  factory IPackage.from(IInspectable interface) =>
      interface.cast(IPackage.fromPtr, IID_IPackage);

  PackageId? get id {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Id.asFunction<
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

    return PackageId.fromPtr(value);
  }

  StorageFolder? get installedLocation {
    final value = calloc<COMObject>();

    final hr = _vtable.get_InstalledLocation.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  bool get isFramework {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsFramework.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<Package?>? get dependencies {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Dependencies.asFunction<
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

    return IVectorView<Package?>.fromPtr(value,
            iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
            creator: Package.fromPtr)
        .toList();
  }
}

final class _IPackageVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Id;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_InstalledLocation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsFramework;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Dependencies;
}
