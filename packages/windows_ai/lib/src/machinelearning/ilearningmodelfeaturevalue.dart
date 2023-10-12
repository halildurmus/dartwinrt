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

import 'learningmodelfeaturekind.dart';

/// @nodoc
const IID_ILearningModelFeatureValue = '{f51005db-4085-4dfe-9fed-95eb0c0cf75c}';

class ILearningModelFeatureValue extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ILearningModelFeatureValue.fromPtr(super.ptr);

  factory ILearningModelFeatureValue.from(IInspectable interface) => interface
      .cast(ILearningModelFeatureValue.fromPtr, IID_ILearningModelFeatureValue);

  LearningModelFeatureKind get kind {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return LearningModelFeatureKind.from(value.value);
    } finally {
      free(value);
    }
  }
}
