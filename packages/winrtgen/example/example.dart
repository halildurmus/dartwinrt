// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

final formatter = DartFormatter();

String format(Object object) => formatter.format(object.toString());

void printEnum() {
  final enumTypeDef =
      MetadataStore.getMetadataForType('Windows.Foundation.AsyncStatus');
  if (enumTypeDef != null) {
    final enumProjection = WinRTEnumProjection(enumTypeDef, 'AsyncStatus');
    print(format(enumProjection));
  }
}

void printStruct() {
  final structTypeDef =
      MetadataStore.getMetadataForType('Windows.Gaming.Input.GamepadReading');
  if (structTypeDef != null) {
    final structProjection =
        WinRTStructProjection(structTypeDef, 'GamepadReading');
    print(format(structProjection));
  }
}

void printMethod() {
  final interfaceTypeDef =
      MetadataStore.getMetadataForType('Windows.Data.Xml.Dom.IXmlDocument');
  final method = interfaceTypeDef?.findMethod('CreateElementNS');
  if (method != null) {
    final methodProjection = WinRTMethodProjection.create(method, 15);
    print(format(methodProjection));
  }
}

void printGetProperty() {
  final interfaceTypeDef =
      MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');
  final method = interfaceTypeDef?.findMethod('get_Languages');
  if (method != null) {
    final getPropertyProjection = WinRTGetPropertyProjection.create(method, 9);
    print(format(getPropertyProjection));
  }
}

void printSetProperty() {
  final interfaceTypeDef = MetadataStore.getMetadataForType(
      'Windows.Devices.Geolocation.IGeolocator');
  final method = interfaceTypeDef?.findMethod('put_DesiredAccuracy');
  if (method != null) {
    final setPropertyProjection = WinRTSetPropertyProjection.create(method, 7);
    print(format(setPropertyProjection));
  }
}

void printInterface() {
  final interfaceTypeDef =
      MetadataStore.getMetadataForType('Windows.Data.Xml.Dom.IXmlNode');
  if (interfaceTypeDef != null) {
    final interfaceProjection = WinRTInterfaceProjection(interfaceTypeDef);
    print(format(interfaceProjection));
  }
}

void printClass() {
  final classTypeDef =
      MetadataStore.getMetadataForType('Windows.Globalization.Calendar');
  if (classTypeDef != null) {
    final classProjection = WinRTClassProjection(classTypeDef);
    print(format(classProjection));
  }
}

void main() {
  // printEnum();
  // printStruct();
  printMethod();
  // printGetProperty();
  // printSetProperty();
  // printInterface();
  // printClass();
}
