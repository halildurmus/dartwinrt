// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('WinRTMetadataStore', () {
    setUpAll(WinRTMetadataStore.loadMetadata);

    test('classesInNamespace', () {
      final typeDefs =
          WinRTMetadataStore.classesInNamespace('Windows.Foundation');
      expect(typeDefs.length, greaterThanOrEqualTo(63));
      expect(
        typeDefs.where((typeDef) => typeDef.name == 'Windows.Foundation.Uri'),
        isNotEmpty,
      );
    });

    test('delegatesInNamespace', () {
      final typeDefs =
          WinRTMetadataStore.delegatesInNamespace('Windows.Foundation');
      expect(typeDefs.length, greaterThanOrEqualTo(11));
      expect(
        typeDefs.where((typeDef) =>
            typeDef.name == 'Windows.Foundation.AsyncActionCompletedHandler'),
        isNotEmpty,
      );
    });

    test('enumsInNamespace', () {
      final typeDefs =
          WinRTMetadataStore.enumsInNamespace('Windows.Foundation');
      expect(typeDefs.length, greaterThanOrEqualTo(19));
      expect(
        typeDefs.where(
            (typeDef) => typeDef.name == 'Windows.Foundation.AsyncStatus'),
        isNotEmpty,
      );
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
        typeDefs.where((typeDef) =>
            typeDef.name == 'Windows.Foundation.Collections.IPropertySet'),
        isNotEmpty,
      );
    });

    test('structsInNamespace', () {
      final typeDefs =
          WinRTMetadataStore.structsInNamespace('Windows.Foundation');
      expect(typeDefs.length, greaterThanOrEqualTo(15));
      expect(
        typeDefs.where((typeDef) => typeDef.name == 'Windows.Foundation.Point'),
        isNotEmpty,
      );
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
        expect(
          typeDefs.where((typeDef) => typeDef.name == 'Windows.Foundation.Uri'),
          isNotEmpty,
        );
        expect(typeDefs.where((typeDef) => typeDef.isClass).length,
            greaterThanOrEqualTo(63));
        expect(
          typeDefs.where((typeDef) =>
              typeDef.name == 'Windows.Foundation.AsyncActionCompletedHandler'),
          isNotEmpty,
        );
        expect(typeDefs.where((typeDef) => typeDef.isDelegate).length,
            greaterThanOrEqualTo(11));
        expect(
          typeDefs.where(
              (typeDef) => typeDef.name == 'Windows.Foundation.AsyncStatus'),
          isNotEmpty,
        );
        expect(typeDefs.where((typeDef) => typeDef.isEnum).length,
            greaterThanOrEqualTo(19));
        expect(
          typeDefs.where((typeDef) =>
              typeDef.name == 'Windows.Foundation.Collections.IPropertySet'),
          isNotEmpty,
        );
        expect(typeDefs.where((typeDef) => typeDef.isInterface).length,
            greaterThanOrEqualTo(61));
        expect(
          typeDefs
              .where((typeDef) => typeDef.name == 'Windows.Foundation.Point'),
          isNotEmpty,
        );
        expect(typeDefs.where((typeDef) => typeDef.isStruct).length,
            greaterThanOrEqualTo(15));
      });
    });
  });
}
