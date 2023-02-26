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
import 'package:windows_system/windows_system.dart';

import '../storagefolder.dart';
import 'enums.g.dart';
import 'ifolderpicker.dart';
import 'ifolderpicker2.dart';
import 'ifolderpicker3.dart';
import 'ifolderpickerstatics.dart';

/// Represents a UI element that lets the user choose folders.
///
/// {@category class}
class FolderPicker extends IInspectable
    implements IFolderPicker2, IFolderPicker, IFolderPicker3 {
  FolderPicker() : super(activateClass(_className));
  FolderPicker.fromRawPointer(super.ptr);

  static const _className = 'Windows.Storage.Pickers.FolderPicker';

  // IFolderPickerStatics methods
  static FolderPicker? createForUser(User? user) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IFolderPickerStatics);
    final object = IFolderPickerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createForUser(user);
    } finally {
      object.release();
    }
  }

  // IFolderPicker2 methods
  late final _iFolderPicker2 = IFolderPicker2.from(this);

  @override
  ValueSet? get continuationData => _iFolderPicker2.continuationData;

  @override
  void pickFolderAndContinue() => _iFolderPicker2.pickFolderAndContinue();

  // IFolderPicker methods
  late final _iFolderPicker = IFolderPicker.from(this);

  @override
  PickerViewMode get viewMode => _iFolderPicker.viewMode;

  @override
  set viewMode(PickerViewMode value) => _iFolderPicker.viewMode = value;

  @override
  String get settingsIdentifier => _iFolderPicker.settingsIdentifier;

  @override
  set settingsIdentifier(String value) =>
      _iFolderPicker.settingsIdentifier = value;

  @override
  PickerLocationId get suggestedStartLocation =>
      _iFolderPicker.suggestedStartLocation;

  @override
  set suggestedStartLocation(PickerLocationId value) =>
      _iFolderPicker.suggestedStartLocation = value;

  @override
  String get commitButtonText => _iFolderPicker.commitButtonText;

  @override
  set commitButtonText(String value) => _iFolderPicker.commitButtonText = value;

  @override
  IVector<String> get fileTypeFilter => _iFolderPicker.fileTypeFilter;

  @override
  Future<StorageFolder?> pickSingleFolderAsync() =>
      _iFolderPicker.pickSingleFolderAsync();

  // IFolderPicker3 methods
  late final _iFolderPicker3 = IFolderPicker3.from(this);

  @override
  User? get user => _iFolderPicker3.user;
}
