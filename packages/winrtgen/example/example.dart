// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dart_style/dart_style.dart';
import 'package:winrtgen/winrtgen.dart';

final formatter = DartFormatter();

String format(Object object) => formatter.format(object.toString());

void printEnum() {
  final enumProjection = EnumProjection.from('Windows.Foundation.AsyncStatus');
  print(format(enumProjection));
}

void printStruct() {
  final structProjection =
      StructProjection.from('Windows.Gaming.Input.GamepadReading');
  print(format(structProjection));
}

void printMethod() {
  final methodProjection = MethodProjection.fromTypeAndMethodName(
      'Windows.Data.Xml.Dom.IXmlDocument', 'CreateElementNS');
  print(format(methodProjection));
}

void printGetter() {
  final getterProjection = GetterProjection.fromTypeAndMethodName(
      'Windows.Globalization.ICalendar', 'get_Languages');
  print(format(getterProjection));
}

void printSetter() {
  final setterProjection = SetterProjection.fromTypeAndMethodName(
      'Windows.Devices.Geolocation.IGeolocator', 'put_DesiredAccuracy');
  print(format(setterProjection));
}

void printInterface() {
  final interfaceProjection =
      InterfaceProjection.from('Windows.Storage.Pickers.IFileOpenPicker');
  print(format(interfaceProjection));
}

void printClass() {
  final classProjection =
      ClassProjection.from('Windows.Globalization.Calendar');
  print(format(classProjection));
}

void main() {
  // printEnum();
  // printStruct();
  printMethod();
  // printGetter();
  // printSetter();
  // printInterface();
  // printClass();
}
