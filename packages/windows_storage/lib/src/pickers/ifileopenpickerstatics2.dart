// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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
import 'package:windows_system/windows_system.dart';

import 'fileopenpicker.dart';

/// @nodoc
const IID_IFileOpenPickerStatics2 = '{e8917415-eddd-5c98-b6f3-366fdfcad392}';

class IFileOpenPickerStatics2 extends IInspectable {
  IFileOpenPickerStatics2.fromPtr(super.ptr);

  factory IFileOpenPickerStatics2.from(IInspectable interface) => interface
      .cast(IFileOpenPickerStatics2.fromPtr, IID_IFileOpenPickerStatics2);

  FileOpenPicker? createForUser(User? user) {
    final result = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, VTablePointer user,
                        Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user,
                Pointer<COMObject> result)>()(lpVtbl, user.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return FileOpenPicker.fromPtr(result);
  }
}
