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
const IID_ILearningModelFeatureDescriptor =
    '{bc08cf7c-6ed0-4004-97ba-b9a2eecd2b4f}';

class ILearningModelFeatureDescriptor extends IInspectable {
  ILearningModelFeatureDescriptor.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_ILearningModelFeatureDescriptorVtbl>().ref;

  final _ILearningModelFeatureDescriptorVtbl _vtable;

  factory ILearningModelFeatureDescriptor.from(IInspectable interface) =>
      interface.cast(ILearningModelFeatureDescriptor.fromPtr,
          IID_ILearningModelFeatureDescriptor);

  String get name {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Name.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get description {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Description.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

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

  bool get isRequired {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsRequired.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _ILearningModelFeatureDescriptorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Name;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Description;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Kind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsRequired;
}
