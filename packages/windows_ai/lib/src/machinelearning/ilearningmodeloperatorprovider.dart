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
const IID_ILearningModelOperatorProvider =
    '{2a222e5d-afb1-47ed-bfad-b5b3a459ec04}';

/// Describes the operaators for a learning model.
class ILearningModelOperatorProvider extends IInspectable {
  // vtable begins at 6, is 0 entries long.
  ILearningModelOperatorProvider.fromPtr(super.ptr);

  factory ILearningModelOperatorProvider.from(IInspectable interface) =>
      interface.cast(ILearningModelOperatorProvider.fromPtr,
          IID_ILearningModelOperatorProvider);
}
