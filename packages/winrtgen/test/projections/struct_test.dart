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

  group('NativeStructProjection', () {
    test('projects something', () {
      final output =
          NativeStructProjection.from('Windows.Foundation.Rect').toString();
      expect(output, isNotEmpty);
      expect(output, contains('NativeRect'));
    });

    test('from factory constructor throws if type is not found', () {
      expect(() => NativeStructProjection.from('Windows.Foo.Bar'),
          throwsA(isA<Exception>()));
    });
  });

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

  group('WinRT native struct', () {
    final rectProjection =
        NativeStructProjection.from('Windows.Foundation.Rect');

    test('has correct struct name', () {
      expect(rectProjection.structName, equals('NativeRect'));
    });

    test('has correct class header', () {
      expect(rectProjection.classHeader,
          equals('final class NativeRect extends Struct'));
    });

    test('has correct number of fields', () {
      expect(rectProjection.fieldProjections.length, equals(4));
    });

    test('has correct first field', () {
      final fieldProjection = rectProjection.fieldProjections.first;
      expect(fieldProjection.attribute, equals('@Float()'));
      expect(fieldProjection.dartType, equals('double'));
      expect(fieldProjection.fieldName, equals('x'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(
          fieldProjection.toString(), equals('@Float()\nexternal double x;\n'));
    });

    test('has correct last field', () {
      final fieldProjection = rectProjection.fieldProjections.last;
      expect(fieldProjection.attribute, equals('@Float()'));
      expect(fieldProjection.dartType, equals('double'));
      expect(fieldProjection.fieldName, equals('height'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.toString(),
          equals('@Float()\nexternal double height;\n'));
    });
  });

  group('WinRT struct', () {
    final rectProjection = StructProjection.from('Windows.Foundation.Rect');

    test('has copyright header', () {
      expect(rectProjection.header, contains(copyrightHeader));
    });

    test('imports are meaningful', () {
      expect(
          rectProjection.imports,
          unorderedEquals([
            'dart:ffi',
            'package:ffi/ffi.dart',
            '../internal.dart',
            'winrt_struct.dart'
          ]));
    });

    test('includes correct dartdoc category comment', () {
      expect(rectProjection.category, equals('struct'));
      expect(rectProjection.classPreamble, equals('/// {@category struct}'));
    });

    test('has correct struct name', () {
      expect(rectProjection.structName, equals('Rect'));
    });

    test('has correct class header', () {
      expect(rectProjection.classHeader,
          equals('final class Rect implements WinRTStruct'));
    });

    test('has correct constructor', () {
      expect(rectProjection.constructor,
          equals('Rect(this.x, this.y, this.width, this.height);'));
    });

    test('has correct number of instance variables', () {
      expect(rectProjection.fieldProjections.length, equals(4));
    });

    test('has correct first instance variable', () {
      final fieldProjection = rectProjection.fieldProjections.first;
      expect(fieldProjection.dartType, equals('double'));
      expect(fieldProjection.fieldName, equals('x'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.toString(), equals('final double x;'));
    });

    test('has correct last instance variable', () {
      final fieldProjection = rectProjection.fieldProjections.last;
      expect(fieldProjection.dartType, equals('double'));
      expect(fieldProjection.fieldName, equals('height'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.toString(), equals('final double height;'));
    });
  });
}
