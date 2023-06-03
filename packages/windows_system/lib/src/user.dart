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
import 'package:windows_storage/windows_storage.dart';

import 'iuser.dart';
import 'iuser2.dart';
import 'iuserstatics.dart';
import 'iuserstatics2.dart';
import 'userageconsentgroup.dart';
import 'userageconsentresult.dart';
import 'userauthenticationstatus.dart';
import 'userpicturesize.dart';
import 'usertype.dart';
import 'userwatcher.dart';

/// Represents a user.
class User extends IInspectable implements IUser, IUser2 {
  User.fromPtr(super.ptr);

  static const _className = 'Windows.System.User';

  static UserWatcher? createWatcher() => createActivationFactory(
          IUserStatics.fromPtr, _className, IID_IUserStatics)
      .createWatcher();

  static Future<List<User>> findAllAsync() => createActivationFactory(
          IUserStatics.fromPtr, _className, IID_IUserStatics)
      .findAllAsync();

  @Deprecated(
      "FindAllAsyncByType is deprecated and might not function consistently on all platforms. Instead, use FindAllAsync or GetDefault.")
  static Future<List<User>> findAllAsyncByType(UserType type) =>
      createActivationFactory(
              IUserStatics.fromPtr, _className, IID_IUserStatics)
          .findAllAsyncByType(type);

  @Deprecated(
      "FindAllAsyncByTypeAndStatus is deprecated and might not function consistently on all platforms. Instead, use FindAllAsync or GetDefault.")
  static Future<List<User>> findAllAsyncByTypeAndStatus(
          UserType type, UserAuthenticationStatus status) =>
      createActivationFactory(
              IUserStatics.fromPtr, _className, IID_IUserStatics)
          .findAllAsyncByTypeAndStatus(type, status);

  static User? getFromId(String nonRoamableId) => createActivationFactory(
          IUserStatics.fromPtr, _className, IID_IUserStatics)
      .getFromId(nonRoamableId);

  static User? getDefault() => createActivationFactory(
          IUserStatics2.fromPtr, _className, IID_IUserStatics2)
      .getDefault();

  late final _iUser = IUser.from(this);

  @override
  String get nonRoamableId => _iUser.nonRoamableId;

  @override
  UserAuthenticationStatus get authenticationStatus =>
      _iUser.authenticationStatus;

  @override
  UserType get type => _iUser.type;

  @override
  Future<Object?> getPropertyAsync(String value) =>
      _iUser.getPropertyAsync(value);

  @override
  Future<IPropertySet> getPropertiesAsync(IVectorView<String> values) =>
      _iUser.getPropertiesAsync(values);

  @override
  Future<IRandomAccessStreamReference?> getPictureAsync(
          UserPictureSize desiredSize) =>
      _iUser.getPictureAsync(desiredSize);

  late final _iUser2 = IUser2.from(this);

  @override
  Future<UserAgeConsentResult> checkUserAgeConsentGroupAsync(
          UserAgeConsentGroup consentGroup) =>
      _iUser2.checkUserAgeConsentGroupAsync(consentGroup);
}
