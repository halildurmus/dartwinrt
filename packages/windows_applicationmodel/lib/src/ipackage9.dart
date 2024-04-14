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

import 'findrelatedpackagesoptions.dart';
import 'package.dart';

/// @nodoc
const IID_IPackage9 = '{d5ab224f-d7e1-49ec-90ce-720cdbd02e9c}';

class IPackage9 extends IInspectable {
  IPackage9.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackage9Vtbl>().ref;

  final _IPackage9Vtbl _vtable;

  factory IPackage9.from(IInspectable interface) =>
      interface.cast(IPackage9.fromPtr, IID_IPackage9);

  IVector<Package?> findRelatedPackages(FindRelatedPackagesOptions? options) {
    final result = calloc<COMObject>();

    final hr = _vtable.FindRelatedPackages.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer options,
            Pointer<COMObject> result)>()(lpVtbl, options.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVector.fromPtr(result,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        tObjectCreator: Package.fromPtr);
  }

  String get sourceUriSchemeName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_SourceUriSchemeName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IPackage9Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer options,
              Pointer<COMObject> result)>> FindRelatedPackages;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_SourceUriSchemeName;
}
