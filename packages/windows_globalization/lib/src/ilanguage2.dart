// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'languagelayoutdirection.dart';

/// @nodoc
const IID_ILanguage2 = '{6a47e5b5-d94d-4886-a404-a5a5b9d5b494}';

/// {@category interface}
class ILanguage2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ILanguage2.fromPtr(super.ptr);

  factory ILanguage2.from(IInspectable interface) =>
      ILanguage2.fromPtr(interface.toInterface(IID_ILanguage2));

  LanguageLayoutDirection get layoutDirection {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return LanguageLayoutDirection.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}
