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

/// Represents a set of media properties.
///
/// {@category class}
class MediaPropertySet extends IInspectable
    implements IMap<Guid, Object?>, IIterable<IKeyValuePair<Guid, Object?>> {
  MediaPropertySet() : super(activateClass(_className));
  MediaPropertySet.fromPtr(super.ptr);

  static const _className = 'Windows.Media.MediaProperties.MediaPropertySet';

  late final _iMap = IMap<Guid, Object?>.fromPtr(
      toInterface('{5ee3189c-7dbf-5998-ad07-5414fb82567c}'),
      iterableIid: '{f3b20528-e3b3-5331-b2d0-0c2623aee785}');

  @override
  Object? lookup(Guid key) => _iMap.lookup(key);

  @override
  int get size => _iMap.size;

  @override
  bool hasKey(Guid key) => _iMap.hasKey(key);

  @override
  Map<Guid, Object?> getView() => _iMap.getView();

  @override
  bool insert(Guid key, Object? value) => _iMap.insert(key, value);

  @override
  void remove(Guid key) => _iMap.remove(key);

  @override
  void clear() => _iMap.clear();

  @override
  IIterator<IKeyValuePair<Guid, Object?>> first() => _iMap.first();

  @override
  Map<Guid, Object?> toMap() => _iMap.toMap();

  @override
  Object? operator [](Guid key) => _iMap[key];

  @override
  void operator []=(Guid key, Object? value) => _iMap[key] = value;
}
