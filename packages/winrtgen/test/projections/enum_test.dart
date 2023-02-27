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

  group('EnumProjection', () {
    test('projects something', () {
      final output =
          EnumProjection.from('Windows.Foundation.AsyncStatus').toString();
      expect(output, isNotEmpty);
      expect(output, contains('AsyncStatus'));
    });

    test('from factory constructor throws if type is not found', () {
      expect(() => EnumProjection.from('Windows.Foo.Bar'),
          throwsA(isA<Exception>()));
    });
  });

  group('FlagsEnumProjection', () {
    test('projects something', () {
      final output =
          FlagsEnumProjection.from('Windows.Storage.FileAttributes').toString();
      expect(output, isNotEmpty);
      expect(output, contains('FileAttributes'));
    });

    test('from factory constructor throws if type is not found', () {
      expect(() => FlagsEnumProjection.from('Windows.Foo.Bar'),
          throwsA(isA<Exception>()));
    });
  });

  group('WinRT enum', () {
    final asyncStatusProjection =
        EnumProjection.from('Windows.Foundation.AsyncStatus');

    test('includes correct dartdoc category comment', () {
      expect(asyncStatusProjection.category, equals('enum'));
      expect(
          asyncStatusProjection.classPreamble, equals('/// {@category enum}'));
    });

    test('has correct enum name', () {
      expect(asyncStatusProjection.enumName, equals('AsyncStatus'));
    });

    test('has correct class declaration', () {
      expect(asyncStatusProjection.classHeader,
          equals('enum AsyncStatus implements WinRTEnum'));
    });

    test('has correct number of identifiers', () {
      expect(asyncStatusProjection.identifiers.length, equals(4));
    });

    test('has correct identifiers', () {
      expect(
          asyncStatusProjection.identifiers,
          orderedEquals([
            'started(0)',
            'completed(1)',
            'canceled(2)',
            'error(3)',
          ]));
    });

    test('identifiers are correctly converted to lowercase', () {
      final projection =
          EnumProjection.from('Windows.Devices.Geolocation.PositionSource');
      expect(
        projection.identifiers,
        orderedEquals([
          'cellular(0)',
          'satellite(1)',
          'wifi(2)',
          'ipAddress(3)',
          'unknown(4)',
          'default_(5)',
          'obfuscated(6)'
        ]),
      );
    });
  });

  group('WinRT Flags enum', () {
    final fileAttributesProjection =
        FlagsEnumProjection.from('Windows.Storage.FileAttributes');

    test('includes correct dartdoc category comment', () {
      expect(fileAttributesProjection.category, equals('enum'));
      expect(fileAttributesProjection.classPreamble,
          equals('/// {@category enum}'));
    });

    test('has correct enum name', () {
      expect(fileAttributesProjection.enumName, equals('FileAttributes'));
    });

    test('has correct class declaration', () {
      expect(
          fileAttributesProjection.classHeader,
          equals(
              'class FileAttributes extends WinRTFlagsEnum<FileAttributes>'));
    });

    test('has correct identifiers', () {
      expect(
        fileAttributesProjection.identifiers,
        orderedEquals([
          "static const normal = FileAttributes(0, name: 'normal');",
          "static const readOnly = FileAttributes(1, name: 'readOnly');",
          "static const directory = FileAttributes(16, name: 'directory');",
          "static const archive = FileAttributes(32, name: 'archive');",
          "static const temporary = FileAttributes(256, name: 'temporary');",
          "static const locallyIncomplete = FileAttributes(512, name: 'locallyIncomplete');",
        ]),
      );
    });
  });
}
