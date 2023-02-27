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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ibackgroundtrigger.dart';

/// @nodoc
const IID_IDeviceWatcherTrigger = '{a4617fdd-8573-4260-befc-5bec89cb693d}';

/// {@category interface}
class IDeviceWatcherTrigger extends IInspectable implements IBackgroundTrigger {
  // vtable begins at 6, is 0 entries long.
  IDeviceWatcherTrigger.fromRawPointer(super.ptr);

  factory IDeviceWatcherTrigger.from(IInspectable interface) =>
      IDeviceWatcherTrigger.fromRawPointer(
          interface.toInterface(IID_IDeviceWatcherTrigger));
}
