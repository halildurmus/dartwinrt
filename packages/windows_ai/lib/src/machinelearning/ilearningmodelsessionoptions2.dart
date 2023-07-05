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

/// @nodoc
const IID_ILearningModelSessionOptions2 =
    '{6fcd1dc4-175f-5bd2-8de5-2f2006a25adf}';

class ILearningModelSessionOptions2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ILearningModelSessionOptions2.fromPtr(super.ptr);

  factory ILearningModelSessionOptions2.from(IInspectable interface) =>
      ILearningModelSessionOptions2.fromPtr(
          interface.toInterface(IID_ILearningModelSessionOptions2));

  bool get closeModelOnSessionCreation {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set closeModelOnSessionCreation(bool value) {
    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Bool value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
