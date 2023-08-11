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

  group('EnumProjection', () {
    test('create', () {
      final typeDef = 'Windows.Storage.FileAttributes'.typeDef;
      final projection = EnumProjection.create(typeDef);
      expect(projection, isA<FlagsEnumProjection>());
    });

    test('projects something', () {
      final output =
          EnumProjection.fromType('Windows.Foundation.AsyncStatus').toString();
      expect(output, isNotEmpty);
      expect(output, contains('AsyncStatus'));
    });

    test('from factory constructor throws a StateError if type is not found',
        () {
      expect(
          () => EnumProjection.fromType('Windows.Foo.Bar'), throwsStateError);
    });
  });

  group('FlagsEnumProjection', () {
    test('projects something', () {
      final output =
          FlagsEnumProjection.fromType('Windows.Storage.FileAttributes')
              .toString();
      expect(output, isNotEmpty);
      expect(output, contains('FileAttributes'));
    });

    test('from factory constructor throws a StateError if type is not found',
        () {
      expect(() => FlagsEnumProjection.fromType('Windows.Foo.Bar'),
          throwsStateError);
    });
  });

  group('WinRT enum', () {
    final asyncStatusProjection =
        EnumProjection.fromType('Windows.Foundation.AsyncStatus');

    test('has copyright header', () {
      expect(asyncStatusProjection.header, contains(Header.copyright));
    });

    test('imports are meaningful', () {
      expect(
          asyncStatusProjection.imports, unorderedEquals(['winrt_enum.dart']));
    });

    test('includes correct dartdoc category comment', () {
      expect(asyncStatusProjection.category, isEmpty);
      expect(asyncStatusProjection.classPreamble, isEmpty);
    });

    test('has correct short name', () {
      expect(asyncStatusProjection.shortName, equals('AsyncStatus'));
    });

    test('annotated with @Deprecated', () {
      final projection = EnumProjection.fromType(
          'Windows.System.UserProfile.AccountPictureKind');
      expect(
          projection.classHeader,
          contains('@Deprecated("Use User instead of UserInformation. For more '
              'info, see MSDN.")'));
    });

    test('has correct class header', () {
      expect(asyncStatusProjection.classHeader,
          equals('enum AsyncStatus implements WinRTEnum'));
    });

    test('has correct number of identifiers', () {
      expect(asyncStatusProjection.identifiers.length, equals(4));
    });

    test('has correct identifiers', () {
      final identifiers = asyncStatusProjection.identifiers;
      expect(identifiers[0].toString(), equals('started(0)'));
      expect(identifiers[1].toString(), equals('completed(1)'));
      expect(identifiers[2].toString(), equals('canceled(2)'));
      expect(identifiers[3].toString(), equals('error(3)'));
    });

    test('identifiers are correctly converted to lowercase', () {
      final projection =
          EnumProjection.fromType('Windows.Devices.Geolocation.PositionSource');
      final identifiers = projection.identifiers;
      expect(identifiers[0].toString(), equals('cellular(0)'));
      expect(identifiers[1].toString(), equals('satellite(1)'));
      expect(identifiers[2].toString(), equals('wifi(2)'));
      expect(identifiers[3].toString(), equals('ipAddress(3)'));
      expect(identifiers[4].toString(), equals('unknown(4)'));
      expect(identifiers[5].toString(), equals('default_(5)'));
      expect(identifiers[6].toString(), equals('obfuscated(6)'));
    });

    test('identifier annotated with @Deprecated', () {
      final projection =
          EnumProjection.fromType('Windows.Media.Render.AudioRenderCategory');
      final backgroundCapableMedia = projection.identifiers.firstWhere(
          (identifier) =>
              identifier.identifierName == 'backgroundCapableMedia');
      expect(backgroundCapableMedia.isDeprecated, isTrue);
      expect(
          backgroundCapableMedia.toString(),
          contains(
              '@Deprecated("BackgroundCapableMedia is deprecated and might not '
              'work on all platforms. For more info, see MSDN.")'));
    });
  });

  group('WinRT Flags enum', () {
    final fileAttributesProjection =
        FlagsEnumProjection.fromType('Windows.Storage.FileAttributes');

    test('has copyright header', () {
      expect(fileAttributesProjection.header, contains(Header.copyright));
    });

    test('imports are meaningful', () {
      expect(
          fileAttributesProjection.imports,
          unorderedEquals(
              ['package:windows_foundation/windows_foundation.dart']));
    });

    test('includes correct dartdoc category comment', () {
      expect(fileAttributesProjection.category, isEmpty);
      expect(fileAttributesProjection.classPreamble, isEmpty);
    });

    test('has correct short name', () {
      expect(fileAttributesProjection.shortName, equals('FileAttributes'));
    });

    test('annotated with @Deprecated', () {
      final projection = FlagsEnumProjection.fromType(
          'Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDeviceCapabilities');
      expect(
          projection.classHeader,
          contains(
              '@Deprecated("SecondaryAuthenticationFactorDeviceCapabilities '
              'is deprecated and might not work on all platforms. For more '
              'info, see MSDN.")'));
    });

    test('has correct class header', () {
      expect(
          fileAttributesProjection.classHeader,
          equals(
              'final class FileAttributes extends WinRTFlagsEnum<FileAttributes>'));
    });

    test('has correct number of static enum constants', () {
      expect(fileAttributesProjection.staticEnumConstants.length, equals(6));
    });

    test('has correct static enum constants', () {
      final staticEnumConstants = fileAttributesProjection.staticEnumConstants;
      expect(staticEnumConstants[0].toString(),
          equals("static const normal = FileAttributes(0, name: 'normal');"));
      expect(
          staticEnumConstants[1].toString(),
          equals(
              "static const readOnly = FileAttributes(1, name: 'readOnly');"));
      expect(
          staticEnumConstants[2].toString(),
          equals(
              "static const directory = FileAttributes(16, name: 'directory');"));
      expect(
          staticEnumConstants[3].toString(),
          equals(
              "static const archive = FileAttributes(32, name: 'archive');"));
      expect(
          staticEnumConstants[4].toString(),
          equals(
              "static const temporary = FileAttributes(256, name: 'temporary');"));
      expect(
          staticEnumConstants[5].toString(),
          equals(
              "static const locallyIncomplete = FileAttributes(512, name: 'locallyIncomplete');"));
    });

    test('has correct values constant', () {
      expect(
        fileAttributesProjection.valuesConstant,
        equals('static const List<FileAttributes> values = '
            '[normal, readOnly, directory, archive, temporary, locallyIncomplete];'),
      );
    });

    test('static enum constant annotated with @Deprecated', () {
      final projection = FlagsEnumProjection.fromType(
          'Windows.Networking.Sockets.SocketProtectionLevel');
      final ssl = projection.staticEnumConstants
          .firstWhere((enumConstant) => enumConstant.identifierName == 'ssl');
      expect(ssl.isDeprecated, isTrue);
      expect(
          ssl.toString(),
          contains(
              '@Deprecated("Ssl may result in insecure connections and may be '
              'altered or unavailable for releases after Windows 8.1. Instead, '
              'use one of the TLS SocketProtectionLevel values.")'));
    });
  });
}
