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

import 'ocrline.dart';

/// @nodoc
const IID_IOcrResult = '{9bd235b2-175b-3d6a-92e2-388c206e2f63}';

class IOcrResult extends IInspectable {
  IOcrResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IOcrResultVtbl>().ref;

  final _IOcrResultVtbl _vtable;

  factory IOcrResult.from(IInspectable interface) =>
      interface.cast(IOcrResult.fromPtr, IID_IOcrResult);

  List<OcrLine?>? get lines {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Lines.asFunction<
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

    return IVectorView<OcrLine?>.fromPtr(value,
            iterableIid: '{6afa94a2-60d7-5dbe-942d-81aa3929c85e}',
            tObjectCreator: OcrLine.fromPtr)
        .toList();
  }

  double? get textAngle {
    final value = calloc<COMObject>();

    final hr = _vtable.get_TextAngle.asFunction<
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

    return IReference<double?>.fromPtr(value,
            referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}')
        .value;
  }

  String get text {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Text.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IOcrResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Lines;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_TextAngle;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Text;
}
