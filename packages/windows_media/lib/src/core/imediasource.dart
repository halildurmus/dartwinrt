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

/// @nodoc
const IID_IMediaSource = '{e7bfb599-a09d-4c21-bcdf-20af4f86b3d9}';

/// Represents a media source that delivers media samples to a media pipeline.
class IMediaSource extends IInspectable {
  // vtable begins at 6, is 0 entries long.
  IMediaSource.fromPtr(super.ptr);

  factory IMediaSource.from(IInspectable interface) =>
      IMediaSource.fromPtr(interface.toInterface(IID_IMediaSource));
}
