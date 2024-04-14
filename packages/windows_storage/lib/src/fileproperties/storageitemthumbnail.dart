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

import '../streams/ibuffer.dart';
import '../streams/icontenttypeprovider.dart';
import '../streams/iinputstream.dart';
import '../streams/inputstreamoptions.dart';
import '../streams/ioutputstream.dart';
import '../streams/irandomaccessstream.dart';
import '../streams/irandomaccessstreamwithcontenttype.dart';
import 'ithumbnailproperties.dart';
import 'thumbnailtype.dart';

/// Represents the thumbnail image associated with a system resource (like a
/// file or folder).
class StorageItemThumbnail extends IInspectable
    implements
        IRandomAccessStreamWithContentType,
        IContentTypeProvider,
        IRandomAccessStream,
        IOutputStream,
        IClosable,
        IInputStream,
        IThumbnailProperties {
  StorageItemThumbnail.fromPtr(super.ptr);

  late final _iContentTypeProvider = IContentTypeProvider.from(this);

  @override
  String get contentType => _iContentTypeProvider.contentType;

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

  late final _iOutputStream = IOutputStream.from(this);

  @override
  Pointer<COMObject> writeAsync(IBuffer? buffer) =>
      _iOutputStream.writeAsync(buffer);

  @override
  Future<bool> flushAsync() => _iOutputStream.flushAsync();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  late final _iInputStream = IInputStream.from(this);

  @override
  Pointer<COMObject> readAsync(
          IBuffer? buffer, int count, InputStreamOptions options) =>
      _iInputStream.readAsync(buffer, count, options);

  late final _iThumbnailProperties = IThumbnailProperties.from(this);

  @override
  int get originalWidth => _iThumbnailProperties.originalWidth;

  @override
  int get originalHeight => _iThumbnailProperties.originalHeight;

  @override
  bool get returnedSmallerCachedSize =>
      _iThumbnailProperties.returnedSmallerCachedSize;

  @override
  ThumbnailType get type => _iThumbnailProperties.type;
}
