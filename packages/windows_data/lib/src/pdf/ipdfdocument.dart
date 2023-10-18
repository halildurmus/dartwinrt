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

import 'pdfpage.dart';

/// @nodoc
const IID_IPdfDocument = '{ac7ebedd-80fa-4089-846e-81b77ff5a86c}';

class IPdfDocument extends IInspectable {
  IPdfDocument.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPdfDocumentVtbl>().ref;

  final _IPdfDocumentVtbl _vtable;

  factory IPdfDocument.from(IInspectable interface) =>
      interface.cast(IPdfDocument.fromPtr, IID_IPdfDocument);

  PdfPage? getPage(int pageIndex) {
    final pdfPage = calloc<COMObject>();

    final hr = _vtable.GetPage.asFunction<
        int Function(VTablePointer lpVtbl, int pageIndex,
            Pointer<COMObject> pdfPage)>()(lpVtbl, pageIndex, pdfPage);

    if (FAILED(hr)) {
      free(pdfPage);
      throwWindowsException(hr);
    }

    if (pdfPage.isNull) {
      free(pdfPage);
      return null;
    }

    return PdfPage.fromPtr(pdfPage);
  }

  int get pageCount {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_PageCount.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get isPasswordProtected {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsPasswordProtected.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IPdfDocumentVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 pageIndex,
              Pointer<COMObject> pdfPage)>> GetPage;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_PageCount;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsPasswordProtected;
}
