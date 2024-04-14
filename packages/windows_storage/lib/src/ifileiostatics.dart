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

import 'istoragefile.dart';
import 'streams/ibuffer.dart';
import 'streams/unicodeencoding.dart';

/// @nodoc
const IID_IFileIOStatics = '{887411eb-7f54-4732-a5f0-5e43e3b8c2f5}';

class IFileIOStatics extends IInspectable {
  IFileIOStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFileIOStaticsVtbl>().ref;

  final _IFileIOStaticsVtbl _vtable;

  factory IFileIOStatics.from(IInspectable interface) =>
      interface.cast(IFileIOStatics.fromPtr, IID_IFileIOStatics);

  Future<String> readTextAsync(IStorageFile? file) {
    final textOperation = calloc<COMObject>();

    final hr = _vtable.ReadTextAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file,
                Pointer<COMObject> textOperation)>()(
        lpVtbl, file.lpVtbl, textOperation);

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

    final hr = _vtable.ReadTextWithEncodingAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file, int encoding,
                Pointer<COMObject> textOperation)>()(
        lpVtbl, file.lpVtbl, encoding.value, textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<String>.fromPtr(textOperation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> writeTextAsync(IStorageFile? file, String contents) {
    final textOperation = calloc<COMObject>();

    final hr = _vtable.WriteTextAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file, int contents,
                Pointer<COMObject> textOperation)>()(
        lpVtbl, file.lpVtbl, contents.toHString(), textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(textOperation).toFuture();
  }

  Future<void> writeTextWithEncodingAsync(
      IStorageFile? file, String contents, UnicodeEncoding encoding) {
    final textOperation = calloc<COMObject>();

    final hr = _vtable.WriteTextWithEncodingAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file, int contents,
                int encoding, Pointer<COMObject> textOperation)>()(lpVtbl,
        file.lpVtbl, contents.toHString(), encoding.value, textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(textOperation).toFuture();
  }

  Future<void> appendTextAsync(IStorageFile? file, String contents) {
    final textOperation = calloc<COMObject>();

    final hr = _vtable.AppendTextAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file, int contents,
                Pointer<COMObject> textOperation)>()(
        lpVtbl, file.lpVtbl, contents.toHString(), textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(textOperation).toFuture();
  }

  Future<void> appendTextWithEncodingAsync(
      IStorageFile? file, String contents, UnicodeEncoding encoding) {
    final textOperation = calloc<COMObject>();

    final hr = _vtable.AppendTextWithEncodingAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file, int contents,
                int encoding, Pointer<COMObject> textOperation)>()(lpVtbl,
        file.lpVtbl, contents.toHString(), encoding.value, textOperation);

    if (FAILED(hr)) {
      free(textOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(textOperation).toFuture();
  }

  Future<IVector<String>> readLinesAsync(IStorageFile? file) {
    final linesOperation = calloc<COMObject>();

    final hr = _vtable.ReadLinesAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file,
                Pointer<COMObject> linesOperation)>()(
        lpVtbl, file.lpVtbl, linesOperation);

    if (FAILED(hr)) {
      free(linesOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVector<String>>.fromPtr(
        linesOperation,
        tResultObjectCreator: (ptr) => IVector.fromPtr(ptr,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IVector<String>> readLinesWithEncodingAsync(
      IStorageFile? file, UnicodeEncoding encoding) {
    final linesOperation = calloc<COMObject>();

    final hr = _vtable.ReadLinesWithEncodingAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file, int encoding,
                Pointer<COMObject> linesOperation)>()(
        lpVtbl, file.lpVtbl, encoding.value, linesOperation);

    if (FAILED(hr)) {
      free(linesOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVector<String>>.fromPtr(
        linesOperation,
        tResultObjectCreator: (ptr) => IVector.fromPtr(ptr,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> writeLinesAsync(IStorageFile? file, IIterable<String>? lines) {
    final operation = calloc<COMObject>();

    final hr = _vtable.WriteLinesAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file,
                VTablePointer lines, Pointer<COMObject> operation)>()(
        lpVtbl, file.lpVtbl, lines.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> writeLinesWithEncodingAsync(
      IStorageFile? file, IIterable<String>? lines, UnicodeEncoding encoding) {
    final operation = calloc<COMObject>();

    final hr = _vtable.WriteLinesWithEncodingAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer file,
                VTablePointer lines,
                int encoding,
                Pointer<COMObject> operation)>()(
        lpVtbl, file.lpVtbl, lines.lpVtbl, encoding.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> appendLinesAsync(IStorageFile? file, IIterable<String>? lines) {
    final operation = calloc<COMObject>();

    final hr = _vtable.AppendLinesAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file,
                VTablePointer lines, Pointer<COMObject> operation)>()(
        lpVtbl, file.lpVtbl, lines.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> appendLinesWithEncodingAsync(
      IStorageFile? file, IIterable<String>? lines, UnicodeEncoding encoding) {
    final operation = calloc<COMObject>();

    final hr = _vtable.AppendLinesWithEncodingAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer file,
                VTablePointer lines,
                int encoding,
                Pointer<COMObject> operation)>()(
        lpVtbl, file.lpVtbl, lines.lpVtbl, encoding.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<IBuffer?> readBufferAsync(IStorageFile? file) {
    final operation = calloc<COMObject>();

    final hr = _vtable.ReadBufferAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer file,
            Pointer<COMObject> operation)>()(lpVtbl, file.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IBuffer?>.fromPtr(operation,
        tResultObjectCreator: IBuffer.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> writeBufferAsync(IStorageFile? file, IBuffer? buffer) {
    final operation = calloc<COMObject>();

    final hr = _vtable.WriteBufferAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file,
                VTablePointer buffer, Pointer<COMObject> operation)>()(
        lpVtbl, file.lpVtbl, buffer.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> writeBytesAsync(IStorageFile? file, List<int> buffer) {
    final operation = calloc<COMObject>();
    final bufferArray = buffer.toArray<Uint8>();

    final hr = _vtable.WriteBytesAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer file,
                int bufferSize,
                Pointer<Uint8> buffer,
                Pointer<COMObject> operation)>()(
        lpVtbl, file.lpVtbl, buffer.length, bufferArray, operation);

    free(bufferArray);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _IFileIOStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer file,
              Pointer<COMObject> textOperation)>> ReadTextAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              Int32 encoding,
              Pointer<COMObject> textOperation)>> ReadTextWithEncodingAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              IntPtr contents,
              Pointer<COMObject> textOperation)>> WriteTextAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              IntPtr contents,
              Int32 encoding,
              Pointer<COMObject> textOperation)>> WriteTextWithEncodingAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              IntPtr contents,
              Pointer<COMObject> textOperation)>> AppendTextAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              IntPtr contents,
              Int32 encoding,
              Pointer<COMObject> textOperation)>> AppendTextWithEncodingAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer file,
              Pointer<COMObject> linesOperation)>> ReadLinesAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              Int32 encoding,
              Pointer<COMObject> linesOperation)>> ReadLinesWithEncodingAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              VTablePointer lines,
              Pointer<COMObject> operation)>> WriteLinesAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              VTablePointer lines,
              Int32 encoding,
              Pointer<COMObject> operation)>> WriteLinesWithEncodingAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              VTablePointer lines,
              Pointer<COMObject> operation)>> AppendLinesAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              VTablePointer lines,
              Int32 encoding,
              Pointer<COMObject> operation)>> AppendLinesWithEncodingAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer file,
              Pointer<COMObject> operation)>> ReadBufferAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              VTablePointer buffer,
              Pointer<COMObject> operation)>> WriteBufferAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              Uint32 bufferSize,
              Pointer<Uint8> buffer,
              Pointer<COMObject> operation)>> WriteBytesAsync;
}
