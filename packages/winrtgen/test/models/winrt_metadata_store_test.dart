// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('WinRTMetadataStore', () {
    test('classesInNamespace', () {
      final typeDefs =
          WinRTMetadataStore.classesInNamespace('Windows.Foundation');
      expect(typeDefs.length, greaterThanOrEqualTo(63));
      expect(typeDefs.containsType('Windows.Foundation.Uri'), isTrue);
    });

    test('delegatesInNamespace', () {
      final typeDefs =
          WinRTMetadataStore.delegatesInNamespace('Windows.Foundation');
      expect(typeDefs.length, greaterThanOrEqualTo(11));
      expect(
          typeDefs
              .containsType('Windows.Foundation.AsyncActionCompletedHandler'),
          isTrue);
    });

    test('enumsInNamespace', () {
      final typeDefs =
          WinRTMetadataStore.enumsInNamespace('Windows.Foundation');
      expect(typeDefs.length, greaterThanOrEqualTo(19));
      expect(typeDefs.containsType('Windows.Foundation.AsyncStatus'), isTrue);
    });

    group('findTypeDef', () {
      test('returns a TypeDef', () {
        final typeDef =
            WinRTMetadataStore.findTypeDef('Windows.Globalization.Calendar');
        expect(typeDef.name, equals('Windows.Globalization.Calendar'));
      });

      test('throws an ArgumentError if type is not a WinRT type', () {
        expect(
          () => WinRTMetadataStore.findTypeDef('Windows'),
          throwsA(
            isA<ArgumentError>().having(
              (e) => e.message,
              'message',
              equals('Not a WinRT type.'),
            ),
          ),
        );
      });

      test('throws a StateError if type is not found', () {
        expect(
          () => WinRTMetadataStore.findTypeDef('Windows.Foo.Bar'),
          throwsA(
            isA<StateError>().having(
              (e) => e.message,
              'message',
              equals('`Windows.Foo.Bar` is not found in the Metadata!'),
            ),
          ),
        );
      });
    });

    test('interfacesInNamespace', () {
      final typeDefs =
          WinRTMetadataStore.interfacesInNamespace('Windows.Foundation');
      expect(typeDefs.length, greaterThanOrEqualTo(61));
      expect(
          typeDefs.containsType('Windows.Foundation.Collections.IPropertySet'),
          isTrue);
    });

    test('structsInNamespace', () {
      final typeDefs =
          WinRTMetadataStore.structsInNamespace('Windows.Foundation');
      expect(typeDefs.length, greaterThanOrEqualTo(15));
      expect(typeDefs.containsType('Windows.Foundation.Point'), isTrue);
    });

    group('tryFindTypeDef', () {
      test('tryFindTypeDef returns a TypeDef', () {
        final typeDef =
            WinRTMetadataStore.tryFindTypeDef('Windows.Globalization.Calendar');
        expect(typeDef, isNotNull);
        expect(typeDef!.name, equals('Windows.Globalization.Calendar'));
      });

      test('tryFindTypeDef returns null if type is not found', () {
        final typeDef = WinRTMetadataStore.tryFindTypeDef('Windows.Foo.Bar');
        expect(typeDef, isNull);
      });
    });

    group('typeDefsInNamespace', () {
      test('returns all TypeDefs', () {
        final typeDefs =
            WinRTMetadataStore.typeDefsInNamespace('Windows.Foundation');
        expect(typeDefs.length, greaterThanOrEqualTo(169));
        expect(typeDefs.containsType('Windows.Foundation.Uri'), isTrue);
        expect(typeDefs.classes.length, greaterThanOrEqualTo(63));
        expect(
            typeDefs
                .containsType('Windows.Foundation.AsyncActionCompletedHandler'),
            isTrue);
        expect(typeDefs.delegates.length, greaterThanOrEqualTo(11));
        expect(typeDefs.containsType('Windows.Foundation.AsyncStatus'), isTrue);
        expect(typeDefs.enums.length, greaterThanOrEqualTo(19));
        expect(
            typeDefs
                .containsType('Windows.Foundation.Collections.IPropertySet'),
            isTrue);
        expect(typeDefs.interfaces.length, greaterThanOrEqualTo(61));
        expect(typeDefs.containsType('Windows.Foundation.Point'), isTrue);
        expect(typeDefs.structs.length, greaterThanOrEqualTo(15));
      });
    });
  });
}
