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

import '../../internal.dart';
import '../extensions/extensions.dart';
import '../helpers.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ikeyvaluepair.dart';
import 'imap.dart';
import 'imapview.dart';
import 'iobservablemap.dart';
import 'ipropertyset.dart';

/// Represents a property set, which is a set of [PropertyValue] objects with
/// string keys.
class PropertySet extends IInspectable
    implements
        IPropertySet,
        IObservableMap<String, Object?>,
        IMap<String, Object?>,
        IIterable<IKeyValuePair<String, Object?>> {
  PropertySet() : super(activateClass(_className));
  PropertySet.fromPtr(super.ptr);

  static const _className = 'Windows.Foundation.Collections.PropertySet';

  late final _iObservableMap = IObservableMap<String, Object?>.fromPtr(
      toInterface('{236aac9d-fb12-5c4d-a41c-9e445fb4d7ec}'));

  @override
  int add_MapChanged(Pointer<COMObject> vhnd) =>
      _iObservableMap.add_MapChanged(vhnd);

  @override
  void remove_MapChanged(int token) => _iObservableMap.remove_MapChanged(token);

  late final _iMap = IMap<String, Object?>.fromPtr(
      toInterface('{1b0d3570-0877-5ec2-8a2c-3b9539506aca}'),
      iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}');

  @override
  Object? lookup(String key) => _iMap.lookup(key);

  @override
  int get size => _iMap.size;

  @override
  bool hasKey(String key) => _iMap.hasKey(key);

  @override
  Map<String, Object?> getView() => _iMap.getView();

  @override
  bool insert(String key, Object? value) => _iMap.insert(key, value);

  @override
  void remove(String key) => _iMap.remove(key);

  @override
  void clear() => _iMap.clear();

  @override
  IIterator<IKeyValuePair<String, Object?>> first() => _iMap.first();

  @override
  Map<String, Object?> toMap() => _iMap.toMap();

  @override
  Object? operator [](String key) => _iMap[key];

  @override
  void operator []=(String key, Object? value) => _iMap[key] = value;
}
