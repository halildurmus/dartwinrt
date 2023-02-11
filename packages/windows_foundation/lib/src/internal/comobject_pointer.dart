// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Extension method to convert COMObject arrays to List<T>

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

extension COMObjectPointer on Pointer<COMObject> {
  /// Creates a [List] from `Pointer<COMObject>`.
  ///
  /// [T] must be a `WinRT` class/interface (e.g. `HostName`, `ICalendar`).
  ///
  /// [creator] must be specified for [T] (e.g. `HostName.fromRawPointer`,
  /// `ICalendar.fromRawPointer`).
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<COMObject>`.
  ///
  /// ```dart
  /// final pComObject = ...
  /// final list = pComObject.toList(HostName.fromRawPointer, length: 4);
  /// ```
  List<T> toList<T>(T Function(Pointer<COMObject>) creator, {int length = 1}) {
    final list = <T>[];

    for (var i = 0; i < length; i++) {
      final objectPtr = this.elementAt(i);
      if (objectPtr.ref.isNull) break;
      // Move each element to a newly allocated pointer so that it can be
      // freed properly.
      final newObjectPtr = calloc<COMObject>()..ref = objectPtr.ref;
      list.add(creator(newObjectPtr));
    }

    return list;
  }
}
