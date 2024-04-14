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

/// @nodoc
const IID_IPackageStatics = '{4e534bdf-2960-4878-97a4-9624deb72f2d}';

class IPackageStatics extends IInspectable {
  IPackageStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackageStaticsVtbl>().ref;

  final _IPackageStaticsVtbl _vtable;

  factory IPackageStatics.from(IInspectable interface) =>
      interface.cast(IPackageStatics.fromPtr, IID_IPackageStatics);

  Package? get current {
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

    return Package.fromPtr(value);
  }
}

final class _IPackageStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Current;
}
