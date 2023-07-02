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
import 'ifileopenpicker.dart';
import 'ifileopenpicker3.dart';
import 'ifileopenpickerstatics2.dart';
import 'pickerlocationid.dart';
import 'pickerviewmode.dart';

/// Represents a UI element that lets the user choose and open files. In a
/// desktop app, before using an instance of this class in a way that
/// displays UI, you'll need to associate the object with its owner's window
/// handle.
class FileOpenPicker extends IInspectable
    implements IFileOpenPicker, IFileOpenPicker3 {
  FileOpenPicker() : super(activateClass(_className));
  FileOpenPicker.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.Pickers.FileOpenPicker';

  static FileOpenPicker? createForUser(User? user) => createActivationFactory(
          IFileOpenPickerStatics2.fromPtr,
          _className,
          IID_IFileOpenPickerStatics2)
      .createForUser(user);

  late final _iFileOpenPicker = IFileOpenPicker.from(this);

  @override
  PickerViewMode get viewMode => _iFileOpenPicker.viewMode;

  @override
  set viewMode(PickerViewMode value) => _iFileOpenPicker.viewMode = value;

  @override
  String get settingsIdentifier => _iFileOpenPicker.settingsIdentifier;

  @override
  set settingsIdentifier(String value) =>
      _iFileOpenPicker.settingsIdentifier = value;

  @override
  PickerLocationId get suggestedStartLocation =>
      _iFileOpenPicker.suggestedStartLocation;

  @override
  set suggestedStartLocation(PickerLocationId value) =>
      _iFileOpenPicker.suggestedStartLocation = value;

  @override
  String get commitButtonText => _iFileOpenPicker.commitButtonText;

  @override
  set commitButtonText(String value) =>
      _iFileOpenPicker.commitButtonText = value;

  @override
  IVector<String> get fileTypeFilter => _iFileOpenPicker.fileTypeFilter;

  @override
  Future<StorageFile?> pickSingleFileAsync() =>
      _iFileOpenPicker.pickSingleFileAsync();

  @override
  Future<List<StorageFile?>> pickMultipleFilesAsync() =>
      _iFileOpenPicker.pickMultipleFilesAsync();

  late final _iFileOpenPicker3 = IFileOpenPicker3.from(this);

  @override
  User? get user => _iFileOpenPicker3.user;
}
