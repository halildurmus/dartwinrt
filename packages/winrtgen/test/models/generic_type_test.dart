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

  group('GenericTypeWithOneTypeArg', () {
    test('shortName', () {
      expect(GenericType.iasyncOperation.shortName, 'IAsyncOperation');
    });

    test('typeArgsInMetadata', () {
      expect(
          GenericType.iasyncOperation.typeArgKindsInMetadata,
          equals({
            TypeArgKind.bool_,
            TypeArgKind.guid,
            TypeArgKind.int32,
            TypeArgKind.int64,
            TypeArgKind.nullableInspectable,
            TypeArgKind.nullableObject,
            TypeArgKind.nullableUri,
            TypeArgKind.loadMoreItemsResult,
            TypeArgKind.string,
            TypeArgKind.uint32,
            TypeArgKind.uint64,
            TypeArgKind.winrtEnum,
            TypeArgKind.winrtFlagsEnum,
          }));
    });
  });

  group('GenericTypeWithTwoTypeArgs', () {
    test('shortName', () {
      expect(GenericType.imap.shortName, 'IMap');
    });

    test('typeArgKindPairsInMetadata', () {
      expect(
          GenericType.imap.typeArgKindPairsInMetadata,
          equals({
            (TypeArgKind.guid, TypeArgKind.nullableObject),
            (TypeArgKind.object, TypeArgKind.nullableObject),
            (TypeArgKind.string, TypeArgKind.nullableInspectable),
            (TypeArgKind.string, TypeArgKind.nullableObject),
            (TypeArgKind.string, TypeArgKind.string),
            (TypeArgKind.uint32, TypeArgKind.nullableInspectable),
            (TypeArgKind.uri, TypeArgKind.string)
          }));
    });
  });
}
