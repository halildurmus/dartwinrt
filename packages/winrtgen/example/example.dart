// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dart_style/dart_style.dart';
import 'package:winrtgen/winrtgen.dart';

final formatter = DartFormatter();

String format(Object object) {
  final source = object.toString();
  try {
    return formatter.format(source);
  } catch (_) {
    print('Failed to format ${object.runtimeType}.');
    return source;
  }
}

void printEnum() {
  final enumProjection =
      EnumProjection.fromType('Windows.Foundation.AsyncStatus');
  print(format(enumProjection));
}

void printStruct() {
  final structProjection =
      StructProjection.fromType('Windows.Gaming.Input.GamepadReading');
  print(format(structProjection));
  final nativeStructProjection =
      NativeStructProjection.fromType('Windows.Gaming.Input.GamepadReading');
  print(format(nativeStructProjection));
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
      InterfaceProjection.fromType('Windows.Storage.Pickers.IFileOpenPicker');
  print(format(interfaceProjection));
}

void printClass() {
  final classProjection =
      ClassProjection.fromType('Windows.Globalization.Calendar');
  print(format(classProjection));
}

void main() {
  printEnum();
  printStruct();
  printMethod();
  printGetter();
  printSetter();
  printInterface();
  printClass();
}
