// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

// Note: When adding new golden tests, please update the goldenFileEntries set
// in lib/src/constants/golden_file_entries.dart.

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('ICalendar golden', () {
    final projection =
        InterfaceProjection.fromType('Windows.Globalization.ICalendar');
    compareGolden('icalendar', projection.toString().format());
  });

  test('StorageFolder golden', () {
    final projection = ClassProjection.fromType(
      'Windows.Storage.StorageFolder',
      comment:
          'Manages folders and their contents and provides information about them.',
    );
    compareGolden('storagefolder', projection.toString().format());
  });

  test('_IMapXX golden', () {
    final projection = GenericInterfacePartFileProjection(GenericType.imap);
    compareGolden('imap_part', projection.toString().format());
  });

  test('_IReferenceXX golden', () {
    final projection =
        GenericInterfacePartFileProjection(GenericType.ireference);
    compareGolden('ireference_part', projection.toString().format());
  });

  test('_IVectorXX golden', () {
    final projection = GenericInterfacePartFileProjection(GenericType.ivector);
    compareGolden('ivector_part', projection.toString().format());
  });
}

/// Compares the contents of a [content] with a golden file specified by the
/// [fileName].
void compareGolden(String fileName, String content) {
  File('test/goldens/$fileName.comparison').writeAsStringSync(content);
  final golden = File('test/goldens/$fileName.golden').readAsStringSync();
  expect(content, equals(golden.convertLineEndingsToLF()));
}

extension on String {
  String convertLineEndingsToLF() => replaceAll('\r\n', '\n');

  /// Formats this string.
  String format() => DartFormatter().format(this);
}
