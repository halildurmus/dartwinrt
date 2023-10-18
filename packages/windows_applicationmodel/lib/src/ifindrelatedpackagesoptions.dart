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

import 'packagerelationship.dart';

/// @nodoc
const IID_IFindRelatedPackagesOptions =
    '{41dd7eea-b335-521f-b96c-5ea07f5b7329}';

class IFindRelatedPackagesOptions extends IInspectable {
  IFindRelatedPackagesOptions.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFindRelatedPackagesOptionsVtbl>().ref;

  final _IFindRelatedPackagesOptionsVtbl _vtable;

  factory IFindRelatedPackagesOptions.from(IInspectable interface) =>
      interface.cast(
          IFindRelatedPackagesOptions.fromPtr, IID_IFindRelatedPackagesOptions);

  PackageRelationship get relationship {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Relationship.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PackageRelationship.from(value.value);
    } finally {
      free(value);
    }
  }

  set relationship(PackageRelationship value) {
    final hr = _vtable.put_Relationship
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get includeFrameworks {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IncludeFrameworks.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set includeFrameworks(bool value) {
    final hr = _vtable.put_IncludeFrameworks
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get includeHostRuntimes {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IncludeHostRuntimes.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set includeHostRuntimes(bool value) {
    final hr = _vtable.put_IncludeHostRuntimes
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get includeOptionals {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IncludeOptionals.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set includeOptionals(bool value) {
    final hr = _vtable.put_IncludeOptionals
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get includeResources {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IncludeResources.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set includeResources(bool value) {
    final hr = _vtable.put_IncludeResources
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IFindRelatedPackagesOptionsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Relationship;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Relationship;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IncludeFrameworks;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IncludeFrameworks;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IncludeHostRuntimes;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IncludeHostRuntimes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IncludeOptionals;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IncludeOptionals;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IncludeResources;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IncludeResources;
}
