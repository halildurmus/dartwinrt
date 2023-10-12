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
import 'package:windows_storage/windows_storage.dart';

import 'pdfdocument.dart';

/// @nodoc
const IID_IPdfDocumentStatics = '{433a0b5f-c007-4788-90f2-08143d922599}';

class IPdfDocumentStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IPdfDocumentStatics.fromPtr(super.ptr);

  factory IPdfDocumentStatics.from(IInspectable interface) =>
      interface.cast(IPdfDocumentStatics.fromPtr, IID_IPdfDocumentStatics);

  Future<PdfDocument?> loadFromFileAsync(IStorageFile? file) {
    final asyncInfo = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> asyncInfo)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> asyncInfo)>()(
            lpVtbl, file.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<PdfDocument?>.fromPtr(asyncInfo,
        creator: PdfDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<PdfDocument?> loadFromFileWithPasswordAsync(
      IStorageFile? file, String password) {
    final asyncInfo = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                IntPtr password,
                                Pointer<COMObject> asyncInfo)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        int password, Pointer<COMObject> asyncInfo)>()(
            lpVtbl, file.lpVtbl, password.toHString(), asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<PdfDocument?>.fromPtr(asyncInfo,
        creator: PdfDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<PdfDocument?> loadFromStreamAsync(IRandomAccessStream? inputStream) {
    final asyncInfo = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer inputStream,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer inputStream,
                    Pointer<COMObject> asyncInfo)>()(
        lpVtbl, inputStream.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<PdfDocument?>.fromPtr(asyncInfo,
        creator: PdfDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<PdfDocument?> loadFromStreamWithPasswordAsync(
      IRandomAccessStream? inputStream, String password) {
    final asyncInfo = calloc<COMObject>();

    final hr = vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer inputStream,
                            IntPtr password,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer inputStream,
                    int password, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, inputStream.lpVtbl, password.toHString(), asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<PdfDocument?>.fromPtr(asyncInfo,
        creator: PdfDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
