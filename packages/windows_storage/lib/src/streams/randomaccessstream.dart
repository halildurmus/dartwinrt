// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'iinputstream.dart';
import 'ioutputstream.dart';
import 'irandomaccessstreamstatics.dart';

/// Provides random access of data in input and output streams.
///
/// {@category class}
class RandomAccessStream extends IInspectable {
  RandomAccessStream.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.Streams.RandomAccessStream';

  static Pointer<COMObject> copyAsync(
          IInputStream? source, IOutputStream? destination) =>
      createActivationFactory(IRandomAccessStreamStatics.fromPtr, _className,
              IID_IRandomAccessStreamStatics)
          .copyAsync(source, destination);

  static Pointer<COMObject> copySizeAsync(
          IInputStream? source, IOutputStream? destination, int bytesToCopy) =>
      createActivationFactory(IRandomAccessStreamStatics.fromPtr, _className,
              IID_IRandomAccessStreamStatics)
          .copySizeAsync(source, destination, bytesToCopy);

  static Pointer<COMObject> copyAndCloseAsync(
          IInputStream? source, IOutputStream? destination) =>
      createActivationFactory(IRandomAccessStreamStatics.fromPtr, _className,
              IID_IRandomAccessStreamStatics)
          .copyAndCloseAsync(source, destination);
}
