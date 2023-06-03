// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'findrelatedpackagesoptions.dart';
import 'package.dart';

/// @nodoc
const IID_IPackage9 = '{d5ab224f-d7e1-49ec-90ce-720cdbd02e9c}';

class IPackage9 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IPackage9.fromPtr(super.ptr);

  factory IPackage9.from(IInspectable interface) =>
      IPackage9.fromPtr(interface.toInterface(IID_IPackage9));

  IVector<Package> findRelatedPackages(FindRelatedPackagesOptions? options) {
    final retValuePtr = calloc<COMObject>();
    final optionsPtr = options == null ? nullptr : options.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer options,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer options,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, optionsPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IVector.fromPtr(retValuePtr,
        iterableIid: '{69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d}',
        creator: Package.fromPtr);
  }

  String get sourceUriSchemeName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}
