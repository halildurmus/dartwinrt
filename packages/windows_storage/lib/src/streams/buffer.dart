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

import 'ibuffer.dart';
import 'ibufferfactory.dart';
import 'ibufferstatics.dart';

/// Provides a default implementation of the IBuffer interface and its
/// related interfaces.
///
/// {@category class}
class Buffer extends IInspectable implements IBuffer {
  Buffer.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.Streams.Buffer';

  factory Buffer.create(int capacity) => createActivationFactory(
          IBufferFactory.fromPtr, _className, IID_IBufferFactory)
      .create(capacity);

  static Buffer? createCopyFromMemoryBuffer(IMemoryBuffer? input) =>
      createActivationFactory(
              IBufferStatics.fromPtr, _className, IID_IBufferStatics)
          .createCopyFromMemoryBuffer(input);

  static MemoryBuffer? createMemoryBufferOverIBuffer(IBuffer? input) =>
      createActivationFactory(
              IBufferStatics.fromPtr, _className, IID_IBufferStatics)
          .createMemoryBufferOverIBuffer(input);

  late final _iBuffer = IBuffer.from(this);

  @override
  int get capacity => _iBuffer.capacity;

  @override
  int get length => _iBuffer.length;

  @override
  set length(int value) => _iBuffer.length = value;
}
