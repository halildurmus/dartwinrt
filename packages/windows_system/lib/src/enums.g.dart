// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the age consent groups a user can belong to.
///
/// {@category enum}
enum UserAgeConsentGroup implements WinRTEnum {
  child(0),
  minor(1),
  adult(2);

  @override
  final int value;

  const UserAgeConsentGroup(this.value);

  factory UserAgeConsentGroup.from(int value) =>
      UserAgeConsentGroup.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies the result of a call to CheckUserAgeConsentGroupAsync,
/// querying for a user's membership in a specified UserAgeConsentGroup.
///
/// {@category enum}
enum UserAgeConsentResult implements WinRTEnum {
  notEnforced(0),
  included(1),
  notIncluded(2),
  unknown(3),
  ambiguous(4);

  @override
  final int value;

  const UserAgeConsentResult(this.value);

  factory UserAgeConsentResult.from(int value) =>
      UserAgeConsentResult.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Represents the authentication status of a user.
///
/// {@category enum}
enum UserAuthenticationStatus implements WinRTEnum {
  unauthenticated(0),
  locallyAuthenticated(1),
  remotelyAuthenticated(2);

  @override
  final int value;

  const UserAuthenticationStatus(this.value);

  factory UserAuthenticationStatus.from(int value) =>
      UserAuthenticationStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Represents user picture sizes.
///
/// {@category enum}
enum UserPictureSize implements WinRTEnum {
  size64x64(0),
  size208x208(1),
  size424x424(2),
  size1080x1080(3);

  @override
  final int value;

  const UserPictureSize(this.value);

  factory UserPictureSize.from(int value) =>
      UserPictureSize.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Represents user types.
///
/// {@category enum}
enum UserType implements WinRTEnum {
  localUser(0),
  remoteUser(1),
  localGuest(2),
  remoteGuest(3),
  systemManaged(4);

  @override
  final int value;

  const UserType(this.value);

  factory UserType.from(int value) =>
      UserType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Represents the status of a user watcher.
///
/// {@category enum}
enum UserWatcherStatus implements WinRTEnum {
  created(0),
  started(1),
  enumerationCompleted(2),
  stopping(3),
  stopped(4),
  aborted(5);

  @override
  final int value;

  const UserWatcherStatus(this.value);

  factory UserWatcherStatus.from(int value) =>
      UserWatcherStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
