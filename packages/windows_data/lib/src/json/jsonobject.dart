// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ijsonobject.dart';
import 'ijsonobjectstatics.dart';
import 'ijsonobjectwithdefaultvalues.dart';
import 'ijsonvalue.dart';
import 'jsonarray.dart';
import 'jsonvalue.dart';
import 'jsonvaluetype.dart';

/// Represents a JSON object containing a collection of name and [JsonValue]
/// pairs.
///
/// {@category class}
class JsonObject extends IInspectable
    implements
        IJsonObject,
        IJsonValue,
        IMap<String, IJsonValue?>,
        IIterable<IKeyValuePair<String, IJsonValue?>>,
        IJsonObjectWithDefaultValues,
        IStringable {
  JsonObject() : super(activateClass(_className));
  JsonObject.fromPtr(super.ptr);

  static const _className = 'Windows.Data.Json.JsonObject';

  static JsonObject parse(String input) => createActivationFactory(
          IJsonObjectStatics.fromPtr, _className, IID_IJsonObjectStatics)
      .parse(input);

  static bool tryParse(String input, JsonObject result) =>
      createActivationFactory(
              IJsonObjectStatics.fromPtr, _className, IID_IJsonObjectStatics)
          .tryParse(input, result);

  late final _iJsonObject = IJsonObject.from(this);

  @override
  JsonValue? getNamedValue(String name) => _iJsonObject.getNamedValue(name);

  @override
  void setNamedValue(String name, IJsonValue? value) =>
      _iJsonObject.setNamedValue(name, value);

  @override
  JsonObject getNamedObject(String name) => _iJsonObject.getNamedObject(name);

  @override
  JsonArray getNamedArray(String name) => _iJsonObject.getNamedArray(name);

  @override
  String getNamedString(String name) => _iJsonObject.getNamedString(name);

  @override
  double getNamedNumber(String name) => _iJsonObject.getNamedNumber(name);

  @override
  bool getNamedBoolean(String name) => _iJsonObject.getNamedBoolean(name);

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

  late final _iMap = IMap<String, IJsonValue?>.fromPtr(
      toInterface('{c9d9a725-786b-5113-b4b7-9b61764c220b}'),
      creator: IJsonValue.fromPtr,
      iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}');

  @override
  IJsonValue? lookup(String key) => _iMap.lookup(key);

  @override
  int get size => _iMap.size;

  @override
  bool hasKey(String key) => _iMap.hasKey(key);

  @override
  Map<String, IJsonValue?> getView() => _iMap.getView();

  @override
  bool insert(String key, IJsonValue? value) =>
      _iMap.insert(key, value ?? JsonValue.createNullValue());

  @override
  void remove(String key) => _iMap.remove(key);

  @override
  void clear() => _iMap.clear();

  @override
  IIterator<IKeyValuePair<String, IJsonValue?>> first() => _iMap.first();

  @override
  Map<String, IJsonValue?> toMap() => _iMap.toMap();

  @override
  IJsonValue? operator [](String key) => _iMap[key];

  @override
  void operator []=(String key, IJsonValue? value) => _iMap[key] = value;

  late final _iJsonObjectWithDefaultValues =
      IJsonObjectWithDefaultValues.from(this);

  @override
  JsonValue? getNamedValueOrDefault(String name, JsonValue? defaultValue) =>
      _iJsonObjectWithDefaultValues.getNamedValueOrDefault(name, defaultValue);

  @override
  JsonObject getNamedObjectOrDefault(String name, JsonObject defaultValue) =>
      _iJsonObjectWithDefaultValues.getNamedObjectOrDefault(name, defaultValue);

  @override
  String getNamedStringOrDefault(String name, String defaultValue) =>
      _iJsonObjectWithDefaultValues.getNamedStringOrDefault(name, defaultValue);

  @override
  JsonArray getNamedArrayOrDefault(String name, JsonArray defaultValue) =>
      _iJsonObjectWithDefaultValues.getNamedArrayOrDefault(name, defaultValue);

  @override
  double getNamedNumberOrDefault(String name, double defaultValue) =>
      _iJsonObjectWithDefaultValues.getNamedNumberOrDefault(name, defaultValue);

  @override
  bool getNamedBooleanOrDefault(String name, bool defaultValue) =>
      _iJsonObjectWithDefaultValues.getNamedBooleanOrDefault(
          name, defaultValue);

  late final _iStringable = IStringable.from(this);

  @override
  String toString() => _iStringable.toString();
}
