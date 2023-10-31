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
import 'package:windows_globalization/windows_globalization.dart';
import 'package:windows_graphics/windows_graphics.dart';

import 'ocrresult.dart';

/// @nodoc
const IID_IOcrEngine = '{5a14bc41-5b76-3140-b680-8825562683ac}';

class IOcrEngine extends IInspectable {
  IOcrEngine.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IOcrEngineVtbl>().ref;

  final _IOcrEngineVtbl _vtable;

  factory IOcrEngine.from(IInspectable interface) =>
      interface.cast(IOcrEngine.fromPtr, IID_IOcrEngine);

  Future<OcrResult?> recognizeAsync(SoftwareBitmap? bitmap) {
    final result = calloc<COMObject>();

    final hr = _vtable.RecognizeAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer bitmap,
            Pointer<COMObject> result)>()(lpVtbl, bitmap.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<OcrResult?>.fromPtr(result,
        tResultObjectCreator: OcrResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Language? get recognizerLanguage {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RecognizerLanguage.asFunction<
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

    return Language.fromPtr(value);
  }
}

final class _IOcrEngineVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer bitmap,
              Pointer<COMObject> result)>> RecognizeAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RecognizerLanguage;
}
