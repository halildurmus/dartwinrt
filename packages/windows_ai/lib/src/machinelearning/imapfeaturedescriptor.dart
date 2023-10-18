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

import 'ilearningmodelfeaturedescriptor.dart';
import 'tensorkind.dart';

/// @nodoc
const IID_IMapFeatureDescriptor = '{530424bd-a257-436d-9e60-c2981f7cc5c4}';

class IMapFeatureDescriptor extends IInspectable {
  IMapFeatureDescriptor.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMapFeatureDescriptorVtbl>().ref;

  final _IMapFeatureDescriptorVtbl _vtable;

  factory IMapFeatureDescriptor.from(IInspectable interface) =>
      interface.cast(IMapFeatureDescriptor.fromPtr, IID_IMapFeatureDescriptor);

  TensorKind get keyKind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_KeyKind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return TensorKind.from(value.value);
    } finally {
      free(value);
    }
  }

  ILearningModelFeatureDescriptor? get valueDescriptor {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ValueDescriptor.asFunction<
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

    return ILearningModelFeatureDescriptor.fromPtr(value);
  }
}

final class _IMapFeatureDescriptorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_KeyKind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ValueDescriptor;
}
