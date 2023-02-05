// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('WinRT enumeration projected correctly', () {
    final projection = EnumProjection.from('Windows.Foundation.AsyncStatus');
    expect(projection.category, equals('enum'));
    expect(projection.classDeclaration,
        equals('enum AsyncStatus implements WinRTEnum {'));
    expect(
        projection.identifiers,
        orderedEquals([
          'started(0)',
          'completed(1)',
          'canceled(2)',
          'error(3)',
        ]));
  });

  test('Acronyms in enum identifiers are converted to lowercase', () {
    final projection =
        EnumProjection.from('Windows.Devices.Geolocation.PositionSource');
    expect(projection.category, equals('enum'));
    expect(projection.classDeclaration,
        equals('enum PositionSource implements WinRTEnum {'));
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
        ]));
  });

  test('WinRT Flags enumeration projected correctly', () {
    final projection =
        FlagsEnumProjection.from('Windows.Storage.FileAttributes');
    expect(projection.classDeclaration,
        equals('class FileAttributes extends WinRTEnum {'));
    expect(
        projection.identifiers,
        orderedEquals([
          "static const normal = FileAttributes(0, name: 'normal');",
          "static const readOnly = FileAttributes(1, name: 'readOnly');",
          "static const directory = FileAttributes(16, name: 'directory');",
          "static const archive = FileAttributes(32, name: 'archive');",
          "static const temporary = FileAttributes(256, name: 'temporary');",
          "static const locallyIncomplete = FileAttributes(512, name: 'locallyIncomplete');",
        ]));
  });
}
