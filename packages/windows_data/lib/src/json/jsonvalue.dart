// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ijsonvalue.dart';
import 'ijsonvaluestatics.dart';
import 'ijsonvaluestatics2.dart';
import 'jsonarray.dart';
import 'jsonobject.dart';
import 'jsonvaluetype.dart';

/// Implements the [IJsonValue] interface which represents a JSON value.
class JsonValue extends IInspectable implements IJsonValue, IStringable {
  JsonValue.fromPtr(super.ptr);

  static const _className = 'Windows.Data.Json.JsonValue';

  static JsonValue? parse(String input) => createActivationFactory(
          IJsonValueStatics.fromPtr, _className, IID_IJsonValueStatics)
      .parse(input);

  static (bool, {JsonValue? result}) tryParse(String input) =>
      createActivationFactory(
              IJsonValueStatics.fromPtr, _className, IID_IJsonValueStatics)
          .tryParse(input);

  static JsonValue? createBooleanValue(bool input) => createActivationFactory(
          IJsonValueStatics.fromPtr, _className, IID_IJsonValueStatics)
      .createBooleanValue(input);

  static JsonValue? createNumberValue(double input) => createActivationFactory(
          IJsonValueStatics.fromPtr, _className, IID_IJsonValueStatics)
      .createNumberValue(input);

  static JsonValue? createStringValue(String input) => createActivationFactory(
          IJsonValueStatics.fromPtr, _className, IID_IJsonValueStatics)
      .createStringValue(input);

  static JsonValue? createNullValue() => createActivationFactory(
          IJsonValueStatics2.fromPtr, _className, IID_IJsonValueStatics2)
      .createNullValue();

  late final _iJsonValue = IJsonValue.from(this);

  @override
  JsonValueType get valueType => _iJsonValue.valueType;

  @override
  String stringify() => _iJsonValue.stringify();

  @override
  String getString() => _iJsonValue.getString();

  @override
  double getNumber() => _iJsonValue.getNumber();

  @override
  bool getBoolean() => _iJsonValue.getBoolean();

  @override
  JsonArray getArray() => _iJsonValue.getArray();

  @override
  JsonObject getObject() => _iJsonValue.getObject();

  late final _iStringable = IStringable.from(this);

  @override
  String toString() => _iStringable.toString();
}
