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

import 'ipackageupdateavailabilityresult.dart';
import 'packageupdateavailability.dart';

/// Describes whether the main app package listed in the .appinstaller file
/// requires updates.
class PackageUpdateAvailabilityResult extends IInspectable
    implements IPackageUpdateAvailabilityResult {
  PackageUpdateAvailabilityResult.fromPtr(super.ptr);

  late final _iPackageUpdateAvailabilityResult =
      IPackageUpdateAvailabilityResult.from(this);

  @override
  PackageUpdateAvailability get availability =>
      _iPackageUpdateAvailabilityResult.availability;

  @override
  int get extendedError => _iPackageUpdateAvailabilityResult.extendedError;
}
