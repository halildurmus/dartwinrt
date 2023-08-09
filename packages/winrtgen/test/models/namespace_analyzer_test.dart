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

  group('NamespaceAnalyzer', () {
    test('fromNamespace', () {
      const namespace = 'Windows.Foundation';
      final analyzer = NamespaceAnalyzer.fromNamespace(namespace);
      expect(analyzer.namespace, equals(namespace));
    });

    test(
        'fromNamespace throws an ArgumentError if namespace is not a WinRT namespace',
        () {
      expect(
        () => NamespaceAnalyzer.fromNamespace('Windows'),
        throwsA(isA<ArgumentError>().having(
            (e) => e.message, 'message', equals('Not a WinRT namespace.'))),
      );
    });

    test('classes', () {
      final analyzer = NamespaceAnalyzer.fromNamespace('Windows.Foundation');
      final classes = analyzer.classes;
      expect(classes.length, greaterThanOrEqualTo(63));
      expect(classes.contains('Windows.Foundation.MemoryBuffer'), isTrue);
      expect(classes.contains('Windows.Foundation.IMemoryBuffer'), isFalse);
    });

    test('containsType', () {
      final analyzer = NamespaceAnalyzer.fromNamespace('Windows.Foundation');
      expect(analyzer.containsType('Windows.Foundation.Uri'), isTrue);
      expect(analyzer.containsType('Windows.Globalization.Calendar'), isFalse);
    });

    test('contains throws an ArgumentError if type is not a WinRT type', () {
      final analyzer = NamespaceAnalyzer.fromNamespace('Windows.Foundation');
      expect(
        () => analyzer.containsType('Windows'),
        throwsA(isA<ArgumentError>()
            .having((e) => e.message, 'message', equals('Not a WinRT type.'))),
      );
    });

    test('delegates', () {
      final analyzer = NamespaceAnalyzer.fromNamespace('Windows.Foundation');
      final delegates = analyzer.delegates;
      expect(delegates.length, greaterThanOrEqualTo(11));
      expect(
          delegates.contains('Windows.Foundation.AsyncActionCompletedHandler'),
          isTrue);
      expect(
          delegates
              .contains('Windows.Foundation.AsyncOperationCompletedHandler`1'),
          isTrue);
    });

    test('enums', () {
      final analyzer = NamespaceAnalyzer.fromNamespace('Windows.Foundation');
      final enums = analyzer.enums;
      expect(enums.length, greaterThanOrEqualTo(19));
      expect(enums.contains('Windows.Foundation.AsyncStatus'), isTrue);
    });

    test('interfaces', () {
      final analyzer = NamespaceAnalyzer.fromNamespace('Windows.Foundation');
      final interfaces = analyzer.interfaces;
      expect(interfaces.length, greaterThanOrEqualTo(61));
      expect(interfaces.contains('Windows.Foundation.IAsyncAction'), isTrue);
      expect(interfaces.contains('Windows.Foundation.IReference`1'), isTrue);
    });

    test('interfacesExcludingFactoryAndStatics', () {
      final analyzer = NamespaceAnalyzer.fromNamespace('Windows.Foundation');
      final interfaces = analyzer.interfacesExcludingFactoryAndStatics;
      expect(interfaces.length, greaterThanOrEqualTo(43));
      expect(interfaces.contains('Windows.Foundation.IMemoryBufferFactory'),
          isFalse);
      expect(interfaces.contains('Windows.Foundation.IPropertyValueStatics'),
          isFalse);
    });

    test('structs', () {
      final analyzer = NamespaceAnalyzer.fromNamespace('Windows.Foundation');
      final structs = analyzer.structs;
      expect(structs.length, greaterThanOrEqualTo(15));
      expect(structs.contains('Windows.Foundation.Rect'), isTrue);
    });
  });
}
