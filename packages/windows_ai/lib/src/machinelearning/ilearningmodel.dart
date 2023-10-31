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

/// @nodoc
const IID_ILearningModel = '{5b8e4920-489f-4e86-9128-265a327b78fa}';

class ILearningModel extends IInspectable {
  ILearningModel.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILearningModelVtbl>().ref;

  final _ILearningModelVtbl _vtable;

  factory ILearningModel.from(IInspectable interface) =>
      interface.cast(ILearningModel.fromPtr, IID_ILearningModel);

  String get author {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Author.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

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

  String get domain {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Domain.asFunction<
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

  int get version {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_Version.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Map<String, String>? get metadata {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Metadata.asFunction<
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

    return IMapView<String, String>.fromPtr(value,
            iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')
        .toMap();
  }

  List<ILearningModelFeatureDescriptor?>? get inputFeatures {
    final value = calloc<COMObject>();

    final hr = _vtable.get_InputFeatures.asFunction<
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

    return IVectorView<ILearningModelFeatureDescriptor?>.fromPtr(value,
            iterableIid: '{0fa50877-6792-56b7-af46-430a8901894a}',
            tObjectCreator: ILearningModelFeatureDescriptor.fromPtr)
        .toList();
  }

  List<ILearningModelFeatureDescriptor?>? get outputFeatures {
    final value = calloc<COMObject>();

    final hr = _vtable.get_OutputFeatures.asFunction<
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

    return IVectorView<ILearningModelFeatureDescriptor?>.fromPtr(value,
            iterableIid: '{0fa50877-6792-56b7-af46-430a8901894a}',
            tObjectCreator: ILearningModelFeatureDescriptor.fromPtr)
        .toList();
  }
}

final class _ILearningModelVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Author;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Name;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Domain;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Description;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_Version;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Metadata;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_InputFeatures;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_OutputFeatures;
}
