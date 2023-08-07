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

  const fakeJsonLoader = FakeJsonLoader();
  const fakeJsonSaver = FakeJsonSaver();

  group('EnumManager', () {
    final enumManager =
        EnumManager(jsonLoader: fakeJsonLoader, jsonSaver: fakeJsonSaver);

    setUp(() {
      const types = <String, String>{
        'Windows.Foundation.AsyncStatus':
            'Specifies the status of an asynchronous operation.',
        'Windows.UI.Notifications.ToastNotificationMode': '',
        'Windows.Globalization.DayOfWeek': 'Identifies the day of the week.'
      };
      enumManager.addAll(types);
    });

    test('add', () {
      expect(enumManager.length, equals(3));
      enumManager.add('Windows.System.UserType',
          comment: 'Represents user types.');
      expect(enumManager.length, equals(4));
      expect(enumManager.contains('Windows.System.UserType'), isTrue);
      expect(enumManager['Windows.System.UserType'],
          equals('Represents user types.'));
    });

    test('add overwrites comment', () {
      expect(enumManager.length, equals(3));
      expect(enumManager['Windows.Globalization.DayOfWeek'],
          equals('Identifies the day of the week.'));
      enumManager.add('Windows.Globalization.DayOfWeek',
          comment: 'New comment.');
      expect(enumManager.length, equals(3));
      expect(enumManager['Windows.Globalization.DayOfWeek'],
          equals('New comment.'));
    });

    test(
        'add throws an ArgumentError if the type is not a fully qualified type',
        () {
      expect(() => enumManager.add('Windows'), throwsArgumentError);
    });

    test('addAll', () {
      expect(enumManager.length, equals(3));
      enumManager.addAll({
        'Windows.Data.Json.JsonValueType':
            'Specifies the JSON value type of a JsonValue object.',
        'Windows.Storage.FileAttributes':
            'Describes the attributes of a file or folder.'
      });
      expect(enumManager.length, equals(5));
      expect(enumManager.contains('Windows.Data.Json.JsonValueType'), isTrue);
      expect(enumManager.contains('Windows.Storage.FileAttributes'), isTrue);
    });

    test(
        'addAll throws an ArgumentError if a type is not a fully qualified type',
        () {
      expect(
          () => enumManager.addAll({
                'Windows.Data.Json.JsonValueType':
                    'Specifies the JSON value type of a JsonValue object.',
                'Windows': ''
              }),
          throwsArgumentError);
    });

    test('clear', () {
      expect(enumManager.length, equals(3));
      enumManager.clear();
      expect(enumManager.length, isZero);
      expect(enumManager.types, isEmpty);
    });

    test('contains', () {
      expect(enumManager.contains('Windows.Foundation.AsyncStatus'), isTrue);
      expect(enumManager.contains('Windows.Foundation.Uri'), isFalse);
    });

    test('length', () {
      expect(enumManager.length, equals(3));
      enumManager.add('Windows.Data.Json.JsonValueType',
          comment: 'Specifies the JSON value type of a JsonValue object.');
      expect(enumManager.length, equals(4));
      enumManager.remove('Windows.Foundation.AsyncStatus');
      expect(enumManager.length, equals(3));
    });

    test('path', () {
      expect(enumManager.path, equals(r'assets/enums.json'));
    });

    test('remove', () {
      expect(enumManager.length, equals(3));
      expect(enumManager.contains('Windows.Globalization.DayOfWeek'), isTrue);
      enumManager.remove('Windows.Globalization.DayOfWeek');
      expect(enumManager.length, equals(2));
      expect(enumManager.contains('Windows.Globalization.DayOfWeek'), isFalse);
    });

    test('remove throws an ArgumentError if type is not a fully qualified type',
        () {
      expect(
          () => enumManager.remove('Windows.Foundation'), throwsArgumentError);
    });

    test('types', () {
      final types = enumManager.types;
      expect(types.length, equals(3));
      expect(types.containsKey('Windows.Globalization.DayOfWeek'), isTrue);
    });

    test('typesWithoutComments', () {
      final typesWithoutComments = enumManager.typesWithoutComments;
      expect(typesWithoutComments.length, equals(1));
      expect(typesWithoutComments,
          orderedEquals({'Windows.UI.Notifications.ToastNotificationMode'}));
    });

    test('operator []', () {
      expect(enumManager['Windows.Foundation.AsyncStatus'],
          equals('Specifies the status of an asynchronous operation.'));
      expect(enumManager['Windows.UI.Notifications.ToastNotificationMode'],
          isEmpty);
      expect(enumManager['Windows.Storage.FileAttributes'], isNull);
    });

    test(
        'operator [] throws an ArgumentError if type is not a fully qualified type',
        () {
      expect(() => enumManager['Windows.Foundation'], throwsArgumentError);
    });

    test('operator []=', () {
      expect(enumManager.length, equals(3));
      enumManager['Windows.Data.Xml.Dom.NodeType'] =
          'The type of an IXmlNode, as returned by the NodeType property.';
      expect(enumManager.length, equals(4));
      expect(enumManager.contains('Windows.Data.Xml.Dom.NodeType'), isTrue);
      expect(
          enumManager['Windows.Data.Xml.Dom.NodeType'],
          equals(
              'The type of an IXmlNode, as returned by the NodeType property.'));
    });

    test('operator []= overwrites comment', () {
      expect(enumManager.length, equals(3));
      expect(enumManager['Windows.Foundation.AsyncStatus'],
          equals('Specifies the status of an asynchronous operation.'));
      enumManager['Windows.Foundation.AsyncStatus'] = 'New comment';
      expect(enumManager.length, equals(3));
      expect(
          enumManager['Windows.Foundation.AsyncStatus'], equals('New comment'));
    });

    test(
        'operator []= throws an ArgumentError if type is not a fully qualified type',
        () {
      expect(() => enumManager['Windows.Foundation'] = 'New comment',
          throwsArgumentError);
    });

    tearDown(enumManager.clear);
  });

  group('ObjectManager', () {
    final objectManager =
        ObjectManager(jsonLoader: fakeJsonLoader, jsonSaver: fakeJsonSaver);

    setUp(() {
      const types = <String, String>{
        'Windows.Foundation.MemoryBuffer':
            'Represents a reference counted memory buffer.',
        'Windows.UI.Popups.MessageDialog':
            'Represents a dialog for showing messages to the user.',
        'Windows.Media.Core.IMediaSource':
            'Represents a media source that delivers media samples to a media pipeline.'
      };
      objectManager.addAll(types);
    });

    test('add', () {
      expect(objectManager.length, equals(3));
      objectManager.add('Windows.Globalization.Calendar',
          comment:
              'Manipulates the representation of a `DateTime` within a given calendar and clock.');
      expect(objectManager.length, equals(4));
      expect(objectManager.contains('Windows.Globalization.Calendar'), isTrue);
      expect(
          objectManager['Windows.Globalization.Calendar'],
          equals(
              'Manipulates the representation of a `DateTime` within a given calendar and clock.'));
    });

    test('add overwrites comment', () {
      expect(objectManager.length, equals(3));
      expect(objectManager['Windows.UI.Popups.MessageDialog'],
          equals('Represents a dialog for showing messages to the user.'));
      objectManager.add('Windows.UI.Popups.MessageDialog',
          comment: 'New comment.');
      expect(objectManager.length, equals(3));
      expect(objectManager['Windows.UI.Popups.MessageDialog'],
          equals('New comment.'));
    });

    test(
        'add throws an ArgumentError if the type is not a fully qualified type',
        () {
      expect(() => objectManager.add('Windows'), throwsArgumentError);
    });

    test('addAll', () {
      expect(objectManager.length, equals(3));
      objectManager.addAll({
        'Windows.Foundation.IClosable':
            'Defines a method to release allocated resources.',
        'Windows.Gaming.Input.Headset':
            'Contains information about an audio headset attached to a gamepad.'
      });
      expect(objectManager.length, equals(5));
      expect(objectManager.contains('Windows.Foundation.IClosable'), isTrue);
      expect(objectManager.contains('Windows.Gaming.Input.Headset'), isTrue);
    });

    test(
        'addAll throws an ArgumentError if a type is not a fully qualified type',
        () {
      expect(
          () => objectManager.addAll({
                'Windows.Foundation.IStringable':
                    'Provides a way to represent the current object as a string.',
                'Windows': ''
              }),
          throwsArgumentError);
    });

    test('classes', () {
      final classes = objectManager.classes;
      expect(classes.length, equals(2));
      expect(
          classes,
          orderedEquals({
            'Windows.Foundation.MemoryBuffer',
            'Windows.UI.Popups.MessageDialog'
          }));
    });

    test('clear', () {
      expect(objectManager.length, equals(3));
      objectManager.clear();
      expect(objectManager.length, isZero);
      expect(objectManager.types, isEmpty);
    });

    test('contains', () {
      expect(objectManager.contains('Windows.Foundation.MemoryBuffer'), isTrue);
      expect(objectManager.contains('Windows.Foundation.Uri'), isFalse);
    });

    test('interfaces', () {
      final interfaces = objectManager.interfaces;
      expect(interfaces.length, equals(1));
      expect(interfaces, orderedEquals({'Windows.Media.Core.IMediaSource'}));
    });

    test('length', () {
      expect(objectManager.length, equals(3));
      objectManager.add('Windows.Foundation.IClosable',
          comment: 'Defines a method to release allocated resources.');
      expect(objectManager.length, equals(4));
      objectManager.remove('Windows.Foundation.MemoryBuffer');
      expect(objectManager.length, equals(3));
    });

    test('path', () {
      expect(objectManager.path, equals(r'assets/objects.json'));
    });

    test('remove', () {
      expect(objectManager.length, equals(3));
      expect(objectManager.contains('Windows.Foundation.MemoryBuffer'), isTrue);
      objectManager.remove('Windows.Foundation.MemoryBuffer');
      expect(objectManager.length, equals(2));
      expect(
          objectManager.contains('Windows.Foundation.MemoryBuffer'), isFalse);
    });

    test('remove throws an ArgumentError if type is not a fully qualified type',
        () {
      expect(() => objectManager.remove('Windows.Foundation'),
          throwsArgumentError);
    });

    test('types', () {
      final types = objectManager.types;
      expect(types.length, equals(3));
      expect(types.containsKey('Windows.Foundation.MemoryBuffer'), isTrue);
    });

    test('typesWithoutComments', () {
      final typesWithoutComments = objectManager.typesWithoutComments;
      expect(typesWithoutComments, isEmpty);
    });

    test('operator []', () {
      expect(objectManager['Windows.Foundation.MemoryBuffer'],
          equals('Represents a reference counted memory buffer.'));
      expect(objectManager['Windows.UI.Popups.MessageDialog'],
          equals('Represents a dialog for showing messages to the user.'));
      expect(
          objectManager['Windows.Media.Core.IMediaSource'],
          equals(
              'Represents a media source that delivers media samples to a media pipeline.'));
    });

    test(
        'operator [] throws an ArgumentError if type is not a fully qualified type',
        () {
      expect(() => objectManager['Windows.Foundation'], throwsArgumentError);
    });

    test('operator []=', () {
      expect(objectManager.length, equals(3));
      objectManager['Windows.Gaming.Input.Gamepad'] = 'Represents a gamepad.';
      expect(objectManager.length, equals(4));
      expect(objectManager.contains('Windows.Gaming.Input.Gamepad'), isTrue);
      expect(objectManager['Windows.Gaming.Input.Gamepad'],
          equals('Represents a gamepad.'));
    });

    test('operator []= overwrites comment', () {
      expect(objectManager.length, equals(3));
      expect(objectManager['Windows.Foundation.MemoryBuffer'],
          equals('Represents a reference counted memory buffer.'));
      objectManager['Windows.Foundation.MemoryBuffer'] = 'New comment';
      expect(objectManager.length, equals(3));
      expect(objectManager['Windows.Foundation.MemoryBuffer'],
          equals('New comment'));
    });

    test(
        'operator []= throws an ArgumentError if type is not a fully qualified type',
        () {
      expect(() => objectManager['Windows.Foundation'] = 'New comment',
          throwsArgumentError);
    });

    tearDown(objectManager.clear);
  });

  group('StructManager', () {
    final structManager =
        StructManager(jsonLoader: fakeJsonLoader, jsonSaver: fakeJsonSaver);

    setUp(() {
      const types = <String, String>{
        'Windows.Foundation.Size':
            'Describes the width and height of an object.',
        'Windows.UI.Color':
            'Describes a color in terms of alpha, red, green, and blue channels.',
        'Windows.Gaming.Input.GamepadReading':
            'Represents the current state of the gamepad.'
      };
      structManager.addAll(types);
    });

    test('add', () {
      expect(structManager.length, equals(3));
      structManager.add('Windows.Media.MediaTimeRange',
          comment: 'Represents a time range within media content.');
      expect(structManager.length, equals(4));
      expect(structManager.contains('Windows.Media.MediaTimeRange'), isTrue);
      expect(structManager['Windows.Media.MediaTimeRange'],
          equals('Represents a time range within media content.'));
    });

    test('add overwrites comment', () {
      expect(structManager.length, equals(3));
      expect(structManager['Windows.Gaming.Input.GamepadReading'],
          equals('Represents the current state of the gamepad.'));
      structManager.add('Windows.Gaming.Input.GamepadReading',
          comment: 'New comment.');
      expect(structManager.length, equals(3));
      expect(structManager['Windows.Gaming.Input.GamepadReading'],
          equals('New comment.'));
    });

    test(
        'add throws an ArgumentError if the type is not a fully qualified type',
        () {
      expect(() => structManager.add('Windows'), throwsArgumentError);
    });

    test('addAll', () {
      expect(structManager.length, equals(3));
      structManager.addAll({
        'Windows.ApplicationModel.PackageVersion':
            'Represents the package version info.',
        'Windows.Graphics.RectInt32':
            'Defines the size and location of a rectangular surface.'
      });
      expect(structManager.length, equals(5));
      expect(structManager.contains('Windows.ApplicationModel.PackageVersion'),
          isTrue);
      expect(structManager.contains('Windows.Graphics.RectInt32'), isTrue);
    });

    test(
        'addAll throws an ArgumentError if a type is not a fully qualified type',
        () {
      expect(
          () => structManager.addAll({
                'Windows.Graphics.RectInt32':
                    'Defines the size and location of a rectangular surface.',
                'Windows': ''
              }),
          throwsArgumentError);
    });

    test('clear', () {
      expect(structManager.length, equals(3));
      structManager.clear();
      expect(structManager.length, isZero);
      expect(structManager.types, isEmpty);
    });

    test('contains', () {
      expect(structManager.contains('Windows.Foundation.Size'), isTrue);
      expect(structManager.contains('Windows.Foundation.Uri'), isFalse);
    });

    test('length', () {
      expect(structManager.length, equals(3));
      structManager.add('Windows.Graphics.Imaging.BitmapBounds',
          comment: 'Specifies a bounding rectangle.');
      expect(structManager.length, equals(4));
      structManager.remove('Windows.Foundation.Size');
      expect(structManager.length, equals(3));
    });

    test('path', () {
      expect(structManager.path, equals(r'assets/structs.json'));
    });

    test('remove', () {
      expect(structManager.length, equals(3));
      expect(structManager.contains('Windows.Gaming.Input.GamepadReading'),
          isTrue);
      structManager.remove('Windows.Gaming.Input.GamepadReading');
      expect(structManager.length, equals(2));
      expect(structManager.contains('Windows.Gaming.Input.GamepadReading'),
          isFalse);
    });

    test('remove throws an ArgumentError if type is not a fully qualified type',
        () {
      expect(() => structManager.remove('Windows.Foundation'),
          throwsArgumentError);
    });

    test('types', () {
      final types = structManager.types;
      expect(types.length, equals(3));
      expect(types.containsKey('Windows.Gaming.Input.GamepadReading'), isTrue);
    });

    test('typesWithoutComments', () {
      final typesWithoutComments = structManager.typesWithoutComments;
      expect(typesWithoutComments, isEmpty);
    });

    test('operator []', () {
      expect(structManager['Windows.Foundation.Size'],
          equals('Describes the width and height of an object.'));
      expect(structManager['Windows.UI.Color'],
          'Describes a color in terms of alpha, red, green, and blue channels.');
      expect(structManager['Windows.Storage.Search.SortEntry'], isNull);
    });

    test(
        'operator [] throws an ArgumentError if type is not a fully qualified type',
        () {
      expect(() => structManager['Windows.Foundation'], throwsArgumentError);
    });

    test('operator []=', () {
      expect(structManager.length, equals(3));
      structManager['Windows.Media.Core.MseTimeRange'] =
          'Describes the start and end of a time range.';
      expect(structManager.length, equals(4));
      expect(structManager.contains('Windows.Media.Core.MseTimeRange'), isTrue);
      expect(structManager['Windows.Media.Core.MseTimeRange'],
          equals('Describes the start and end of a time range.'));
    });

    test('operator []= overwrites comment', () {
      expect(structManager.length, equals(3));
      expect(structManager['Windows.Foundation.Size'],
          equals('Describes the width and height of an object.'));
      structManager['Windows.Foundation.Size'] = 'New comment';
      expect(structManager.length, equals(3));
      expect(structManager['Windows.Foundation.Size'], equals('New comment'));
    });

    test(
        'operator []= throws an ArgumentError if type is not a fully qualified type',
        () {
      expect(() => structManager['Windows.Foundation'] = 'New comment',
          throwsArgumentError);
    });

    tearDown(structManager.clear);
  });
}
