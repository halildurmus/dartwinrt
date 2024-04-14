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
const IID_IJapanesePhoneme = '{2f6a9300-e85b-43e6-897d-5d82f862df21}';

class IJapanesePhoneme extends IInspectable {
  IJapanesePhoneme.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IJapanesePhonemeVtbl>().ref;

  final _IJapanesePhonemeVtbl _vtable;

  factory IJapanesePhoneme.from(IInspectable interface) =>
      interface.cast(IJapanesePhoneme.fromPtr, IID_IJapanesePhoneme);

  String get displayText {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayText.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get yomiText {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_YomiText.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  bool get isPhraseStart {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsPhraseStart.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IJapanesePhonemeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayText;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_YomiText;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsPhraseStart;
}
