// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../ipropertyvalue.dart';
import '../../uri.dart' as winrt_uri;
import 'ipropertyvalue_helpers.dart';
import 'uri_conversions.dart';

/// @nodoc
extension COMObjectArrayHelpers on Pointer<COMObject> {
  /// Whether this is a null pointer.
  bool get isNull => address == 0 || ref.isNull;

  /// Creates a `List<Uri?>` from `Pointer<COMObject>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<COMObject>`.
  List<Uri?> toDartUriList({int length = 1}) {
    final list = <Uri?>[];

    for (var i = 0; i < length; i++) {
      final objectPtr = elementAt(i);
      if (objectPtr.isNull) {
        list.add(null);
        continue;
      }

      // Move each element to a newly allocated pointer so that it can be
      // freed properly.
      final newObjectPtr = calloc<COMObject>()..ref = objectPtr.ref;
      final winrtUri = winrt_uri.Uri.fromPtr(newObjectPtr);
      list.add(winrtUri.toDartUri());
    }

    return list;
  }

  /// Creates a [List] from `Pointer<COMObject>`.
  ///
  /// [T] must be `IInspectable?` (e.g. `HostName?`).
  ///
  /// [creator] must be specified for [T] (e.g. `HostName.fromPtr`).
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<COMObject>`.
  List<T> toList<T>(T Function(Pointer<COMObject>) creator, {int length = 1}) {
    final list = <T>[];

    for (var i = 0; i < length; i++) {
      final objectPtr = elementAt(i);
      if (objectPtr.isNull) {
        list.add(null as T);
        continue;
      }

      // Move each element to a newly allocated pointer so that it can be
      // freed properly.
      final newObjectPtr = calloc<COMObject>()..ref = objectPtr.ref;
      list.add(creator(newObjectPtr));
    }

    return list;
  }

  /// Creates a `List<Object?>` from `Pointer<COMObject>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<COMObject>`.
  List<Object?> toObjectList({int length = 1}) {
    final list = <Object?>[];

    for (var i = 0; i < length; i++) {
      final objectPtr = elementAt(i);
      if (objectPtr.isNull) {
        list.add(null);
        continue;
      }

      // Move each element to a newly allocated pointer so that it can be
      // freed properly.
      final newObjectPtr = calloc<COMObject>()..ref = objectPtr.ref;
      final propertyValue = IPropertyValue.fromPtr(newObjectPtr);
      list.add(propertyValue.value);
    }

    return list;
  }

  /// Creates a WinRT Uri from this Pointer.
  winrt_uri.Uri toWinRTUri() => winrt_uri.Uri.fromPtr(this);
}
