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
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'imediacapturerelativepanelwatcher.dart';

/// Monitors the panel associated with a DisplayRegion, so that the app receives
/// notifications when the relative location of the panel changes.
class MediaCaptureRelativePanelWatcher extends IInspectable
    implements IMediaCaptureRelativePanelWatcher, IClosable {
  MediaCaptureRelativePanelWatcher.fromPtr(super.ptr);

  late final _iMediaCaptureRelativePanelWatcher =
      IMediaCaptureRelativePanelWatcher.from(this);

  @override
  Panel get relativePanel => _iMediaCaptureRelativePanelWatcher.relativePanel;

  @override
  int add_Changed(Pointer<COMObject> handler) =>
      _iMediaCaptureRelativePanelWatcher.add_Changed(handler);

  @override
  void remove_Changed(int token) =>
      _iMediaCaptureRelativePanelWatcher.remove_Changed(token);

  @override
  void start() => _iMediaCaptureRelativePanelWatcher.start();

  @override
  void stop() => _iMediaCaptureRelativePanelWatcher.stop();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
