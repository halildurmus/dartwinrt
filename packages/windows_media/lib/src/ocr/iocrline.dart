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

import 'ocrword.dart';

/// @nodoc
const IID_IOcrLine = '{0043a16f-e31f-3a24-899c-d444bd088124}';

class IOcrLine extends IInspectable {
  IOcrLine.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IOcrLineVtbl>().ref;

  final _IOcrLineVtbl _vtable;

  factory IOcrLine.from(IInspectable interface) =>
      interface.cast(IOcrLine.fromPtr, IID_IOcrLine);

  List<OcrWord?>? get words {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Words.asFunction<
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

    return IVectorView<OcrWord?>.fromPtr(value,
            iterableIid: '{a0ce663a-46d0-55e5-928e-251eb67a1e99}',
            tObjectCreator: OcrWord.fromPtr)
        .toList();
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

final class _IOcrLineVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Words;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Text;
}
