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
import 'idatareader.dart';
import 'idatareaderfactory.dart';
import 'idatareaderstatics.dart';
import 'iinputstream.dart';
import 'inputstreamoptions.dart';
import 'unicodeencoding.dart';

/// Reads data from an input stream.
class DataReader extends IInspectable implements IDataReader, IClosable {
  DataReader.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.Streams.DataReader';

  factory DataReader.createDataReader(IInputStream? inputStream) =>
      createActivationFactory(
              IDataReaderFactory.fromPtr, _className, IID_IDataReaderFactory)
          .createDataReader(inputStream);

  static DataReader? fromBuffer(IBuffer? buffer) => createActivationFactory(
          IDataReaderStatics.fromPtr, _className, IID_IDataReaderStatics)
      .fromBuffer(buffer);

  late final _iDataReader = IDataReader.from(this);

  @override
  int get unconsumedBufferLength => _iDataReader.unconsumedBufferLength;

  @override
  UnicodeEncoding get unicodeEncoding => _iDataReader.unicodeEncoding;

  @override
  set unicodeEncoding(UnicodeEncoding value) =>
      _iDataReader.unicodeEncoding = value;

  @override
  ByteOrder get byteOrder => _iDataReader.byteOrder;

  @override
  set byteOrder(ByteOrder value) => _iDataReader.byteOrder = value;

  @override
  InputStreamOptions get inputStreamOptions => _iDataReader.inputStreamOptions;

  @override
  set inputStreamOptions(InputStreamOptions value) =>
      _iDataReader.inputStreamOptions = value;

  @override
  int readByte() => _iDataReader.readByte();

  @override
  List<int> readBytes(int valueSize) => _iDataReader.readBytes(valueSize);

  @override
  IBuffer? readBuffer(int length) => _iDataReader.readBuffer(length);

  @override
  bool readBoolean() => _iDataReader.readBoolean();

  @override
  Guid readGuid() => _iDataReader.readGuid();

  @override
  int readInt16() => _iDataReader.readInt16();

  @override
  int readInt32() => _iDataReader.readInt32();

  @override
  int readInt64() => _iDataReader.readInt64();

  @override
  int readUInt16() => _iDataReader.readUInt16();

  @override
  int readUInt32() => _iDataReader.readUInt32();

  @override
  int readUInt64() => _iDataReader.readUInt64();

  @override
  double readSingle() => _iDataReader.readSingle();

  @override
  double readDouble() => _iDataReader.readDouble();

  @override
  String readString(int codeUnitCount) =>
      _iDataReader.readString(codeUnitCount);

  @override
  DateTime readDateTime() => _iDataReader.readDateTime();

  @override
  Duration readTimeSpan() => _iDataReader.readTimeSpan();

  @override
  Future<int> loadAsync(int count) => _iDataReader.loadAsync(count);

  @override
  IBuffer? detachBuffer() => _iDataReader.detachBuffer();

  @override
  IInputStream? detachStream() => _iDataReader.detachStream();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
