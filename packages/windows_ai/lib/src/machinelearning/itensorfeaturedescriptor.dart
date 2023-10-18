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

import 'tensorkind.dart';

/// @nodoc
const IID_ITensorFeatureDescriptor = '{74455c80-946a-4310-a19c-ee0af028fce4}';

class ITensorFeatureDescriptor extends IInspectable {
  ITensorFeatureDescriptor.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorFeatureDescriptorVtbl>().ref;

  final _ITensorFeatureDescriptorVtbl _vtable;

  factory ITensorFeatureDescriptor.from(IInspectable interface) => interface
      .cast(ITensorFeatureDescriptor.fromPtr, IID_ITensorFeatureDescriptor);

  TensorKind get tensorKind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_TensorKind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return TensorKind.from(value.value);
    } finally {
      free(value);
    }
  }

  List<int>? get shape {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Shape.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<int>.fromPtr(value,
            iterableIid: '{7784427e-f9cc-518d-964b-e50d5ce727f1}',
            intType: IntType.int64)
        .toList();
  }
}

final class _ITensorFeatureDescriptorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_TensorKind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Shape;
}
