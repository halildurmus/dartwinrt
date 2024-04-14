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

/// @nodoc
const IID_IPackageContentGroupStatics =
    '{70ee7619-5f12-4b92-b9ea-6ccada13bc75}';

class IPackageContentGroupStatics extends IInspectable {
  IPackageContentGroupStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackageContentGroupStaticsVtbl>().ref;

  final _IPackageContentGroupStaticsVtbl _vtable;

  factory IPackageContentGroupStatics.from(IInspectable interface) =>
      interface.cast(
          IPackageContentGroupStatics.fromPtr, IID_IPackageContentGroupStatics);

  String get requiredGroupName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_RequiredGroupName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IPackageContentGroupStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_RequiredGroupName;
}
