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

import 'packagesignaturekind.dart';

/// @nodoc
const IID_IPackage4 = '{65aed1ae-b95b-450c-882b-6255187f397e}';

class IPackage4 extends IInspectable {
  IPackage4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackage4Vtbl>().ref;

  final _IPackage4Vtbl _vtable;

  factory IPackage4.from(IInspectable interface) =>
      interface.cast(IPackage4.fromPtr, IID_IPackage4);

  PackageSignatureKind get signatureKind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_SignatureKind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PackageSignatureKind.from(value.value);
    } finally {
      free(value);
    }
  }

  bool get isOptional {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsOptional.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<bool> verifyContentIntegrityAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.VerifyContentIntegrityAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IPackage4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_SignatureKind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsOptional;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      VerifyContentIntegrityAsync;
}
