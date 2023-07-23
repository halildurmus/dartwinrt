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

import '../istoragefile.dart';
import 'irandomaccessstream.dart';
import 'irandomaccessstreamreference.dart';
import 'irandomaccessstreamreferencestatics.dart';
import 'irandomaccessstreamwithcontenttype.dart';

/// Provides random access of data in input and output streams for a file.
class RandomAccessStreamReference extends IInspectable
    implements IRandomAccessStreamReference {
  RandomAccessStreamReference.fromPtr(super.ptr);

  static const _className =
      'Windows.Storage.Streams.RandomAccessStreamReference';

  static RandomAccessStreamReference? createFromFile(IStorageFile? file) =>
      createActivationFactory(IRandomAccessStreamReferenceStatics.fromPtr,
              _className, IID_IRandomAccessStreamReferenceStatics)
          .createFromFile(file);

  static RandomAccessStreamReference? createFromUri(Uri? uri) =>
      createActivationFactory(IRandomAccessStreamReferenceStatics.fromPtr,
              _className, IID_IRandomAccessStreamReferenceStatics)
          .createFromUri(uri);

  static RandomAccessStreamReference? createFromStream(
          IRandomAccessStream? stream) =>
      createActivationFactory(IRandomAccessStreamReferenceStatics.fromPtr,
              _className, IID_IRandomAccessStreamReferenceStatics)
          .createFromStream(stream);

  late final _iRandomAccessStreamReference =
      IRandomAccessStreamReference.from(this);

  @override
  Future<IRandomAccessStreamWithContentType?> openReadAsync() =>
      _iRandomAccessStreamReference.openReadAsync();
}
