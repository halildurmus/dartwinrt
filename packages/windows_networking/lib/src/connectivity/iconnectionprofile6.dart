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

import 'domainauthenticationkind.dart';

/// @nodoc
const IID_IConnectionProfile6 = '{dc27dfe2-7a6f-5d0e-9589-2fe2e5b6f9aa}';

class IConnectionProfile6 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IConnectionProfile6.fromPtr(super.ptr);

  factory IConnectionProfile6.from(IInspectable interface) =>
      interface.cast(IConnectionProfile6.fromPtr, IID_IConnectionProfile6);

  bool isDomainAuthenticatedBy(DomainAuthenticationKind kind) {
    final result = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 kind,
                          Pointer<Bool> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int kind,
                  Pointer<Bool> result)>()(lpVtbl, kind.value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}
