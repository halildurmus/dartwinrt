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
import 'package:windows_system/windows_system.dart';

import 'filesavepicker.dart';

/// @nodoc
const IID_IFileSavePickerStatics = '{28e3cf9e-961c-5e2c-aed7-e64737f4ce37}';

/// {@category interface}
class IFileSavePickerStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IFileSavePickerStatics.fromRawPointer(super.ptr);

  factory IFileSavePickerStatics.from(IInspectable interface) =>
      IFileSavePickerStatics.fromRawPointer(
          interface.toInterface(IID_IFileSavePickerStatics));

  FileSavePicker? createForUser(User? user) {
    final retValuePtr = calloc<COMObject>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL user,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL user,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, userPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return FileSavePicker.fromRawPointer(retValuePtr);
  }
}
