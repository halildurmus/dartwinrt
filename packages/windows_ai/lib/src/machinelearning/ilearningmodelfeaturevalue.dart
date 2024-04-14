// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
  ILearningModelFeatureValue.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILearningModelFeatureValueVtbl>().ref;

  final _ILearningModelFeatureValueVtbl _vtable;

  factory ILearningModelFeatureValue.from(IInspectable interface) => interface
      .cast(ILearningModelFeatureValue.fromPtr, IID_ILearningModelFeatureValue);

  LearningModelFeatureKind get kind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Kind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return LearningModelFeatureKind.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _ILearningModelFeatureValueVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Kind;
}
