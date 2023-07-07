// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_globalization/windows_globalization.dart';

import 'ocrengine.dart';

/// @nodoc
const IID_IOcrEngineStatics = '{5bffa85a-3384-3540-9940-699120d428a8}';

class IOcrEngineStatics extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IOcrEngineStatics.fromPtr(super.ptr);

  factory IOcrEngineStatics.from(IInspectable interface) =>
      IOcrEngineStatics.fromPtr(interface.toInterface(IID_IOcrEngineStatics));

  int get maxImageDimension {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<Language?> get availableRecognizerLanguages {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<Language?>.fromPtr(value,
            iterableIid: '{48409a10-61b6-5db1-a69d-8abc46ac608a}',
            creator: Language.fromPtr)
        .toList();
  }

  bool isLanguageSupported(Language? language) {
    final result = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              VTablePointer language, Pointer<Bool> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer language,
                      Pointer<Bool> result)>()(
          ptr.ref.lpVtbl, language?.ptr.ref.lpVtbl ?? nullptr, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  OcrEngine? tryCreateFromLanguage(Language? language) {
    final result = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer language,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer language,
                        Pointer<COMObject> result)>()(
            ptr.ref.lpVtbl, language?.ptr.ref.lpVtbl ?? nullptr, result);

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

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

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
