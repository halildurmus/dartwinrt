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
const IID_IAutomationTextRange = '{7e101b65-40d3-5994-85a9-0a0cb9a4ec98}';

class IAutomationTextRange extends IInspectable {
  IAutomationTextRange.fromPtr(super.ptr);

  factory IAutomationTextRange.from(IInspectable interface) =>
      interface.cast(IAutomationTextRange.fromPtr, IID_IAutomationTextRange);
}
