// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('WinRT parameter', () {
    test('projects bool', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics',
          'GetNationalDirectDialingPrefixForRegion');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('stripNonDigit'));
      expect(parameter.type.exposedType, equals('bool'));
    });

    test('projects class', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'Compare');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<ClassParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier,
          equals('other == null ? nullptr : other.ptr.ref.lpVtbl'));
      expect(parameter.type.exposedType, equals('Calendar?'));
    });

    test('projects DateTime', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'SetDateTime');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<DateTimeParameterProjection>());
      expect(
        parameter.preamble,
        equalsIgnoringWhitespace('final valueDateTime = '
            'value.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;'),
      );
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('valueDateTime'));
      expect(parameter.type.exposedType, equals('DateTime'));
    });

    test('projects double', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateDouble');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('value'));
      expect(parameter.type.exposedType, equals('double'));
    });

    test('projects Duration', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateTimeSpan');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<DurationParameterProjection>());
      expect(parameter.preamble,
          equals('final valueDuration = value.inMicroseconds * 10;'));
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('valueDuration'));
      expect(parameter.type.exposedType, equals('Duration'));
    });

    test('projects enum', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageItem', 'DeleteAsync');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<EnumParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('option.value'));
      expect(parameter.type.exposedType, equals('StorageDeleteOption'));
    });

    test('projects Guid', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateGuid');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<GuidParameterProjection>());
      expect(parameter.preamble,
          equals('final valueNativeGuidPtr = value.toNativeGUID();'));
      expect(parameter.postamble, equals('free(valueNativeGuidPtr);'));
      expect(parameter.localIdentifier, equals('valueNativeGuidPtr.ref'));
      expect(parameter.type.exposedType, equals('Guid'));
    });

    test('projects int', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateInt32');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('value'));
      expect(parameter.type.exposedType, equals('int'));
    });

    test('projects interface', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageFile', 'CopyAndReplaceAsync');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<InterfaceParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(
          parameter.localIdentifier,
          equals(
              'fileToReplace == null ? nullptr : fileToReplace.ptr.ref.lpVtbl'));
      expect(parameter.type.exposedType, equals('IStorageFile?'));
    });

    test('projects Object', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.PropertySet', 'Insert');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<ObjectParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier,
          equals('value?.box().ref.lpVtbl ?? nullptr'));
      expect(parameter.type.exposedType, equals('Object?'));
    });

    test('projects pointer', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.FileExtensionVector', 'IndexOf');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('index'));
      expect(parameter.type.exposedType, equals('Pointer<Uint32>'));
    });

    test('projects simpleArray', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.FileExtensionVector', 'GetMany');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('value'));
      expect(parameter.type.exposedType, equals('Pointer<IntPtr>'));
    });

    test('projects String', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'ChangeCalendarSystem');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<StringParameterProjection>());
      expect(parameter.preamble,
          equals('final valueHString = convertToHString(value);'));
      expect(parameter.postamble, equals('WindowsDeleteString(valueHString);'));
      expect(parameter.localIdentifier, equals('valueHString'));
      expect(parameter.type.exposedType, equals('String'));
    });

    test('projects struct', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreatePoint');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('value'));
      expect(parameter.type.exposedType, equals('Point'));
    });

    test('projects Uri', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.ILauncherStatics', 'LaunchUriAsync');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<UriParameterProjection>());
      expect(
          parameter.preamble,
          equals(
              'final uriUri = uri == null ? null : winrt_uri.Uri.createUri(uri.toString());'));
      expect(parameter.postamble, equals('uriUri?.release();'));
      expect(parameter.localIdentifier,
          equals('uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl'));
      expect(parameter.type.exposedType, equals('Uri?'));
    });
  });
}
