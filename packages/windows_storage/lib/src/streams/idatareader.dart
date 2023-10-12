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

import 'byteorder.dart';
import 'datareaderloadoperation.dart';
import 'ibuffer.dart';
import 'iinputstream.dart';
import 'inputstreamoptions.dart';
import 'unicodeencoding.dart';

/// @nodoc
const IID_IDataReader = '{e2b50029-b4c1-4314-a4b8-fb813a2f275e}';

class IDataReader extends IInspectable {
  // vtable begins at 6, is 26 entries long.
  IDataReader.fromPtr(super.ptr);

  factory IDataReader.from(IInspectable interface) =>
      interface.cast(IDataReader.fromPtr, IID_IDataReader);

  int get unconsumedBufferLength {
    final value = calloc<Uint32>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  UnicodeEncoding get unicodeEncoding {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return UnicodeEncoding.from(value.value);
    } finally {
      free(value);
    }
  }

  set unicodeEncoding(UnicodeEncoding value) {
    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  ByteOrder get byteOrder {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ByteOrder.from(value.value);
    } finally {
      free(value);
    }
  }

  set byteOrder(ByteOrder value) {
    final hr = vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  InputStreamOptions get inputStreamOptions {
    final value = calloc<Uint32>();

    try {
      final hr = vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return InputStreamOptions.from(value.value);
    } finally {
      free(value);
    }
  }

  set inputStreamOptions(InputStreamOptions value) {
    final hr =
        vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint32 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int readByte() {
    final value = calloc<Uint8>();

    try {
      final hr = vtable
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Uint8> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Uint8> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<int> readBytes(int valueSize) {
    final value = calloc<Uint8>(valueSize);

    try {
      final hr = vtable
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                          Pointer<Uint8> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int valueSize,
                  Pointer<Uint8> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toList(length: valueSize);
    } finally {
      free(value);
    }
  }

  IBuffer? readBuffer(int length) {
    final buffer = calloc<COMObject>();

    final hr = vtable
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 length,
                        Pointer<COMObject> buffer)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int length,
                Pointer<COMObject> buffer)>()(lpVtbl, length, buffer);

    if (FAILED(hr)) {
      free(buffer);
      throwWindowsException(hr);
    }

    if (buffer.isNull) {
      free(buffer);
      return null;
    }

    return IBuffer.fromPtr(buffer);
  }

  bool readBoolean() {
    final value = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Guid readGuid() {
    final value = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  int readInt16() {
    final value = calloc<Int16>();

    try {
      final hr = vtable
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int16> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int16> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readInt32() {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readInt64() {
    final value = calloc<Int64>();

    try {
      final hr = vtable
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readUInt16() {
    final value = calloc<Uint16>();

    try {
      final hr = vtable
              .elementAt(21)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint16> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint16> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readUInt32() {
    final value = calloc<Uint32>();

    try {
      final hr = vtable
              .elementAt(22)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readUInt64() {
    final value = calloc<Uint64>();

    try {
      final hr = vtable
              .elementAt(23)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint64> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double readSingle() {
    final value = calloc<Float>();

    try {
      final hr = vtable
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Float> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double readDouble() {
    final value = calloc<Double>();

    try {
      final hr = vtable
              .elementAt(25)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Double> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Double> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String readString(int codeUnitCount) {
    final value = calloc<IntPtr>();

    try {
      final hr = vtable
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Uint32 codeUnitCount, Pointer<IntPtr> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int codeUnitCount,
                  Pointer<IntPtr> value)>()(lpVtbl, codeUnitCount, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  DateTime readDateTime() {
    final value = calloc<Int64>();

    try {
      final hr = vtable
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }

  Duration readTimeSpan() {
    final value = calloc<Int64>();

    try {
      final hr = vtable
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDuration();
    } finally {
      free(value);
    }
  }

  Future<int> loadAsync(int count) {
    final operation = calloc<COMObject>();

    final hr = vtable
        .elementAt(29)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 count,
                        Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int count,
                Pointer<COMObject> operation)>()(lpVtbl, count, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<int>.fromPtr(operation, intType: IntType.uint32);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  IBuffer? detachBuffer() {
    final buffer = calloc<COMObject>();

    final hr = vtable
        .elementAt(30)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> buffer)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> buffer)>()(lpVtbl, buffer);

    if (FAILED(hr)) {
      free(buffer);
      throwWindowsException(hr);
    }

    if (buffer.isNull) {
      free(buffer);
      return null;
    }

    return IBuffer.fromPtr(buffer);
  }

  IInputStream? detachStream() {
    final stream = calloc<COMObject>();

    final hr = vtable
        .elementAt(31)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> stream)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> stream)>()(lpVtbl, stream);

    if (FAILED(hr)) {
      free(stream);
      throwWindowsException(hr);
    }

    if (stream.isNull) {
      free(stream);
      return null;
    }

    return IInputStream.fromPtr(stream);
  }
}
