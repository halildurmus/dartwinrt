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
const IID_ILanguageStatics = '{b23cd557-0865-46d4-89b8-d59be8990f0d}';

class ILanguageStatics extends IInspectable {
  ILanguageStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILanguageStaticsVtbl>().ref;

  final _ILanguageStaticsVtbl _vtable;

  factory ILanguageStatics.from(IInspectable interface) =>
      interface.cast(ILanguageStatics.fromPtr, IID_ILanguageStatics);

  bool isWellFormed(String languageTag) {
    final result = calloc<Bool>();

    try {
      final hr = _vtable.IsWellFormed.asFunction<
          int Function(VTablePointer lpVtbl, int languageTag,
              Pointer<Bool> result)>()(lpVtbl, languageTag.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  String get currentInputMethodLanguageTag {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_CurrentInputMethodLanguageTag.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _ILanguageStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr languageTag,
              Pointer<Bool> result)>> IsWellFormed;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_CurrentInputMethodLanguageTag;
}
