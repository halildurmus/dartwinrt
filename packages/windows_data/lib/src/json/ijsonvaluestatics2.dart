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

import 'jsonvalue.dart';

/// @nodoc
const IID_IJsonValueStatics2 = '{1d9ecbe4-3fe8-4335-8392-93d8e36865f0}';

class IJsonValueStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IJsonValueStatics2.fromPtr(super.ptr);

  factory IJsonValueStatics2.from(IInspectable interface) =>
      interface.cast(IJsonValueStatics2.fromPtr, IID_IJsonValueStatics2);

  JsonValue? createNullValue() {
    final jsonValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> jsonValue)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> jsonValue)>()(ptr.ref.lpVtbl, jsonValue);

    if (FAILED(hr)) {
      free(jsonValue);
      throwWindowsException(hr);
    }

    if (jsonValue.isNull) {
      free(jsonValue);
      return null;
    }

    return JsonValue.fromPtr(jsonValue);
  }
}
