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

import 'phonenumberinfo.dart';

/// @nodoc
const IID_IPhoneNumberInfoFactory = '{8202b964-adaa-4cff-8fcf-17e7516a28ff}';

class IPhoneNumberInfoFactory extends IInspectable {
  IPhoneNumberInfoFactory.fromPtr(super.ptr);

  factory IPhoneNumberInfoFactory.from(IInspectable interface) => interface
      .cast(IPhoneNumberInfoFactory.fromPtr, IID_IPhoneNumberInfoFactory);

  PhoneNumberInfo create(String number) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr number,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int number,
                    Pointer<COMObject> result)>()(
        lpVtbl, number.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return PhoneNumberInfo.fromPtr(result);
  }
}
