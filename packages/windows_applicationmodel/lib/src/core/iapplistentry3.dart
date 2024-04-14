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
import 'package:windows_system/windows_system.dart';

/// @nodoc
const IID_IAppListEntry3 = '{6099f28d-fc32-470a-bc69-4b061a76ef2e}';

class IAppListEntry3 extends IInspectable {
  IAppListEntry3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAppListEntry3Vtbl>().ref;

  final _IAppListEntry3Vtbl _vtable;

  factory IAppListEntry3.from(IInspectable interface) =>
      interface.cast(IAppListEntry3.fromPtr, IID_IAppListEntry3);

  Future<bool> launchForUserAsync(User? user) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchForUserAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer user,
            Pointer<COMObject> operation)>()(lpVtbl, user.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IAppListEntry3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer user,
              Pointer<COMObject> operation)>> LaunchForUserAsync;
}
