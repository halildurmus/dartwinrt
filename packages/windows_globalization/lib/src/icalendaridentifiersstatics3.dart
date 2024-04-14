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

/// @nodoc
const IID_ICalendarIdentifiersStatics3 =
    '{2c225423-1fad-40c0-9334-a8eb90db04f5}';

class ICalendarIdentifiersStatics3 extends IInspectable {
  ICalendarIdentifiersStatics3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICalendarIdentifiersStatics3Vtbl>().ref;

  final _ICalendarIdentifiersStatics3Vtbl _vtable;

  factory ICalendarIdentifiersStatics3.from(IInspectable interface) =>
      interface.cast(ICalendarIdentifiersStatics3.fromPtr,
          IID_ICalendarIdentifiersStatics3);

  String get chineseLunar {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ChineseLunar.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get japaneseLunar {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_JapaneseLunar.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get koreanLunar {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_KoreanLunar.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get taiwanLunar {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_TaiwanLunar.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get vietnameseLunar {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_VietnameseLunar.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _ICalendarIdentifiersStatics3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ChineseLunar;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_JapaneseLunar;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_KoreanLunar;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_TaiwanLunar;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_VietnameseLunar;
}
