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

import 'bitmaptypedvalue.dart';

/// Represents a property set of BitmapTypedValue objects.
class BitmapPropertySet extends IInspectable
    implements
        IMap<String, BitmapTypedValue?>,
        IIterable<IKeyValuePair<String, BitmapTypedValue?>> {
  BitmapPropertySet() : super(activateClass(_className));
  BitmapPropertySet.fromPtr(super.ptr);

  static const _className = 'Windows.Graphics.Imaging.BitmapPropertySet';

  late final _iMap = IMap<String, BitmapTypedValue?>.fromPtr(
      toInterface('{2c70ef8d-5d4c-5185-8db7-fed87728165d}'),
      iterableIid: '{05f9430c-2f22-5638-aa89-8c9abcd54ff9}',
      vObjectCreator: BitmapTypedValue.fromPtr);

  @override
  BitmapTypedValue? lookup(String key) => _iMap.lookup(key);

  @override
  int get size => _iMap.size;

  @override
  bool hasKey(String key) => _iMap.hasKey(key);

  @override
  Map<String, BitmapTypedValue?> getView() => _iMap.getView();

  @override
  bool insert(String key, BitmapTypedValue? value) => _iMap.insert(key, value);

  @override
  void remove(String key) => _iMap.remove(key);

  @override
  void clear() => _iMap.clear();

  @override
  IIterator<IKeyValuePair<String, BitmapTypedValue?>> first() => _iMap.first();

  @override
  Map<String, BitmapTypedValue?> toMap() => _iMap.toMap();

  @override
  BitmapTypedValue? operator [](String key) => _iMap[key];

  @override
  void operator []=(String key, BitmapTypedValue? value) => _iMap[key] = value;
}
