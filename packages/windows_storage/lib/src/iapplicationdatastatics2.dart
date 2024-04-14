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

import 'applicationdata.dart';

/// @nodoc
const IID_IApplicationDataStatics2 = '{cd606211-cf49-40a4-a47c-c7f0dbba8107}';

class IApplicationDataStatics2 extends IInspectable {
  IApplicationDataStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IApplicationDataStatics2Vtbl>().ref;

  final _IApplicationDataStatics2Vtbl _vtable;

  factory IApplicationDataStatics2.from(IInspectable interface) => interface
      .cast(IApplicationDataStatics2.fromPtr, IID_IApplicationDataStatics2);

  Future<ApplicationData?> getForUserAsync(User? user) {
    final getForUserOperation = calloc<COMObject>();

    final hr = _vtable.GetForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user,
                Pointer<COMObject> getForUserOperation)>()(
        lpVtbl, user.lpVtbl, getForUserOperation);

    if (FAILED(hr)) {
      free(getForUserOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ApplicationData?>.fromPtr(
        getForUserOperation,
        tResultObjectCreator: ApplicationData.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IApplicationDataStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer user,
              Pointer<COMObject> getForUserOperation)>> GetForUserAsync;
}
