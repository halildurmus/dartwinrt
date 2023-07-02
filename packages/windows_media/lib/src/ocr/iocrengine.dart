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
import 'package:windows_graphics/windows_graphics.dart';

import 'ocrresult.dart';

/// @nodoc
const IID_IOcrEngine = '{5a14bc41-5b76-3140-b680-8825562683ac}';

class IOcrEngine extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IOcrEngine.fromPtr(super.ptr);

  factory IOcrEngine.from(IInspectable interface) =>
      IOcrEngine.fromPtr(interface.toInterface(IID_IOcrEngine));

  Future<OcrResult?> recognizeAsync(SoftwareBitmap? bitmap) {
    final retValuePtr = calloc<COMObject>();
    final bitmapPtr = bitmap == null ? nullptr : bitmap.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer bitmap,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer bitmap,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, bitmapPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<OcrResult?>.fromPtr(retValuePtr,
        creator: OcrResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Language? get recognizerLanguage {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return Language.fromPtr(retValuePtr);
  }
}
