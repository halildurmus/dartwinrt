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

import 'package.dart';
import 'packagecontentgroupstate.dart';

/// @nodoc
const IID_IPackageContentGroup = '{8f62695d-120a-4798-b5e1-5800dda8f2e1}';

class IPackageContentGroup extends IInspectable {
  IPackageContentGroup.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackageContentGroupVtbl>().ref;

  final _IPackageContentGroupVtbl _vtable;

  factory IPackageContentGroup.from(IInspectable interface) =>
      interface.cast(IPackageContentGroup.fromPtr, IID_IPackageContentGroup);

  Package? get package {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Package.asFunction<
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

    return Package.fromPtr(value);
  }

  String get name {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Name.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  PackageContentGroupState get state {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_State.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PackageContentGroupState.from(value.value);
    } finally {
      free(value);
    }
  }

  bool get isRequired {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsRequired.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IPackageContentGroupVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Package;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Name;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_State;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsRequired;
}
