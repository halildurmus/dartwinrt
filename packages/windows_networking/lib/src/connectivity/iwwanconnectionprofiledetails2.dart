// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'wwannetworkipkind.dart';

/// @nodoc
const IID_IWwanConnectionProfileDetails2 =
    '{7a754ede-a1ed-48b2-8e92-b460033d52e2}';

/// {@category interface}
class IWwanConnectionProfileDetails2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IWwanConnectionProfileDetails2.fromRawPointer(super.ptr);

  factory IWwanConnectionProfileDetails2.from(IInspectable interface) =>
      IWwanConnectionProfileDetails2.fromRawPointer(
          interface.toInterface(IID_IWwanConnectionProfileDetails2));

  WwanNetworkIPKind get ipKind {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return WwanNetworkIPKind.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  List<Guid> get purposeGuids {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<Guid>.fromRawPointer(retValuePtr,
        iterableIid: '{f4ca3045-5dd7-54be-982e-d88d8ca0876e}');
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }
}
