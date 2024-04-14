// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'ijsonarray.dart';
import 'ijsonarraystatics.dart';
import 'ijsonvalue.dart';
import 'jsonobject.dart';
import 'jsonvaluetype.dart';

/// Represents a JSON array.
class JsonArray extends IInspectable
    implements
        IJsonArray,
        IJsonValue,
        IVector<IJsonValue?>,
        IIterable<IJsonValue?>,
        IStringable {
  JsonArray() : super(activateClass(_className));
  JsonArray.fromPtr(super.ptr);

  static const _className = 'Windows.Data.Json.JsonArray';

  static JsonArray parse(String input) => createActivationFactory(
          IJsonArrayStatics.fromPtr, _className, IID_IJsonArrayStatics)
      .parse(input);

  static (bool, {JsonArray? result}) tryParse(String input) =>
      createActivationFactory(
              IJsonArrayStatics.fromPtr, _className, IID_IJsonArrayStatics)
          .tryParse(input);

  late final _iJsonArray = IJsonArray.from(this);

  @override
  JsonObject getObjectAt(int index) => _iJsonArray.getObjectAt(index);

  @override
  JsonArray getArrayAt(int index) => _iJsonArray.getArrayAt(index);

  @override
  String getStringAt(int index) => _iJsonArray.getStringAt(index);

  @override
  double getNumberAt(int index) => _iJsonArray.getNumberAt(index);

  @override
  bool getBooleanAt(int index) => _iJsonArray.getBooleanAt(index);

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

  late final _iVector = IVector<IJsonValue?>.fromPtr(
      toInterface('{d44662bc-dce3-59a8-9272-4b210f33908b}'),
      iterableIid: '{cb0492b6-4113-55cf-b2c5-99eb428ba493}',
      tObjectCreator: IJsonValue.fromPtr);

  @override
  IJsonValue? getAt(int index) => _iVector.getAt(index);

  @override
  int get size => _iVector.size;

  @override
  List<IJsonValue?> getView() => _iVector.getView();

  @override
  (bool, {int index}) indexOf(IJsonValue? value) => _iVector.indexOf(value);

  @override
  void setAt(int index, IJsonValue? value) => _iVector.setAt(index, value);

  @override
  void insertAt(int index, IJsonValue? value) =>
      _iVector.insertAt(index, value);

  @override
  void removeAt(int index) => _iVector.removeAt(index);

  @override
  void append(IJsonValue? value) => _iVector.append(value);

  @override
  void removeAtEnd() => _iVector.removeAtEnd();

  @override
  void clear() => _iVector.clear();

  @override
  (int, {List<IJsonValue?> items}) getMany(int startIndex, int itemsSize) =>
      _iVector.getMany(startIndex, itemsSize);

  @override
  void replaceAll(List<IJsonValue?> items) => _iVector.replaceAll(items);

  @override
  IIterator<IJsonValue?> first() => _iVector.first();

  @override
  List<IJsonValue?> toList() => _iVector.toList();

  @override
  IJsonValue? operator [](int index) => _iVector[index];

  @override
  void operator []=(int index, IJsonValue? value) => _iVector[index] = value;

  @override
  List<IJsonValue?> operator +(List<IJsonValue?> other) => toList() + other;

  late final _iStringable = IStringable.from(this);

  @override
  String toString() => _iStringable.toString();
}
