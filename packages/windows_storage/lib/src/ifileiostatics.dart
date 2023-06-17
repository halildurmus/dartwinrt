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

import 'istoragefile.dart';
import 'streams/ibuffer.dart';
import 'streams/unicodeencoding.dart';

/// @nodoc
const IID_IFileIOStatics = '{887411eb-7f54-4732-a5f0-5e43e3b8c2f5}';

class IFileIOStatics extends IInspectable {
  // vtable begins at 6, is 15 entries long.
  IFileIOStatics.fromPtr(super.ptr);

  factory IFileIOStatics.from(IInspectable interface) =>
      IFileIOStatics.fromPtr(interface.toInterface(IID_IFileIOStatics));

  Future<String> readTextAsync(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<String>.fromPtr(retValuePtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<String> readTextWithEncodingAsync(
      IStorageFile? file, UnicodeEncoding encoding) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Int32 encoding,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        int encoding, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, encoding.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<String>.fromPtr(retValuePtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> writeTextAsync(IStorageFile? file, String contents) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final contentsHString = contents.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                IntPtr contents,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        int contents, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, contentsHString, retValuePtr);

    WindowsDeleteString(contentsHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> writeTextWithEncodingAsync(
      IStorageFile? file, String contents, UnicodeEncoding encoding) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final contentsHString = contents.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            IntPtr contents,
                            Int32 encoding,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    int contents,
                    int encoding,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, contentsHString, encoding.value, retValuePtr);

    WindowsDeleteString(contentsHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> appendTextAsync(IStorageFile? file, String contents) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final contentsHString = contents.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                IntPtr contents,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        int contents, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, contentsHString, retValuePtr);

    WindowsDeleteString(contentsHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> appendTextWithEncodingAsync(
      IStorageFile? file, String contents, UnicodeEncoding encoding) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final contentsHString = contents.toHString();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            IntPtr contents,
                            Int32 encoding,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    int contents,
                    int encoding,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, contentsHString, encoding.value, retValuePtr);

    WindowsDeleteString(contentsHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<IVector<String>> readLinesAsync(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVector<String>>.fromPtr(retValuePtr,
        creator: (ptr) => IVector.fromPtr(ptr,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IVector<String>> readLinesWithEncodingAsync(
      IStorageFile? file, UnicodeEncoding encoding) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Int32 encoding,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        int encoding, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, encoding.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVector<String>>.fromPtr(retValuePtr,
        creator: (ptr) => IVector.fromPtr(ptr,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> writeLinesAsync(IStorageFile? file, IIterable<String>? lines) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final linesPtr = lines == null
        ? nullptr
        : IInspectable(
                lines.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            VTablePointer lines,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer file,
                    VTablePointer lines, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, linesPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> writeLinesWithEncodingAsync(
      IStorageFile? file, IIterable<String>? lines, UnicodeEncoding encoding) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final linesPtr = lines == null
        ? nullptr
        : IInspectable(
                lines.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            VTablePointer lines,
                            Int32 encoding,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    VTablePointer lines,
                    int encoding,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, linesPtr, encoding.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> appendLinesAsync(IStorageFile? file, IIterable<String>? lines) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final linesPtr = lines == null
        ? nullptr
        : IInspectable(
                lines.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            VTablePointer lines,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer file,
                    VTablePointer lines, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, linesPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> appendLinesWithEncodingAsync(
      IStorageFile? file, IIterable<String>? lines, UnicodeEncoding encoding) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final linesPtr = lines == null
        ? nullptr
        : IInspectable(
                lines.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            VTablePointer lines,
                            Int32 encoding,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    VTablePointer lines,
                    int encoding,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, linesPtr, encoding.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<IBuffer?> readBufferAsync(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(18)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IBuffer?>.fromPtr(retValuePtr,
        creator: IBuffer.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> writeBufferAsync(IStorageFile? file, IBuffer? buffer) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final bufferPtr = buffer == null ? nullptr : buffer.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            VTablePointer buffer,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer file,
                    VTablePointer buffer, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, bufferPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> writeBytesAsync(IStorageFile? file, List<int> buffer) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final pBufferArray = calloc<Uint8>(buffer.length);
    for (var i = 0; i < buffer.length; i++) {
      pBufferArray[i] = buffer.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            Uint32 bufferSize,
                            Pointer<Uint8> buffer,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    int bufferSize,
                    Pointer<Uint8> buffer,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, buffer.length, pBufferArray, retValuePtr);

    free(pBufferArray);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }
}
