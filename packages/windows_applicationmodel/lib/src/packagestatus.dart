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

import 'ipackagestatus.dart';
import 'ipackagestatus2.dart';

/// Provides the status of the package.
class PackageStatus extends IInspectable
    implements IPackageStatus, IPackageStatus2 {
  PackageStatus.fromPtr(super.ptr);

  late final _iPackageStatus = IPackageStatus.from(this);

  @override
  bool verifyIsOK() => _iPackageStatus.verifyIsOK();

  @override
  bool get notAvailable => _iPackageStatus.notAvailable;

  @override
  bool get packageOffline => _iPackageStatus.packageOffline;

  @override
  bool get dataOffline => _iPackageStatus.dataOffline;

  @override
  bool get disabled => _iPackageStatus.disabled;

  @override
  bool get needsRemediation => _iPackageStatus.needsRemediation;

  @override
  bool get licenseIssue => _iPackageStatus.licenseIssue;

  @override
  bool get modified => _iPackageStatus.modified;

  @override
  bool get tampered => _iPackageStatus.tampered;

  @override
  bool get dependencyIssue => _iPackageStatus.dependencyIssue;

  @override
  bool get servicing => _iPackageStatus.servicing;

  @override
  bool get deploymentInProgress => _iPackageStatus.deploymentInProgress;

  late final _iPackageStatus2 = IPackageStatus2.from(this);

  @override
  bool get isPartiallyStaged => _iPackageStatus2.isPartiallyStaged;
}
