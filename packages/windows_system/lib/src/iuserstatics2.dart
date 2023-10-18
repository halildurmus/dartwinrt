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

import 'user.dart';

/// @nodoc
const IID_IUserStatics2 = '{74a37e11-2eb5-4487-b0d5-2c6790e013e9}';

class IUserStatics2 extends IInspectable {
  IUserStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUserStatics2Vtbl>().ref;

  final _IUserStatics2Vtbl _vtable;

  factory IUserStatics2.from(IInspectable interface) =>
      interface.cast(IUserStatics2.fromPtr, IID_IUserStatics2);

  User? getDefault() {
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

    return User.fromPtr(result);
  }
}

final class _IUserStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> GetDefault;
}
