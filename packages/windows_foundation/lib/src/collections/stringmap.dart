// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;

import '../../internal.dart';
import '../helpers.dart';
import '../iinspectable.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ikeyvaluepair.dart';
import 'imap.dart';
import 'imapview.dart';
import 'iobservablemap.dart';

/// An associative collection, also known as a map or a dictionary.
///
/// {@category class}
class StringMap extends IInspectable
    implements
        IMap<String, String>,
        IIterable<IKeyValuePair<String, String>>,
        IObservableMap<String, String> {
  StringMap() : super(activateClass(_className));
  StringMap.fromPtr(super.ptr);

  static const _className = 'Windows.Foundation.Collections.StringMap';

  late final _iMap = IMap<String, String>.fromPtr(
      toInterface('{f6d1f700-49c2-52ae-8154-826f9908773c}'),
      iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}');

  @override
  String lookup(String key) => _iMap.lookup(key);

  @override
  int get size => _iMap.size;

  @override
  bool hasKey(String key) => _iMap.hasKey(key);

  @override
  Map<String, String> getView() => _iMap.getView();

  @override
  bool insert(String key, String value) => _iMap.insert(key, value);

  @override
  void remove(String key) => _iMap.remove(key);

  @override
  void clear() => _iMap.clear();

  @override
  IIterator<IKeyValuePair<String, String>> first() => _iMap.first();

  @override
  Map<String, String> toMap() => _iMap.toMap();

  late final _iObservableMap = IObservableMap<String, String>.fromPtr(
      toInterface('{1e036276-2f60-55f6-b7f3-f86079e6900b}'));

  @override
  int add_MapChanged(Pointer<COMObject> vhnd) =>
      _iObservableMap.add_MapChanged(vhnd);

  @override
  void remove_MapChanged(int token) => _iObservableMap.remove_MapChanged(token);
}
