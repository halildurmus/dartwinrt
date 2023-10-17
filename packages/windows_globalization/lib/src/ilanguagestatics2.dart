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

/// @nodoc
const IID_ILanguageStatics2 = '{30199f6e-914b-4b2a-9d6e-e3b0e27dbe4f}';

class ILanguageStatics2 extends IInspectable {
  ILanguageStatics2.fromPtr(super.ptr);

  factory ILanguageStatics2.from(IInspectable interface) =>
      interface.cast(ILanguageStatics2.fromPtr, IID_ILanguageStatics2);

  bool trySetInputMethodLanguageTag(String languageTag) {
    final result = calloc<Bool>();

    try {
      final hr =
          vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(VTablePointer lpVtbl,
                                  IntPtr languageTag, Pointer<Bool> result)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int languageTag,
                          Pointer<Bool> result)>()(
              lpVtbl, languageTag.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}
