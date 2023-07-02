// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../uri.dart' as winrt_uri;

/// @nodoc
extension DartUriToWinRTUriConversion on Uri {
  /// Converts this Uri into a WinRT Uri.
  winrt_uri.Uri toWinRTUri() => winrt_uri.Uri.createUri(toString());
}

/// @nodoc
extension WinRTUriToDartUriConversion on winrt_uri.Uri {
  /// Converts this WinRT Uri into a Dart Uri.
  Uri toDartUri() => Uri.parse(toString());
}
