// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

// Note: When adding new golden tests, please update the goldenFiles map in
// lib/src/constants/golden_files.dart.

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('ICalendar golden', () {
    const type = 'Windows.Globalization.ICalendar';
    final dartClass = InterfaceProjection.from(type).toString();
    compareGolden('icalendar', dartClass.format());
  });

  test('StorageFolder golden', () {
    const type = 'Windows.Storage.StorageFolder';
    final dartClass = ClassProjection.from(
      type,
      comment:
          'Manages folders and their contents and provides information about them.',
    ).toString();
    compareGolden('storagefolder', dartClass.format());
  });

  test('_IMapXX golden', () {
    final dartClass =
        GenericInterfacePartFileProjection(GenericType.imap).toString();
    compareGolden('imap_part', dartClass.format());
  });

  test('_IReferenceXX golden', () {
    final dartClass =
        GenericInterfacePartFileProjection(GenericType.ireference).toString();
    compareGolden('ireference_part', dartClass.format());
  });

  test('_IVectorXX golden', () {
    final dartClass =
        GenericInterfacePartFileProjection(GenericType.ivector).toString();
    compareGolden('ivector_part', dartClass.format());
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
