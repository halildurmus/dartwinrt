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

import 'networkadapter.dart';

/// @nodoc
const IID_IIPInformation = '{d85145e0-138f-47d7-9b3a-36bb488cef33}';

/// {@category interface}
class IIPInformation extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IIPInformation.fromRawPointer(super.ptr);

  factory IIPInformation.from(IInspectable interface) =>
      IIPInformation.fromRawPointer(interface.toInterface(IID_IIPInformation));

  NetworkAdapter? get networkAdapter {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return NetworkAdapter.fromRawPointer(retValuePtr);
  }

  int? get prefixLength {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<int?>.fromRawPointer(retValuePtr,
        referenceIid: '{e5198cc8-2873-55f5-b0a1-84ff9e4aad62}');
    final value = reference.value;
    reference.release();

    return value;
  }
}
