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

  group('TypeAnalyzer', () {
    test('fromType', () {
      const fullyQualifiedType = 'Windows.Globalization.Calendar';
      final analyzer = TypeAnalyzer.fromType(fullyQualifiedType);
      expect(analyzer.type, equals(fullyQualifiedType));
    });

    test('fromTypeDef', () {
      const fullyQualifiedType = 'Windows.Globalization.Calendar';
      final typeDef = WinRTMetadataStore.findMetadata(fullyQualifiedType);
      final analyzer = TypeAnalyzer.fromTypeDef(typeDef);
      expect(analyzer.type, equals(fullyQualifiedType));
    });

    test('interfaces', () {
      final analyzer = TypeAnalyzer.fromType('Windows.Globalization.Calendar');
      final interfaces = analyzer.interfaces;
      expect(interfaces.length, equals(2));
      expect(
          interfaces,
          orderedEquals({
            'Windows.Globalization.ICalendar',
            'Windows.Globalization.ITimeZoneOnCalendar'
          }));
    });

    test('isClass', () {
      final analyzer = TypeAnalyzer.fromType('Windows.Globalization.Calendar');
      expect(analyzer.isClass, isTrue);
      expect(analyzer.isObject, isTrue);
    });

    test('isDelegate', () {
      final analyzer = TypeAnalyzer.fromType(
          'Windows.Foundation.AsyncActionCompletedHandler');
      expect(analyzer.isDelegate, isTrue);
    });

    test('isEnum', () {
      final analyzer = TypeAnalyzer.fromType('Windows.Foundation.AsyncStatus');
      expect(analyzer.isEnum, isTrue);
    });

    test('isInterface', () {
      final analyzer = TypeAnalyzer.fromType('Windows.Globalization.ICalendar');
      expect(analyzer.isInterface, isTrue);
      expect(analyzer.isObject, isTrue);
    });

    test('isStruct', () {
      final analyzer = TypeAnalyzer.fromType('Windows.Foundation.Point');
      expect(analyzer.isStruct, isTrue);
    });

    test('dependencies', () {
      final analyzer = TypeAnalyzer.fromType('Windows.Storage.StorageFile');
      final dependencies = analyzer.dependencies;
      expect(dependencies.hasNewDependencies, isFalse);
      expect(dependencies.enums, isEmpty);
      expect(dependencies.objects, isEmpty);
      expect(dependencies.structs, isEmpty);
      expect(dependencies.ignoredTypes.length, equals(23));
      expect(
          dependencies.ignoredTypes,
          orderedEquals({
            'Windows.Foundation.Collections.IIterable`1',
            'Windows.Foundation.Collections.IIterator`1',
            'Windows.Foundation.Collections.IKeyValuePair`2',
            'Windows.Foundation.Collections.IMap`2',
            'Windows.Foundation.Collections.IVectorView`1',
            'Windows.Foundation.Collections.IVector`1',
            'Windows.Foundation.DateTime',
            'Windows.Foundation.EventRegistrationToken',
            'Windows.Foundation.HResult',
            'Windows.Foundation.IAsyncOperationWithProgress`2',
            'Windows.Foundation.IAsyncOperation`1',
            'Windows.Foundation.IReference`1',
            'Windows.Foundation.TimeSpan',
            'Windows.Foundation.TypedEventHandler`2',
            'Windows.Storage.IStorageFile',
            'Windows.Storage.IStorageItem',
            'Windows.Storage.Search.IStorageQueryResultBase',
            'Windows.Storage.Streams.IInputStream',
            'Windows.Storage.Streams.IOutputStream',
            'Windows.Storage.Streams.IRandomAccessStream',
            'Windows.Storage.Streams.IRandomAccessStreamReference',
            'Windows.System.UserAuthenticationStatusChangingEventArgs',
            'Windows.System.UserChangedEventArgs'
          }));
      expect(dependencies.alreadyGeneratedTypes.length, isZero);
      expect(dependencies.toString(), equalsIgnoringWhitespace('''
Type dependencies of `Windows.Storage.StorageFile`:

[Ignored]
 - Windows.Foundation.Collections.IIterable`1
 - Windows.Foundation.Collections.IIterator`1
 - Windows.Foundation.Collections.IKeyValuePair`2
 - Windows.Foundation.Collections.IMap`2
 - Windows.Foundation.Collections.IVectorView`1
 - Windows.Foundation.Collections.IVector`1
 - Windows.Foundation.DateTime
 - Windows.Foundation.EventRegistrationToken
 - Windows.Foundation.HResult
 - Windows.Foundation.IAsyncOperationWithProgress`2
 - Windows.Foundation.IAsyncOperation`1
 - Windows.Foundation.IReference`1
 - Windows.Foundation.TimeSpan
 - Windows.Foundation.TypedEventHandler`2
 - Windows.Storage.IStorageFile
 - Windows.Storage.IStorageItem
 - Windows.Storage.Search.IStorageQueryResultBase
 - Windows.Storage.Streams.IInputStream
 - Windows.Storage.Streams.IOutputStream
 - Windows.Storage.Streams.IRandomAccessStream
 - Windows.Storage.Streams.IRandomAccessStreamReference
 - Windows.System.UserAuthenticationStatusChangingEventArgs
 - Windows.System.UserChangedEventArgs
'''));
    });
  });
}
