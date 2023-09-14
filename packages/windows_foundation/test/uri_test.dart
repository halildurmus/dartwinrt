// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('WinRT Uri', () {
    final dartUri = Uri.parse(
        'https://www.example.com:443/path/to/file.html?q1=v1&q2=v2#fragment');

    test('createUri', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.addRef(), equals(2));
      expect(winrtUri.release(), equals(1));
    });

    test('createWithRelativeUri', () {
      final winrtUri = winrt_uri.Uri.createWithRelativeUri(
          'https://www.example.com', '/path/to/file.html');
      expect(winrtUri.addRef(), equals(2));
      expect(winrtUri.release(), equals(1));
    });

    test('rawUri', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.rawUri, equals(dartUri.toString()));
    });

    test('absoluteUri', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.absoluteUri, equals(dartUri.toString()));
    });

    test('absoluteCanonicalUri', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.absoluteCanonicalUri, equals(dartUri.toString()));
    });

    test('displayIri', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.displayIri, equals(dartUri.toString()));
    });

    test('displayUri', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.displayUri, equals(dartUri.toString()));
    });

    test('toString', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.toString(), equals(dartUri.toString()));
    });

    test('schemeName', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.schemeName, equals('https'));
    });

    test('host', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.host, equals('www.example.com'));
    });

    test('domain', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.domain, equals('example.com'));
    });

    test('port', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.port, equals(443));
    });

    test('suspicious', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.suspicious, isFalse);
    });

    test('equals', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.equals(winrtUri), isTrue);
    });

    test('userName', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.userName, isEmpty);
    });

    test('password', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.password, isEmpty);
    });

    test('path', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.path, equals('/path/to/file.html'));
    });

    test('extension', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.extension, equals('.html'));
    });

    test('fragment', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.fragment, equals('#fragment'));
    });

    test('query', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      expect(winrtUri.query, equals('?q1=v1&q2=v2'));
    });

    test('queryParsed', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      final queryParsed = winrtUri.queryParsed;
      expect(queryParsed, isNotNull);
      expect(queryParsed!.size, equals(2));
      final queryParameters = queryParsed.toList();
      expect(queryParameters.length, equals(2));
      final [queryParam1, queryParam2] = queryParameters;
      expect(queryParam1, isNotNull);
      expect(queryParam1!.name, equals('q1'));
      expect(queryParam1.value, equals('v1'));
      expect(queryParam2, isNotNull);
      expect(queryParam2!.name, equals('q2'));
      expect(queryParam2.value, equals('v2'));
    });

    test('combineUri', () {
      final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
      final combinedUri = winrtUri.combineUri('/path/to/other.html');
      expect(combinedUri, isNotNull);
      expect(combinedUri!.rawUri,
          equals('https://www.example.com/path/to/other.html'));
    });

    test('escapeComponent', () {
      expect(winrt_uri.Uri.escapeComponent('a=b'), equals('a%3Db'));
    });

    test('unescapeComponent', () {
      expect(winrt_uri.Uri.unescapeComponent('a%3Db'), equals('a=b'));
    });
  });

  tearDownAll(forceGC);
}
