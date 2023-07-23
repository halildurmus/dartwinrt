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
import 'package:windows_system/windows_system.dart';

import 'ipackageid.dart';
import 'ipackageidwithmetadata.dart';
import 'packageversion.dart';

/// Provides package identification info, such as name, version, and
/// publisher.
class PackageId extends IInspectable
    implements IPackageId, IPackageIdWithMetadata {
  PackageId.fromPtr(super.ptr);

  late final _iPackageId = IPackageId.from(this);

  @override
  String get name => _iPackageId.name;

  @override
  PackageVersion get version => _iPackageId.version;

  @override
  ProcessorArchitecture get architecture => _iPackageId.architecture;

  @override
  String get resourceId => _iPackageId.resourceId;

  @override
  String get publisher => _iPackageId.publisher;

  @override
  String get publisherId => _iPackageId.publisherId;

  @override
  String get fullName => _iPackageId.fullName;

  @override
  String get familyName => _iPackageId.familyName;

  late final _iPackageIdWithMetadata = IPackageIdWithMetadata.from(this);

  @override
  String get productId => _iPackageIdWithMetadata.productId;

  @override
  String get author => _iPackageIdWithMetadata.author;
}
