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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'helpers.dart';
import 'iclosable.dart';
import 'imemorybuffer.dart';
import 'imemorybufferfactory.dart';
import 'imemorybufferreference.dart';

/// Represents a reference counted memory buffer.
///
/// {@category class}
class MemoryBuffer extends IInspectable implements IMemoryBuffer, IClosable {
  MemoryBuffer.fromPtr(super.ptr);

  static const _className = 'Windows.Foundation.MemoryBuffer';

  factory MemoryBuffer.create(int capacity) => createActivationFactory(
          IMemoryBufferFactory.fromPtr, _className, IID_IMemoryBufferFactory)
      .create(capacity);

  late final _iMemoryBuffer = IMemoryBuffer.from(this);

  @override
  IMemoryBufferReference? createReference() => _iMemoryBuffer.createReference();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
