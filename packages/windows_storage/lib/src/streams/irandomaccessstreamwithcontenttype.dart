// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'ibuffer.dart';
import 'icontenttypeprovider.dart';
import 'iinputstream.dart';
import 'ioutputstream.dart';
import 'irandomaccessstream.dart';

/// @nodoc
const IID_IRandomAccessStreamWithContentType =
    '{cc254827-4b3d-438f-9232-10c76bc7e038}';

/// Supports random access of data in input and output streams for a
/// specified data format.
///
/// {@category interface}
class IRandomAccessStreamWithContentType extends IInspectable
    implements
        IRandomAccessStream,
        IClosable,
        IInputStream,
        IOutputStream,
        IContentTypeProvider {
  // vtable begins at 6, is 0 entries long.
  IRandomAccessStreamWithContentType.fromRawPointer(super.ptr);

  factory IRandomAccessStreamWithContentType.from(IInspectable interface) =>
      IRandomAccessStreamWithContentType.fromRawPointer(
          interface.toInterface(IID_IRandomAccessStreamWithContentType));

  // IRandomAccessStream methods
  late final _iRandomAccessStream = IRandomAccessStream.from(this);

  @override
  int get size => _iRandomAccessStream.size;

  @override
  set size(int value) => _iRandomAccessStream.size = value;

  @override
  IInputStream? getInputStreamAt(int position) =>
      _iRandomAccessStream.getInputStreamAt(position);

  @override
  IOutputStream? getOutputStreamAt(int position) =>
      _iRandomAccessStream.getOutputStreamAt(position);

  @override
  int get position => _iRandomAccessStream.position;

  @override
  void seek(int position) => _iRandomAccessStream.seek(position);

  @override
  IRandomAccessStream? cloneStream() => _iRandomAccessStream.cloneStream();

  @override
  bool get canRead => _iRandomAccessStream.canRead;

  @override
  bool get canWrite => _iRandomAccessStream.canWrite;

  // IClosable methods
  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  // IInputStream methods
  late final _iInputStream = IInputStream.from(this);

  @override
  Pointer<COMObject> readAsync(
          IBuffer? buffer, int count, InputStreamOptions options) =>
      _iInputStream.readAsync(buffer, count, options);

  // IOutputStream methods
  late final _iOutputStream = IOutputStream.from(this);

  @override
  Pointer<COMObject> writeAsync(IBuffer? buffer) =>
      _iOutputStream.writeAsync(buffer);

  @override
  Future<bool> flushAsync() => _iOutputStream.flushAsync();

  // IContentTypeProvider methods
  late final _iContentTypeProvider = IContentTypeProvider.from(this);

  @override
  String get contentType => _iContentTypeProvider.contentType;
}
