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

import 'iremoteautomationclientsession.dart';
import 'iremoteautomationclientsessionfactory.dart';
import 'remoteautomationwindow.dart';

/// Represents a UI Automation client session for a remote application.
///
/// {@category class}
class RemoteAutomationClientSession extends IInspectable
    implements IRemoteAutomationClientSession {
  RemoteAutomationClientSession.fromPtr(super.ptr);

  static const _className =
      'Windows.UI.UIAutomation.Core.RemoteAutomationClientSession';

  factory RemoteAutomationClientSession.createInstance(String name) =>
      createActivationFactory(IRemoteAutomationClientSessionFactory.fromPtr,
              _className, IID_IRemoteAutomationClientSessionFactory)
          .createInstance(name);

  factory RemoteAutomationClientSession.createInstance2(
          String name, Guid sessionId) =>
      createActivationFactory(IRemoteAutomationClientSessionFactory.fromPtr,
              _className, IID_IRemoteAutomationClientSessionFactory)
          .createInstance2(name, sessionId);

  late final _iRemoteAutomationClientSession =
      IRemoteAutomationClientSession.from(this);

  @override
  void start() => _iRemoteAutomationClientSession.start();

  @override
  void stop() => _iRemoteAutomationClientSession.stop();

  @override
  Future<RemoteAutomationWindow?> createWindowAsync(int remoteWindowId,
          int remoteProcessId, Object? parentAutomationElement) =>
      _iRemoteAutomationClientSession.createWindowAsync(
          remoteWindowId, remoteProcessId, parentAutomationElement);

  @override
  Guid get sessionId => _iRemoteAutomationClientSession.sessionId;

  @override
  int add_ConnectionRequested(Pointer<COMObject> handler) =>
      _iRemoteAutomationClientSession.add_ConnectionRequested(handler);

  @override
  void remove_ConnectionRequested(int token) =>
      _iRemoteAutomationClientSession.remove_ConnectionRequested(token);

  @override
  int add_Disconnected(Pointer<COMObject> handler) =>
      _iRemoteAutomationClientSession.add_Disconnected(handler);

  @override
  void remove_Disconnected(int token) =>
      _iRemoteAutomationClientSession.remove_Disconnected(token);
}
