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

import 'learningmodelpixelrange.dart';

/// @nodoc
const IID_IImageFeatureDescriptor2 = '{2b27cca7-d533-5862-bb98-1611b155b0e1}';

class IImageFeatureDescriptor2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IImageFeatureDescriptor2.fromPtr(super.ptr);

  factory IImageFeatureDescriptor2.from(IInspectable interface) => interface
      .cast(IImageFeatureDescriptor2.fromPtr, IID_IImageFeatureDescriptor2);

  LearningModelPixelRange get pixelRange {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return LearningModelPixelRange.from(value.value);
    } finally {
      free(value);
    }
  }
}
