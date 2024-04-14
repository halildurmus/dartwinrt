// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  group('WinRTDocsService', () {
    group('fetchDocumentation', () {
      test('(Calendar)', () async {
        final type = 'Windows.Globalization.Calendar';
        final documentation = await WinRTDocsService.fetchDocumentation(type);
        expect(
          documentation,
          equals(
              'Manipulates the representation of a DateTime within a given calendar and clock.'),
        );
      });

      test('throws an ArgumentError if type is not a WinRT type', () async {
        expect(
          () => WinRTDocsService.fetchDocumentation('Windows.Foundation'),
          throwsA(
            isA<ArgumentError>().having(
              (e) => e.message,
              'message',
              'Type must be a WinRT type (e.g., Windows.Foundation.Uri)',
            ),
          ),
        );
      });
    });

    test('fetchDocumentations', () async {
      final type1 = 'Windows.Globalization.Calendar';
      final type2 = 'Windows.Storage.Streams.IRandomAccessStream';
      final type3 = 'Windows.UI.Notifications.ToastNotificationMode';
      final documentations =
          await WinRTDocsService.fetchDocumentations({type1, type2, type3});
      expect(documentations.length, equals(3));
      expect(
          documentations[type1],
          equals(
              'Manipulates the representation of a DateTime within a given calendar and clock.'));
      expect(
          documentations[type2],
          equals(
              'Supports random access of data in input and output streams.'));
      expect(documentations[type3], isEmpty);
    });
  });
}
