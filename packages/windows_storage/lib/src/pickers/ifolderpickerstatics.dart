// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'folderpicker.dart';

/// @nodoc
const IID_IFolderPickerStatics = '{9be34740-7ca1-5942-a3c8-46f2551ecff3}';

/// {@category interface}
class IFolderPickerStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IFolderPickerStatics.fromRawPointer(super.ptr);

  factory IFolderPickerStatics.from(IInspectable interface) =>
      IFolderPickerStatics.fromRawPointer(
          interface.toInterface(IID_IFolderPickerStatics));

  FolderPicker? createForUser(User? user) {
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

    return FolderPicker.fromRawPointer(retValuePtr);
  }
}
