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

import 'deviceinformation.dart';

/// Represents a collection of DeviceInformation objects.
class DeviceInformationCollection extends IInspectable
    implements IVectorView<DeviceInformation?>, IIterable<DeviceInformation?> {
  DeviceInformationCollection.fromPtr(super.ptr);

  late final _iVectorView = IVectorView<DeviceInformation?>.fromPtr(
      toInterface('{e170688f-3495-5bf6-aab5-9cac17e0f10f}'),
      creator: DeviceInformation.fromPtr,
      iterableIid: '{dd9f8a5d-ec98-5f4b-a3ea-9c8b5ad53c4b}');

  @override
  DeviceInformation? getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  (bool, {int index}) indexOf(DeviceInformation? value) =>
      _iVectorView.indexOf(value);

  @override
  (int, {List<DeviceInformation?> items}) getMany(
          int startIndex, int itemsSize) =>
      _iVectorView.getMany(startIndex, itemsSize);

  @override
  IIterator<DeviceInformation?> first() => _iVectorView.first();

  @override
  List<DeviceInformation?> toList() => _iVectorView.toList();

  @override
  DeviceInformation? operator [](int index) => _iVectorView[index];

  @override
  List<DeviceInformation?> operator +(List<DeviceInformation?> other) =>
      toList() + other;
}
