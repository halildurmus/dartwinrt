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

import 'imessagedialog.dart';
import 'imessagedialogfactory.dart';
import 'iuicommand.dart';
import 'messagedialogoptions.dart';

/// Represents a dialog for showing messages to the user.
class MessageDialog extends IInspectable implements IMessageDialog {
  MessageDialog.fromPtr(super.ptr);

  static const _className = 'Windows.UI.Popups.MessageDialog';

  factory MessageDialog.create(String content) => createActivationFactory(
          IMessageDialogFactory.fromPtr, _className, IID_IMessageDialogFactory)
      .create(content);

  factory MessageDialog.createWithTitle(String content, String title) =>
      createActivationFactory(IMessageDialogFactory.fromPtr, _className,
              IID_IMessageDialogFactory)
          .createWithTitle(content, title);

  late final _iMessageDialog = IMessageDialog.from(this);

  @override
  String get title => _iMessageDialog.title;

  @override
  set title(String value) => _iMessageDialog.title = value;

  @override
  IVector<IUICommand?>? get commands => _iMessageDialog.commands;

  @override
  int get defaultCommandIndex => _iMessageDialog.defaultCommandIndex;

  @override
  set defaultCommandIndex(int value) =>
      _iMessageDialog.defaultCommandIndex = value;

  @override
  int get cancelCommandIndex => _iMessageDialog.cancelCommandIndex;

  @override
  set cancelCommandIndex(int value) =>
      _iMessageDialog.cancelCommandIndex = value;

  @override
  String get content => _iMessageDialog.content;

  @override
  set content(String value) => _iMessageDialog.content = value;

  @override
  Future<IUICommand?> showAsync() => _iMessageDialog.showAsync();

  @override
  MessageDialogOptions get options => _iMessageDialog.options;

  @override
  set options(MessageDialogOptions value) => _iMessageDialog.options = value;
}
