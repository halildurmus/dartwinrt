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
import 'package:windows_storage/windows_storage.dart';

import 'ibuffermediaframe.dart';
import 'mediaframereference.dart';

/// Represents a frame from a MediaFrameSource that provides data in an
/// IBuffer.
class BufferMediaFrame extends IInspectable implements IBufferMediaFrame {
  BufferMediaFrame.fromPtr(super.ptr);

  late final _iBufferMediaFrame = IBufferMediaFrame.from(this);

  @override
  MediaFrameReference? get frameReference => _iBufferMediaFrame.frameReference;

  @override
  IBuffer? get buffer => _iBufferMediaFrame.buffer;
}
