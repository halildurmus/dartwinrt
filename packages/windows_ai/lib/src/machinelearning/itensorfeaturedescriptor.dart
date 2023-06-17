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

import 'tensorkind.dart';

/// @nodoc
const IID_ITensorFeatureDescriptor = '{74455c80-946a-4310-a19c-ee0af028fce4}';

class ITensorFeatureDescriptor extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ITensorFeatureDescriptor.fromPtr(super.ptr);

  factory ITensorFeatureDescriptor.from(IInspectable interface) =>
      ITensorFeatureDescriptor.fromPtr(
          interface.toInterface(IID_ITensorFeatureDescriptor));

  TensorKind get tensorKind {
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

      return TensorKind.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  List<int> get shape {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<int>.fromPtr(retValuePtr,
        iterableIid: '{7784427e-f9cc-518d-964b-e50d5ce727f1}',
        intType: IntType.int64);
    return vectorView.toList();
  }
}
