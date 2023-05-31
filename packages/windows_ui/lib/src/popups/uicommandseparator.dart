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

import 'iuicommand.dart';

/// Represents a command separator in a context menu.
///
/// {@category class}
class UICommandSeparator extends IInspectable implements IUICommand {
  UICommandSeparator() : super(activateClass(_className));
  UICommandSeparator.fromPtr(super.ptr);

  static const _className = 'Windows.UI.Popups.UICommandSeparator';

  late final _iUICommand = IUICommand.from(this);

  @override
  String get label => _iUICommand.label;

  @override
  set label(String value) => _iUICommand.label = value;

  @override
  Pointer<COMObject> get invoked => _iUICommand.invoked;

  @override
  set invoked(Pointer<COMObject> value) => _iUICommand.invoked = value;

  @override
  Object? get id => _iUICommand.id;

  @override
  set id(Object? value) => _iUICommand.id = value;
}
