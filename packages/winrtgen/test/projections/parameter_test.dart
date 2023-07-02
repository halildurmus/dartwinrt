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

  group('WinRT parameter', () {
    test('projects bool', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics',
          'GetNationalDirectDialingPrefixForRegion');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.type, equals('bool'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('stripNonDigit'));
    });

    test('projects class', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'Compare');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<ObjectParameterProjection>());
      expect(parameter.type, equals('Calendar?'));
      expect(
          parameter.preamble,
          equals(
              'final otherPtr = other == null ? nullptr : other.ptr.ref.lpVtbl;'));
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('otherPtr'));
    });

    test('projects DateTime', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'SetDateTime');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<DateTimeParameterProjection>());
      expect(parameter.type, equals('DateTime'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('value.toWinRTDateTime()'));
    });

    test('projects double', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateDouble');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.type, equals('double'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('value'));
    });

    test('projects Duration', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateTimeSpan');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<DurationParameterProjection>());
      expect(parameter.type, equals('Duration'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('value.toWinRTDuration()'));
    });

    test('projects enum', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageItem', 'DeleteAsync');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<EnumParameterProjection>());
      expect(parameter.type, equals('StorageDeleteOption'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('option.value'));
    });

    test('projects Guid', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateGuid');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<GuidParameterProjection>());
      expect(parameter.type, equals('Guid'));
      expect(parameter.preamble,
          equals('final valueNativeGuidPtr = value.toNativeGUID();'));
      expect(parameter.postamble, equals('free(valueNativeGuidPtr);'));
      expect(parameter.localIdentifier, equals('valueNativeGuidPtr.ref'));
    });

    test('projects int', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateInt32');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.type, equals('int'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('value'));
    });

    test('projects interface', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageFile', 'CopyAndReplaceAsync');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<ObjectParameterProjection>());
      expect(parameter.type, equals('IStorageFile?'));
      expect(
          parameter.preamble,
          equals(
              'final fileToReplacePtr = fileToReplace == null ? nullptr : fileToReplace.ptr.ref.lpVtbl;'));
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('fileToReplacePtr'));
    });

    test('projects IIterable<IKeyValuePair<String, Object?>?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.FileProperties.IStorageItemExtraProperties',
          'SavePropertiesAsync');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<ObjectParameterProjection>());
      expect(parameter.type,
          equals('IIterable<IKeyValuePair<String, Object?>>?'));
      expect(
          parameter.preamble,
          equals(
              "final propertiesToSavePtr = propertiesToSave == null ? nullptr : IInspectable(propertiesToSave.toInterface('{fe2f3d47-5d47-5499-8374-430c7cda0204}')).ptr.ref.lpVtbl;"));
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('propertiesToSavePtr'));
    });

    test('projects IMap<String, Object?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.AI.MachineLearning.ILearningModelSession',
          'EvaluateFeatures');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<ObjectParameterProjection>());
      expect(parameter.type, equals('IMap<String, Object?>'));
      expect(parameter.preamble,
          equals('final featuresPtr = features.ptr.ref.lpVtbl;'));
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('featuresPtr'));
    });

    test('projects IMapView<String, Object?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView',
          'Split');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<ObjectParameterProjection>());
      expect(parameter.type, equals('IMapView<String, Object?>'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('first.ptr'));
    });

    test('projects IReference<BluetoothLEAdvertisementFlags?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement',
          'put_Flags');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<ReferenceParameterProjection>());
      expect(parameter.type, equals('BluetoothLEAdvertisementFlags?'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier,
          equals('value?.toReference().ptr.ref.lpVtbl ?? nullptr'));
    });

    test('projects IReference<int?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeolocatorWithScalarAccuracy',
          'put_DesiredAccuracyInMeters');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<ReferenceParameterProjection>());
      expect(parameter.type, equals('int?'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(
          parameter.localIdentifier,
          equals(
              'value?.toReference(IntType.uint32).ptr.ref.lpVtbl ?? nullptr'));
    });

    test('projects IVectorView<String>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.IUser', 'GetPropertiesAsync');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<ObjectParameterProjection>());
      expect(parameter.type, equals('IVectorView<String>'));
      expect(parameter.preamble,
          equals("final valuesPtr = values.ptr.ref.lpVtbl;"));
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('valuesPtr'));
    });

    test('projects List<Point> (FillArray)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Media.Devices.Core.CameraIntrinsics', 'DistortPoints');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<StructListParameterProjection>());
      expect(parameter.type, equals('List<Point>'));
      expect(parameter.preamble,
          equals('final pResultsArray = calloc<NativePoint>(resultsSize);'));
      expect(parameter.postamble, equalsIgnoringWhitespace('''
      if (resultsSize > 0) {
        results.addAll(pResultsArray.toList(length: resultsSize));
      }
      free(pResultsArray);'''));
      expect(parameter.localIdentifier, equals('pResultsArray'));
    });

    test('projects List<String> (FillArray - getMany)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.FileExtensionVector', 'GetMany');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<DefaultListParameterProjection>());
      expect(parameter.type, equals('List<String>'));
      expect(parameter.preamble,
          equals('final pItemsArray = calloc<IntPtr>(itemsSize);'));
      expect(parameter.postamble, equalsIgnoringWhitespace('''
      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);'''));
      expect(parameter.localIdentifier, equals('pItemsArray'));
    });

    test('projects List<String> (FillArray - readBytes)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Streams.DataReader', 'ReadBytes');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<DefaultListParameterProjection>());
      expect(parameter.type, equals('List<int>'));
      expect(parameter.preamble,
          equals('final pValueArray = calloc<Uint8>(valueSize);'));
      expect(parameter.postamble, equalsIgnoringWhitespace('''
      if (valueSize > 0) {
        value.addAll(pValueArray.toList(length: valueSize));
      }
      free(pValueArray);'''));
      expect(parameter.localIdentifier, equals('pValueArray'));
    });

    test('projects List<String> (PassArray)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.FileExtensionVector', 'ReplaceAll');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<DefaultListParameterProjection>());
      expect(parameter.type, equals('List<String>'));
      expect(parameter.preamble, equalsIgnoringWhitespace('''
      final itemsHandles = <int>[];
      final pItemsArray = calloc<HSTRING>(items.length);
      for (var i = 0; i < items.length; i++) {
        pItemsArray[i] = items.elementAt(i).toHString();
        itemsHandles.add(pItemsArray[i]);
      }'''));
      expect(parameter.postamble, equalsIgnoringWhitespace('''
      itemsHandles.forEach(WindowsDeleteString);
      free(pItemsArray);'''));
      expect(parameter.localIdentifier, equals('pItemsArray'));
    });

    test('projects List<String> (ReceiveArray)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetStringArray');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<DefaultListParameterProjection>());
      expect(parameter.type, equals('List<String>'));
      expect(parameter.preamble, equalsIgnoringWhitespace('''
      final pValueSize = calloc<Uint32>();
      final pValueArray = calloc<Pointer<IntPtr>>();'''));
      expect(parameter.postamble, equalsIgnoringWhitespace('''
      if (pValueSize.value > 0) {
        value.addAll(pValueArray.value.toList(length: pValueSize.value));
      }
      free(pValueSize);
      free(pValueArray);'''));
      expect(parameter.localIdentifier, equals('pValueArray'));
    });

    test('projects List<VirtualKey> (PassArray)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Lights.ILampArray', 'SetColorsForKeys');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<EnumListParameterProjection>());
      expect(parameter.type, equals('List<VirtualKey>'));
      expect(parameter.preamble, equalsIgnoringWhitespace('''
      final pKeysArray = calloc<Int32>(keys.length);
      for (var i = 0; i < keys.length; i++) {
        pKeysArray[i] = keys.elementAt(i).value;
      }'''));
      expect(parameter.postamble, equals('free(pKeysArray);'));
      expect(parameter.localIdentifier, equals('pKeysArray'));
    });

    test('projects Object', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.PropertySet', 'Insert');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<ObjectParameterProjection>());
      expect(parameter.type, equals('Object?'));
      expect(
          parameter.preamble,
          equals(
              'final valuePtr = value?.intoBox().ptr.ref.lpVtbl ?? nullptr;'));
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('valuePtr'));
    });

    test('projects pointer', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.FileExtensionVector', 'IndexOf');
      final parameter = methodProjection.parameters.last;
      expect(parameter, isA<DefaultParameterProjection>());
      expect(parameter.type, equals('Pointer<Uint32>'));
      expect(parameter.preamble, isEmpty);
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier, equals('index'));
    });

    test('projects String', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'ChangeCalendarSystem');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<StringParameterProjection>());
      expect(parameter.type, equals('String'));
      expect(parameter.preamble,
          equals('final valueHString = value.toHString();'));
      expect(parameter.postamble, equals('WindowsDeleteString(valueHString);'));
      expect(parameter.localIdentifier, equals('valueHString'));
    });

    test('projects struct', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreatePoint');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<StructParameterProjection>());
      expect(parameter.type, equals('Point'));
      expect(parameter.preamble,
          equals('final valueNativeStructPtr = value.toNative();'));
      expect(parameter.postamble, equals('free(valueNativeStructPtr);'));
      expect(parameter.localIdentifier, equals('valueNativeStructPtr.ref'));
    });

    test('projects Uri', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.ILauncherStatics', 'LaunchUriAsync');
      final parameter = methodProjection.parameters.first;
      expect(parameter, isA<UriParameterProjection>());
      expect(parameter.type, equals('Uri?'));
      expect(parameter.preamble, equals('final uriUri = uri?.toWinRTUri();'));
      expect(parameter.postamble, isEmpty);
      expect(parameter.localIdentifier,
          equals('uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl'));
    });
  });
}
