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

import 'fileopenpicker.dart';

/// @nodoc
const IID_IFileOpenPickerStatics2 = '{e8917415-eddd-5c98-b6f3-366fdfcad392}';

/// {@category interface}
class IFileOpenPickerStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IFileOpenPickerStatics2.fromPtr(super.ptr);

  factory IFileOpenPickerStatics2.from(IInspectable interface) =>
      IFileOpenPickerStatics2.fromPtr(
          interface.toInterface(IID_IFileOpenPickerStatics2));

  FileOpenPicker? createForUser(User? user) {
    final retValuePtr = calloc<COMObject>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer user,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer user,
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

    return FileOpenPicker.fromPtr(retValuePtr);
  }
}
