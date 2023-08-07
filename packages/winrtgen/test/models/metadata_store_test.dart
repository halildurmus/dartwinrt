// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('WinRTMetadataStore', () {
    group('findMetadata', () {
      test('finds the metadata', () {
        expect(
            WinRTMetadataStore.findMetadata('Windows.Globalization.Calendar')
                .name,
            equals('Windows.Globalization.Calendar'));
      });

      test('throws a StateError if type is not found', () {
        expect(
          () => WinRTMetadataStore.findMetadata('Windows.Foo.Bar'),
          throwsA(isA<StateError>().having((e) => e.message, 'message',
              equals('`Windows.Foo.Bar` is not found in the Metadata!'))),
        );
      });
    });
  });
}
