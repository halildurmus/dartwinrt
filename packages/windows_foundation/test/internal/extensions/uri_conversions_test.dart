// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  final uri = Uri.parse(
      'https://www.example.com:443/path/to/file.html?q1=v1&q2=v2#fragment');

  test('toDartUri', () {
    final dartUri = winrt_uri.Uri.createUri(uri.toString()).toDartUri();
    expect(dartUri.scheme, equals('https'));
    expect(dartUri.host, equals('www.example.com'));
    expect(dartUri.port, equals(443));
    expect(dartUri.path, equals('/path/to/file.html'));
  });

  test('toWinRTUri', () {
    final winrtUri = uri.toWinRTUri();
    expect(winrtUri.schemeName, equals('https'));
    expect(winrtUri.host, equals('www.example.com'));
    expect(winrtUri.path, equals('/path/to/file.html'));
  });
}
