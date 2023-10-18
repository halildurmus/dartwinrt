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

import 'appexecutioncontext.dart';

/// @nodoc
const IID_IAppInfo3 = '{09a78e46-93a4-46de-9397-0843b57115ea}';

class IAppInfo3 extends IInspectable {
  IAppInfo3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAppInfo3Vtbl>().ref;

  final _IAppInfo3Vtbl _vtable;

  factory IAppInfo3.from(IInspectable interface) =>
      interface.cast(IAppInfo3.fromPtr, IID_IAppInfo3);

  AppExecutionContext get executionContext {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ExecutionContext.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return AppExecutionContext.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IAppInfo3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ExecutionContext;
}
