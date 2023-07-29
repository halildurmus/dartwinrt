// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the step in the progress for an HTTP connection.
enum HttpProgressStage implements WinRTEnum {
  none(0),
  detectingProxy(10),
  resolvingName(20),
  connectingToServer(30),
  negotiatingSsl(40),
  sendingHeaders(50),
  sendingContent(60),
  waitingForResponse(70),
  receivingHeaders(80),
  receivingContent(90);

  @override
  final int value;

  const HttpProgressStage(this.value);

  factory HttpProgressStage.from(int value) =>
      HttpProgressStage.values.byValue(value);
}
