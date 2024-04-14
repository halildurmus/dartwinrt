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

import 'ifindrelatedpackagesoptions.dart';
import 'ifindrelatedpackagesoptionsfactory.dart';
import 'packagerelationship.dart';

/// Provides filtering when searching for packages.
class FindRelatedPackagesOptions extends IInspectable
    implements IFindRelatedPackagesOptions {
  FindRelatedPackagesOptions.fromPtr(super.ptr);

  static const _className =
      'Windows.ApplicationModel.FindRelatedPackagesOptions';

  factory FindRelatedPackagesOptions.createInstance(
          PackageRelationship relationship) =>
      createActivationFactory(IFindRelatedPackagesOptionsFactory.fromPtr,
              _className, IID_IFindRelatedPackagesOptionsFactory)
          .createInstance(relationship);

  late final _iFindRelatedPackagesOptions =
      IFindRelatedPackagesOptions.from(this);

  @override
  PackageRelationship get relationship =>
      _iFindRelatedPackagesOptions.relationship;

  @override
  set relationship(PackageRelationship value) =>
      _iFindRelatedPackagesOptions.relationship = value;

  @override
  bool get includeFrameworks => _iFindRelatedPackagesOptions.includeFrameworks;

  @override
  set includeFrameworks(bool value) =>
      _iFindRelatedPackagesOptions.includeFrameworks = value;

  @override
  bool get includeHostRuntimes =>
      _iFindRelatedPackagesOptions.includeHostRuntimes;

  @override
  set includeHostRuntimes(bool value) =>
      _iFindRelatedPackagesOptions.includeHostRuntimes = value;

  @override
  bool get includeOptionals => _iFindRelatedPackagesOptions.includeOptionals;

  @override
  set includeOptionals(bool value) =>
      _iFindRelatedPackagesOptions.includeOptionals = value;

  @override
  bool get includeResources => _iFindRelatedPackagesOptions.includeResources;

  @override
  set includeResources(bool value) =>
      _iFindRelatedPackagesOptions.includeResources = value;
}
