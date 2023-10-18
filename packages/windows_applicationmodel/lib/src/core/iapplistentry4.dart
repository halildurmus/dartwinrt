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

import '../appinfo.dart';

/// @nodoc
const IID_IAppListEntry4 = '{2a131ed2-56f5-487c-8697-5166f3b33da0}';

class IAppListEntry4 extends IInspectable {
  IAppListEntry4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAppListEntry4Vtbl>().ref;

  final _IAppListEntry4Vtbl _vtable;

  factory IAppListEntry4.from(IInspectable interface) =>
      interface.cast(IAppListEntry4.fromPtr, IID_IAppListEntry4);

  AppInfo? get appInfo {
    final value = calloc<COMObject>();

    final hr = _vtable.get_AppInfo.asFunction<
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

    return AppInfo.fromPtr(value);
  }
}

final class _IAppListEntry4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_AppInfo;
}
