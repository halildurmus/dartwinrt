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
import 'package:windows_globalization/windows_globalization.dart';

import 'ocrengine.dart';

/// @nodoc
const IID_IOcrEngineStatics = '{5bffa85a-3384-3540-9940-699120d428a8}';

class IOcrEngineStatics extends IInspectable {
  IOcrEngineStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IOcrEngineStaticsVtbl>().ref;

  final _IOcrEngineStaticsVtbl _vtable;

  factory IOcrEngineStatics.from(IInspectable interface) =>
      interface.cast(IOcrEngineStatics.fromPtr, IID_IOcrEngineStatics);

  int get maxImageDimension {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_MaxImageDimension.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<Language?>? get availableRecognizerLanguages {
    final value = calloc<COMObject>();

    final hr = _vtable.get_AvailableRecognizerLanguages.asFunction<
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

    return IVectorView<Language?>.fromPtr(value,
            iterableIid: '{48409a10-61b6-5db1-a69d-8abc46ac608a}',
            tObjectCreator: Language.fromPtr)
        .toList();
  }

  bool isLanguageSupported(Language? language) {
    final result = calloc<Bool>();

    try {
      final hr = _vtable.IsLanguageSupported.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer language,
              Pointer<Bool> result)>()(lpVtbl, language.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  OcrEngine? tryCreateFromLanguage(Language? language) {
    final result = calloc<COMObject>();

    final hr = _vtable.TryCreateFromLanguage.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer language,
            Pointer<COMObject> result)>()(lpVtbl, language.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return OcrEngine.fromPtr(result);
  }

  OcrEngine? tryCreateFromUserProfileLanguages() {
    final result = calloc<COMObject>();

    final hr = _vtable.TryCreateFromUserProfileLanguages.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return OcrEngine.fromPtr(result);
  }
}

final class _IOcrEngineStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_MaxImageDimension;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_AvailableRecognizerLanguages;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer language,
              Pointer<Bool> result)>> IsLanguageSupported;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer language,
              Pointer<COMObject> result)>> TryCreateFromLanguage;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      TryCreateFromUserProfileLanguages;
}
