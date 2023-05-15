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
import 'package:windows_system/windows_system.dart';

import '../storagefile.dart';
import 'ifilesavepicker.dart';
import 'ifilesavepicker2.dart';
import 'ifilesavepicker3.dart';
import 'ifilesavepicker4.dart';
import 'ifilesavepickerstatics.dart';
import 'pickerlocationid.dart';

/// Represents a file picker that lets the user choose the file name,
/// extension, and storage location for a file.
///
/// {@category class}
class FileSavePicker extends IInspectable
    implements
        IFileSavePicker2,
        IFileSavePicker3,
        IFileSavePicker,
        IFileSavePicker4 {
  FileSavePicker() : super(activateClass(_className));
  FileSavePicker.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.Pickers.FileSavePicker';

  static FileSavePicker? createForUser(User? user) => createActivationFactory(
          IFileSavePickerStatics.fromPtr,
          _className,
          IID_IFileSavePickerStatics)
      .createForUser(user);

  late final _iFileSavePicker2 = IFileSavePicker2.from(this);

  @override
  ValueSet get continuationData => _iFileSavePicker2.continuationData;

  @Deprecated("Instead, use PickSaveFileAsync")
  @override
  void pickSaveFileAndContinue() => _iFileSavePicker2.pickSaveFileAndContinue();

  late final _iFileSavePicker3 = IFileSavePicker3.from(this);

  @override
  String get enterpriseId => _iFileSavePicker3.enterpriseId;

  @override
  set enterpriseId(String value) => _iFileSavePicker3.enterpriseId = value;

  late final _iFileSavePicker = IFileSavePicker.from(this);

  @override
  String get settingsIdentifier => _iFileSavePicker.settingsIdentifier;

  @override
  set settingsIdentifier(String value) =>
      _iFileSavePicker.settingsIdentifier = value;

  @override
  PickerLocationId get suggestedStartLocation =>
      _iFileSavePicker.suggestedStartLocation;

  @override
  set suggestedStartLocation(PickerLocationId value) =>
      _iFileSavePicker.suggestedStartLocation = value;

  @override
  String get commitButtonText => _iFileSavePicker.commitButtonText;

  @override
  set commitButtonText(String value) =>
      _iFileSavePicker.commitButtonText = value;

  @override
  IMap<String, IVector<String>> get fileTypeChoices =>
      _iFileSavePicker.fileTypeChoices;

  @override
  String get defaultFileExtension => _iFileSavePicker.defaultFileExtension;

  @override
  set defaultFileExtension(String value) =>
      _iFileSavePicker.defaultFileExtension = value;

  @override
  StorageFile? get suggestedSaveFile => _iFileSavePicker.suggestedSaveFile;

  @override
  set suggestedSaveFile(StorageFile? value) =>
      _iFileSavePicker.suggestedSaveFile = value;

  @override
  String get suggestedFileName => _iFileSavePicker.suggestedFileName;

  @override
  set suggestedFileName(String value) =>
      _iFileSavePicker.suggestedFileName = value;

  @override
  Future<StorageFile?> pickSaveFileAsync() =>
      _iFileSavePicker.pickSaveFileAsync();

  late final _iFileSavePicker4 = IFileSavePicker4.from(this);

  @override
  User? get user => _iFileSavePicker4.user;
}
