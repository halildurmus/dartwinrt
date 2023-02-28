// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:win32/win32.dart';

import '../../uri.dart' as winrt_uri;

extension COMObjectPointerToWinRTUriConversion on Pointer<COMObject> {
  /// Creates a WinRT Uri from this Pointer.
  winrt_uri.Uri toWinRTUri() => winrt_uri.Uri.fromRawPointer(this);
}

extension DartUriToWinRTUriConversion on Uri {
  /// Converts this Uri into a WinRT Uri.
  winrt_uri.Uri toWinRTUri() => winrt_uri.Uri.createUri(toString());
}

extension WinRTUriToDartUriConversion on winrt_uri.Uri {
  /// Converts this WinRT Uri into a Dart Uri.
  Uri toDartUri() => Uri.parse(toString());
}
