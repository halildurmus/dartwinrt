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

/// @nodoc
const IID_IFolderPicker2 = '{8eb3ba97-dc85-4616-be94-9660881f2f5d}';

/// {@category interface}
class IFolderPicker2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IFolderPicker2.fromRawPointer(super.ptr);

  factory IFolderPicker2.from(IInspectable interface) =>
      IFolderPicker2.fromRawPointer(interface.toInterface(IID_IFolderPicker2));

  ValueSet? get continuationData {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ValueSet.fromRawPointer(retValuePtr);
  }

  @Deprecated('Instead, use PickSingleFolderAsync')
  void pickFolderAndContinue() {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL lpVtbl)>>>()
        .value
        .asFunction<int Function(LPVTBL lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
