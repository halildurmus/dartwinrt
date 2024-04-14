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
const IID_INumeralSystemTranslator = '{28f5bc2c-8c23-4234-ad2e-fa5a3a426e9b}';

class INumeralSystemTranslator extends IInspectable {
  INumeralSystemTranslator.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INumeralSystemTranslatorVtbl>().ref;

  final _INumeralSystemTranslatorVtbl _vtable;

  factory INumeralSystemTranslator.from(IInspectable interface) => interface
      .cast(INumeralSystemTranslator.fromPtr, IID_INumeralSystemTranslator);

  List<String>? get languages {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Languages.asFunction<
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

    return IVectorView<String>.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')
        .toList();
  }

  String get resolvedLanguage {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ResolvedLanguage.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get numeralSystem {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_NumeralSystem.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set numeralSystem(String value) {
    final hr = _vtable.put_NumeralSystem
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String translateNumerals(String value) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.TranslateNumerals.asFunction<
          int Function(VTablePointer lpVtbl, int value,
              Pointer<IntPtr> result)>()(lpVtbl, value.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }
}

final class _INumeralSystemTranslatorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Languages;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ResolvedLanguage;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_NumeralSystem;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_NumeralSystem;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr value, Pointer<IntPtr> result)>>
      TranslateNumerals;
}
