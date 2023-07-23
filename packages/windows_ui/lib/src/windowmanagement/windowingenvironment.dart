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

import 'displayregion.dart';
import 'iwindowingenvironment.dart';
import 'iwindowingenvironmentstatics.dart';
import 'windowingenvironmentkind.dart';

/// Provides information about the system environments that are available to
/// display the app.
class WindowingEnvironment extends IInspectable
    implements IWindowingEnvironment {
  WindowingEnvironment.fromPtr(super.ptr);

  static const _className = 'Windows.UI.WindowManagement.WindowingEnvironment';

  static List<WindowingEnvironment?> findAll() => createActivationFactory(
          IWindowingEnvironmentStatics.fromPtr,
          _className,
          IID_IWindowingEnvironmentStatics)
      .findAll();

  static List<WindowingEnvironment?> findAllWithKind(
          WindowingEnvironmentKind kind) =>
      createActivationFactory(IWindowingEnvironmentStatics.fromPtr, _className,
              IID_IWindowingEnvironmentStatics)
          .findAllWithKind(kind);

  late final _iWindowingEnvironment = IWindowingEnvironment.from(this);

  @override
  bool get isEnabled => _iWindowingEnvironment.isEnabled;

  @override
  WindowingEnvironmentKind get kind => _iWindowingEnvironment.kind;

  @override
  List<DisplayRegion?> getDisplayRegions() =>
      _iWindowingEnvironment.getDisplayRegions();

  @override
  int add_Changed(Pointer<COMObject> handler) =>
      _iWindowingEnvironment.add_Changed(handler);

  @override
  void remove_Changed(int token) =>
      _iWindowingEnvironment.remove_Changed(token);
}
