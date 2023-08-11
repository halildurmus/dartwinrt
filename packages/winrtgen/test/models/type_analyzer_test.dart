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
      const type = 'Windows.Globalization.Calendar';
      final analyzer = TypeAnalyzer.fromType(type);
      expect(analyzer.type, equals(type));
    });

    test('fromTypeDef', () {
      const type = 'Windows.Globalization.Calendar';
      final typeDef = type.typeDef;
      final analyzer = TypeAnalyzer.fromTypeDef(typeDef);
      expect(analyzer.type, equals(type));
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

    test('isFactoryInterface', () {
      final analyzer =
          TypeAnalyzer.fromType('Windows.Globalization.ICalendarFactory');
      expect(analyzer.isFactoryInterface, isTrue);
      expect(analyzer.isInterface, isTrue);
    });

    test('isInterface', () {
      final analyzer = TypeAnalyzer.fromType('Windows.Globalization.ICalendar');
      expect(analyzer.isInterface, isTrue);
      expect(analyzer.isObject, isTrue);
    });

    test('isStaticsInterface', () {
      final analyzer = TypeAnalyzer.fromType('Windows.System.ILauncherStatics');
      expect(analyzer.isStaticsInterface, isTrue);
      expect(analyzer.isInterface, isTrue);
    });

    test('isStruct', () {
      final analyzer = TypeAnalyzer.fromType('Windows.Foundation.Point');
      expect(analyzer.isStruct, isTrue);
    });

    test('dependencies (1)', () {
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

    test('dependencies (2)', () {
      final analyzer = TypeAnalyzer.fromType('Windows.Foundation.Size');
      final dependencies = analyzer.dependencies;
      expect(dependencies.hasNewDependencies, isFalse);
      expect(dependencies.enums, isEmpty);
      expect(dependencies.objects, isEmpty);
      expect(dependencies.structs, isEmpty);
      expect(dependencies.ignoredTypes, isEmpty);
    });

    test('dependencies (3)', () {
      final analyzer = TypeAnalyzer.fromType(
          'Windows.ApplicationModel.DataTransfer.Clipboard');
      final dependencies = analyzer.dependencies;
      expect(dependencies.hasNewDependencies, isTrue);
      expect(dependencies.enums.length, 4);
      expect(
          dependencies.enums,
          orderedEquals({
            'Windows.ApplicationModel.DataTransfer.ClipboardHistoryItemsResultStatus',
            'Windows.ApplicationModel.DataTransfer.DataPackageOperation',
            'Windows.ApplicationModel.DataTransfer.SetHistoryItemAsContentStatus',
            'Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult'
          }));
      expect(dependencies.objects.length, equals(8));
      expect(
          dependencies.objects,
          orderedEquals({
            'Windows.ApplicationModel.DataTransfer.Clipboard',
            'Windows.ApplicationModel.DataTransfer.ClipboardContentOptions',
            'Windows.ApplicationModel.DataTransfer.ClipboardHistoryItem',
            'Windows.ApplicationModel.DataTransfer.ClipboardHistoryItemsResult',
            'Windows.ApplicationModel.DataTransfer.DataPackage',
            'Windows.ApplicationModel.DataTransfer.DataPackagePropertySet',
            'Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView',
            'Windows.ApplicationModel.DataTransfer.DataPackageView'
          }));
      expect(dependencies.structs, isEmpty);
      expect(dependencies.ignoredTypes.length, equals(28));
      expect(
          dependencies.ignoredTypes,
          orderedEquals({
            'Windows.ApplicationModel.DataTransfer.ClipboardHistoryChangedEventArgs',
            'Windows.ApplicationModel.DataTransfer.OperationCompletedEventArgs',
            'Windows.ApplicationModel.DataTransfer.ShareCompletedEventArgs',
            'Windows.Foundation.Collections.IIterable`1',
            'Windows.Foundation.Collections.IIterator`1',
            'Windows.Foundation.Collections.IKeyValuePair`2',
            'Windows.Foundation.Collections.IMapView`2',
            'Windows.Foundation.Collections.IMap`2',
            'Windows.Foundation.Collections.IVectorView`1',
            'Windows.Foundation.Collections.IVector`1',
            'Windows.Foundation.DateTime',
            'Windows.Foundation.EventHandler`1',
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
Type dependencies of `Windows.ApplicationModel.DataTransfer.Clipboard`:

[Ignored]
 - Windows.ApplicationModel.DataTransfer.ClipboardHistoryChangedEventArgs
 - Windows.ApplicationModel.DataTransfer.OperationCompletedEventArgs
 - Windows.ApplicationModel.DataTransfer.ShareCompletedEventArgs
 - Windows.Foundation.Collections.IIterable`1
 - Windows.Foundation.Collections.IIterator`1
 - Windows.Foundation.Collections.IKeyValuePair`2
 - Windows.Foundation.Collections.IMapView`2
 - Windows.Foundation.Collections.IMap`2
 - Windows.Foundation.Collections.IVectorView`1
 - Windows.Foundation.Collections.IVector`1
 - Windows.Foundation.DateTime
 - Windows.Foundation.EventHandler`1
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

[Enums]
 - Windows.ApplicationModel.DataTransfer.ClipboardHistoryItemsResultStatus
 - Windows.ApplicationModel.DataTransfer.DataPackageOperation
 - Windows.ApplicationModel.DataTransfer.SetHistoryItemAsContentStatus
 - Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult

[Objects]
 - Windows.ApplicationModel.DataTransfer.Clipboard
 - Windows.ApplicationModel.DataTransfer.ClipboardContentOptions
 - Windows.ApplicationModel.DataTransfer.ClipboardHistoryItem
 - Windows.ApplicationModel.DataTransfer.ClipboardHistoryItemsResult
 - Windows.ApplicationModel.DataTransfer.DataPackage
 - Windows.ApplicationModel.DataTransfer.DataPackagePropertySet
 - Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView
 - Windows.ApplicationModel.DataTransfer.DataPackageView
'''));
    });
  });
}
