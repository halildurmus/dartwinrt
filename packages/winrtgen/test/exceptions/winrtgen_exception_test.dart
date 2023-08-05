// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('WinRTGenException', () {
    expect(
      () => throw WinRTGenException(
          'Unsupported projection kind: ${ProjectionKind.delegate}'),
      throwsA(
        isA<WinRTGenException>().having((e) => e.message, 'message',
            equals('Unsupported projection kind: ProjectionKind.delegate')),
      ),
    );
  });
}
