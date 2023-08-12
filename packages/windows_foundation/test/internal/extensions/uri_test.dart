// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  final dartUri1 = Uri.https('dartwinrt.dev', '/');
  final dartUri2 = Uri.https('win32.pub', '/');

  test('Dart Uri to WinRTUri', () {
    final winrtUri = dartUri1.toWinRTUri();
    expect(winrtUri.schemeName, equals('https'));
    expect(winrtUri.host, equals('dartwinrt.dev'));
  });

  group('List<Uri?>', () {
    test('to Pointer<VTablePointer>', () {
      final list = [dartUri1, null, dartUri2];
      final array = list.toArray();
      expect(array.elementAt(0).value.address, isNonZero);
      expect(array.elementAt(1).value.address, isZero);
      expect(array.elementAt(2).value.address, isNonZero);
      free(array);
    });

    test('to IPropertyValue', () {
      final pv = [dartUri1, null, dartUri2].toPropertyValue();
      expect(pv.type, equals(PropertyType.inspectableArray));
      final list = pv.getInspectableArray();
      expect(list.length, equals(3));
      expect(list[0], isA<Uri>());
      expect(list[1], isNull);
      expect(list[2], isA<Uri>());
    });
  });

  test('WinRT Uri to Dart Uri', () {
    final winrtUri = winrt_uri.Uri.createUri(dartUri1.toString());
    final dartUri = winrtUri.toDartUri();
    expect(dartUri.scheme, equals('https'));
    expect(dartUri.host, equals('dartwinrt.dev'));
  });

  group('Pointer<COMObject>', () {
    test('to List<Uri?>', () {
      final winrtUri1 = winrt_uri.Uri.createUri(dartUri1.toString())..detach();
      final winrtUri2 = winrt_uri.Uri.createUri(dartUri2.toString())..detach();
      final array = calloc<COMObject>(3)
        ..[0] = winrtUri1.ptr.ref
        ..[2] = winrtUri2.ptr.ref;
      final list = array.toUriList(length: 3);
      expect(list.length, equals(3));
      expect(list, orderedEquals([dartUri1, null, dartUri2]));
      free(array);
    });

    test('to WinRT Uri', () {
      final ptr = (winrt_uri.Uri.createUri(dartUri1.toString())..detach()).ptr;
      final winrtUri = ptr.toWinRTUri();
      expect(winrtUri.schemeName, equals('https'));
      expect(winrtUri.host, equals('dartwinrt.dev'));
    });
  });

  tearDownAll(forceGC);
}
