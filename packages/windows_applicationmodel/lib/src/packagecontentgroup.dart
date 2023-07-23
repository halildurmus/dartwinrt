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

import 'ipackagecontentgroup.dart';
import 'ipackagecontentgroupstatics.dart';
import 'package.dart';
import 'packagecontentgroupstate.dart';

/// Provides information about a package content group.
class PackageContentGroup extends IInspectable implements IPackageContentGroup {
  PackageContentGroup.fromPtr(super.ptr);

  static const _className = 'Windows.ApplicationModel.PackageContentGroup';

  static String get requiredGroupName => createActivationFactory(
          IPackageContentGroupStatics.fromPtr,
          _className,
          IID_IPackageContentGroupStatics)
      .requiredGroupName;

  late final _iPackageContentGroup = IPackageContentGroup.from(this);

  @override
  Package? get package => _iPackageContentGroup.package;

  @override
  String get name => _iPackageContentGroup.name;

  @override
  PackageContentGroupState get state => _iPackageContentGroup.state;

  @override
  bool get isRequired => _iPackageContentGroup.isRequired;
}
