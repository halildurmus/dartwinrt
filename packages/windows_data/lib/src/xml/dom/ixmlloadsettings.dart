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

/// @nodoc
const IID_IXmlLoadSettings = '{58aa07a8-fed6-46f7-b4c5-fb1ba72108d6}';

class IXmlLoadSettings extends IInspectable {
  IXmlLoadSettings.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlLoadSettingsVtbl>().ref;

  final _IXmlLoadSettingsVtbl _vtable;

  factory IXmlLoadSettings.from(IInspectable interface) =>
      interface.cast(IXmlLoadSettings.fromPtr, IID_IXmlLoadSettings);

  int get maxElementDepth {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_MaxElementDepth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set maxElementDepth(int value) {
    final hr = _vtable.put_MaxElementDepth
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get prohibitDtd {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ProhibitDtd.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set prohibitDtd(bool value) {
    final hr = _vtable.put_ProhibitDtd
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get resolveExternals {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ResolveExternals.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set resolveExternals(bool value) {
    final hr = _vtable.put_ResolveExternals
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get validateOnParse {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ValidateOnParse.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set validateOnParse(bool value) {
    final hr = _vtable.put_ValidateOnParse
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get elementContentWhiteSpace {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ElementContentWhiteSpace.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set elementContentWhiteSpace(bool value) {
    final hr = _vtable.put_ElementContentWhiteSpace
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IXmlLoadSettingsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_MaxElementDepth;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_MaxElementDepth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ProhibitDtd;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_ProhibitDtd;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ResolveExternals;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_ResolveExternals;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ValidateOnParse;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_ValidateOnParse;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ElementContentWhiteSpace;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_ElementContentWhiteSpace;
}
