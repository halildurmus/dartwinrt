// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';
import '../callbacks.dart';
import '../helpers.dart';
import '../iinspectable.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ikeyvaluepair.dart';
import 'imap.dart';
import 'imapview.dart';
import 'iobservablemap.dart';
import 'ipropertyset.dart';

/// Represents a property set, which is a set of [PropertyValue] objects
/// with string keys.
///
/// {@category class}
class PropertySet extends IInspectable
    implements
        IPropertySet,
        IObservableMap<String, Object?>,
        IMap<String, Object?>,
        IIterable<IKeyValuePair<String, Object?>> {
  PropertySet() : super(activateClass(_className));
  PropertySet.fromRawPointer(super.ptr);

  static const _className = 'Windows.Foundation.Collections.PropertySet';

  // IObservableMap<String, Object?> methods
  late final _iObservableMap = IObservableMap<String, Object?>.fromRawPointer(
      toInterface('{236aac9d-fb12-5c4d-a41c-9e445fb4d7ec}'));

  @override
  int add_MapChanged(Pointer<NativeFunction<MapChangedEventHandler>> vhnd) =>
      _iObservableMap.add_MapChanged(vhnd);

  @override
  void remove_MapChanged(int token) => _iObservableMap.remove_MapChanged(token);

  // IMap<String, Object?> methods
  late final _iMap = IMap<String, Object?>.fromRawPointer(
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
}
