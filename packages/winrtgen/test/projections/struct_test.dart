// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('StructProjection', () {
    test('projects something', () {
      final output =
          StructProjection.from('Windows.Foundation.Rect').toString();
      expect(output, isNotEmpty);
      expect(output, contains('Rect'));
    });

    test('from factory constructor throws if type is not found', () {
      expect(() => StructProjection.from('Windows.Foo.Bar'),
          throwsA(isA<Exception>()));
    });
  });

  group('WinRT struct', () {
    final rectProjection = StructProjection.from('Windows.Foundation.Rect');

    test('includes correct dartdoc category comment', () {
      expect(rectProjection.category, equals('struct'));
      expect(rectProjection.classPreamble, equals('/// {@category struct}'));
    });

    test('has correct struct name', () {
      expect(rectProjection.structName, equals('Rect'));
    });

    test('has correct class declaration', () {
      expect(rectProjection.classHeader, equals('class Rect extends Struct'));
    });

    test('has correct number of fields', () {
      expect(rectProjection.fields.length, equals(4));
    });

    test('has correct first field', () {
      final fieldProjection = rectProjection.fields.first;
      expect(fieldProjection.attribute, equals('@Float()'));
      expect(fieldProjection.dartType, equals('double'));
      expect(fieldProjection.fieldName, equals('x'));
    });
  });
}
