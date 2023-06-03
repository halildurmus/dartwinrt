// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'iknownuserpropertiesstatics.dart';
import 'iknownuserpropertiesstatics2.dart';

/// Contains basic information about a user.
class KnownUserProperties extends IInspectable {
  KnownUserProperties.fromPtr(super.ptr);

  static const _className = 'Windows.System.KnownUserProperties';

  static String get displayName => createActivationFactory(
          IKnownUserPropertiesStatics.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics)
      .displayName;

  static String get firstName => createActivationFactory(
          IKnownUserPropertiesStatics.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics)
      .firstName;

  static String get lastName => createActivationFactory(
          IKnownUserPropertiesStatics.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics)
      .lastName;

  static String get providerName => createActivationFactory(
          IKnownUserPropertiesStatics.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics)
      .providerName;

  static String get accountName => createActivationFactory(
          IKnownUserPropertiesStatics.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics)
      .accountName;

  static String get guestHost => createActivationFactory(
          IKnownUserPropertiesStatics.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics)
      .guestHost;

  static String get principalName => createActivationFactory(
          IKnownUserPropertiesStatics.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics)
      .principalName;

  static String get domainName => createActivationFactory(
          IKnownUserPropertiesStatics.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics)
      .domainName;

  static String get sessionInitiationProtocolUri => createActivationFactory(
          IKnownUserPropertiesStatics.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics)
      .sessionInitiationProtocolUri;

  static String get ageEnforcementRegion => createActivationFactory(
          IKnownUserPropertiesStatics2.fromPtr,
          _className,
          IID_IKnownUserPropertiesStatics2)
      .ageEnforcementRegion;
}
