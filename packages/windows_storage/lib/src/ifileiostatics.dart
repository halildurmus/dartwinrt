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
    final textOperation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> textOperation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> textOperation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<String>.fromPtr(textOperation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<String> readTextWithEncodingAsync(
      IStorageFile? file, UnicodeEncoding encoding) {
    final textOperation = calloc<COMObject>();

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
                                Pointer<COMObject> textOperation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        int encoding, Pointer<COMObject> textOperation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, encoding.value, textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<String>.fromPtr(textOperation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> writeTextAsync(IStorageFile? file, String contents) {
    final textOperation = calloc<COMObject>();

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
                                Pointer<COMObject> textOperation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        int contents, Pointer<COMObject> textOperation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, contents.toHString(), textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(textOperation).toFuture();
  }

  Future<void> writeTextWithEncodingAsync(
      IStorageFile? file, String contents, UnicodeEncoding encoding) {
    final textOperation = calloc<COMObject>();

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
                            Pointer<COMObject> textOperation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    int contents,
                    int encoding,
                    Pointer<COMObject> textOperation)>()(ptr.ref.lpVtbl,
        file.lpVtbl, contents.toHString(), encoding.value, textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(textOperation).toFuture();
  }

  Future<void> appendTextAsync(IStorageFile? file, String contents) {
    final textOperation = calloc<COMObject>();

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
                                Pointer<COMObject> textOperation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        int contents, Pointer<COMObject> textOperation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, contents.toHString(), textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(textOperation).toFuture();
  }

  Future<void> appendTextWithEncodingAsync(
      IStorageFile? file, String contents, UnicodeEncoding encoding) {
    final textOperation = calloc<COMObject>();

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
                            Pointer<COMObject> textOperation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    int contents,
                    int encoding,
                    Pointer<COMObject> textOperation)>()(ptr.ref.lpVtbl,
        file.lpVtbl, contents.toHString(), encoding.value, textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(textOperation).toFuture();
  }

  Future<IVector<String>> readLinesAsync(IStorageFile? file) {
    final linesOperation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> linesOperation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> linesOperation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, linesOperation);

    if (FAILED(hr)) {
      free(linesOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVector<String>>.fromPtr(
        linesOperation,
        creator: (ptr) => IVector.fromPtr(ptr,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IVector<String>> readLinesWithEncodingAsync(
      IStorageFile? file, UnicodeEncoding encoding) {
    final linesOperation = calloc<COMObject>();

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
                                Pointer<COMObject> linesOperation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        int encoding, Pointer<COMObject> linesOperation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, encoding.value, linesOperation);

    if (FAILED(hr)) {
      free(linesOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVector<String>>.fromPtr(
        linesOperation,
        creator: (ptr) => IVector.fromPtr(ptr,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> writeLinesAsync(IStorageFile? file, IIterable<String>? lines) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(14)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                VTablePointer lines,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        VTablePointer lines, Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, lines.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> writeLinesWithEncodingAsync(
      IStorageFile? file, IIterable<String>? lines, UnicodeEncoding encoding) {
    final operation = calloc<COMObject>();

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
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    VTablePointer lines,
                    int encoding,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, file.lpVtbl, lines.lpVtbl, encoding.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> appendLinesAsync(IStorageFile? file, IIterable<String>? lines) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(16)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                VTablePointer lines,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        VTablePointer lines, Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, lines.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> appendLinesWithEncodingAsync(
      IStorageFile? file, IIterable<String>? lines, UnicodeEncoding encoding) {
    final operation = calloc<COMObject>();

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
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    VTablePointer lines,
                    int encoding,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, file.lpVtbl, lines.lpVtbl, encoding.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<IBuffer?> readBufferAsync(IStorageFile? file) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(18)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IBuffer?>.fromPtr(operation, creator: IBuffer.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> writeBufferAsync(IStorageFile? file, IBuffer? buffer) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(19)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                VTablePointer buffer,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        VTablePointer buffer, Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, buffer.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> writeBytesAsync(IStorageFile? file, List<int> buffer) {
    final operation = calloc<COMObject>();
    final bufferArray = calloc<Uint8>(buffer.length);
    for (var i = 0; i < buffer.length; i++) {
      bufferArray[i] = buffer[i];
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
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    int bufferSize,
                    Pointer<Uint8> buffer,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, file.lpVtbl, buffer.length, bufferArray, operation);

    free(bufferArray);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}
