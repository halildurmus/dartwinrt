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

import 'package.dart';

/// @nodoc
const IID_IAppInfo2 = '{be4b1f5a-2098-431b-bd25-b30878748d47}';

class IAppInfo2 extends IInspectable {
  IAppInfo2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAppInfo2Vtbl>().ref;

  final _IAppInfo2Vtbl _vtable;

  factory IAppInfo2.from(IInspectable interface) =>
      interface.cast(IAppInfo2.fromPtr, IID_IAppInfo2);

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
}

final class _IAppInfo2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Package;
}
