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

import 'connectionprofiledeletestatus.dart';

/// @nodoc
const IID_IConnectionProfile5 = '{85361ec7-9c73-4be0-8f14-578eec71ee0e}';

class IConnectionProfile5 extends IInspectable {
  IConnectionProfile5.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IConnectionProfile5Vtbl>().ref;

  final _IConnectionProfile5Vtbl _vtable;

  factory IConnectionProfile5.from(IInspectable interface) =>
      interface.cast(IConnectionProfile5.fromPtr, IID_IConnectionProfile5);

  bool get canDelete {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_CanDelete.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<ConnectionProfileDeleteStatus> tryDeleteAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.TryDeleteAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<ConnectionProfileDeleteStatus>.fromPtr(operation,
            tResultEnumCreator: ConnectionProfileDeleteStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IConnectionProfile5Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_CanDelete;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      TryDeleteAsync;
}
