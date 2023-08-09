// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';

import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:pool/pool.dart';

import '../extensions/extensions.dart';

/// A class for fetching WinRT API documentation from Microsoft's
/// documentation website.
///
/// This class provides static methods to fetch documentation for a specific
/// WinRT type or a set of WinRT types.
final class WinRTDocsService {
  static const _authority = 'learn.microsoft.com';
  static const _basePath = '/en-us/uwp/api/';

  /// A pool to limit the number of concurrent requests.
  ///
  /// This pool helps prevent overloading the server when fetching documentation
  /// for multiple types concurrently.
  static final pool = Pool(3, timeout: const Duration(seconds: 30));

  /// Attempts to fetch the documentation for the specified [type].
  ///
  /// The [type] parameter should be a WinRT type (e.g.,
  /// `Windows.Foundation.Uri`) for which documentation is requested.
  ///
  /// Returns an empty string if no documentation is found.
  static Future<String> fetchDocumentation(String type) async {
    if (!type.isWinRTType) {
      throw ArgumentError.value(type, 'type',
          'Type must be a WinRT type (e.g., Windows.Foundation.Uri)');
    }

    try {
      return pool.withResource(() async {
        final uri = Uri.https(_authority, '$_basePath/$type');
        final response = await http.get(uri);
        if (response.statusCode != 200) {
          throw StateError('Failed to fetch documentation for $type. '
              'HTTP status code: ${response.statusCode}');
        }

        final document = parser.parse(response.body);
        final documentation = document.documentation;
        if (documentation.isEmpty) {
          print('No documentation found for `$type`.');
        }

        return documentation;
      });
    } catch (_) {
      throw StateError('Failed to fetch documentation for $type.');
    }
  }

  /// Attempts to fetch the documentations for the specified [types].
  ///
  /// The [types] parameter should be a [Set] of WinRT types (e.g.,
  /// `Windows.Foundation.Uri`) for which documentation is requested.
  ///
  /// Returns a [Map] where the keys are the WinRT types, and the values are the
  /// corresponding documentations. If no documentation is found for a type, the
  /// corresponding value in the map will be an empty string.
  static Future<Map<String, String>> fetchDocumentations(
      Set<String> types) async {
    final map = SplayTreeMap<String, String>();
    final futures = types.map(WinRTDocsService.fetchDocumentation);
    final documentations = await Future.wait(futures);

    for (var i = 0; i < documentations.length; i++) {
      final type = types.elementAt(i);
      final documentation = documentations[i];
      map[type] = documentation;
    }

    return map;
  }
}

/// An extension on [dom.Document] to extract documentation text from the
/// parsed HTML document.
extension on dom.Document {
  /// Returns the documentation text from the parsed HTML document.
  ///
  /// An empty string is returned if no documentation is found.
  String get documentation {
    final paragraphs = querySelectorAll('div.summary > p');
    switch (paragraphs) {
      case [final paragraph] || [final paragraph, ...]:
        return paragraph.text;
      default:
        return '';
    }
  }
}
