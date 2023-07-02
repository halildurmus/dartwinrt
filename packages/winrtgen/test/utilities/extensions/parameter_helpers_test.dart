// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/src/utilities/extensions/extensions.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('isSimpleArraySizeParam', () {
    final scope = MetadataStore.getScopeForNamespace('Windows.Foundation');

    test('(1)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = '__valueSize';
      expect(parameter.isSimpleArraySizeParam, isTrue);
    });

    test('(2)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = 'x__dataSize';
      expect(parameter.isSimpleArraySizeParam, isFalse);
    });

    test('(3)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = '__dataSizeX';
      expect(parameter.isSimpleArraySizeParam, isFalse);
    });

    test('(4)', () {
      final parameter = Parameter.fromVoid(scope, 0)
        ..name = 'not a simple array size identifier';
      expect(parameter.isSimpleArraySizeParam, isFalse);
    });
  });
}
