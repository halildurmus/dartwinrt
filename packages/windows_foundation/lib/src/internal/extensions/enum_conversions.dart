// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../ireference.dart';
import '../../winrt_enum.dart';

/// @nodoc
extension WinRTEnumConversion on WinRTEnum {
  // TODO(halildurmus): Boxing enums are not supported yet.
  // https://github.com/dart-windows/dartwinrt/issues/307
  IReference<dynamic> toReference() =>
      throw UnsupportedError('Cannot box value of type $runtimeType');
}

/// @nodoc
extension WinRTEnumListToInt32ArrayConversion on List<WinRTEnum> {
  /// Creates an array of [Int32]s from a List of [WinRTEnum]s.
  Pointer<Int32> toArray({Allocator allocator = calloc}) {
    final array = allocator<Int32>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].value;
    }
    return array;
  }
}

/// @nodoc
extension WinRTFlagsEnumListToUint32ArrayConversion on List<WinRTFlagsEnum> {
  /// Creates an array of [Uint32]s from a List of [WinRTFlagsEnum]s.
  Pointer<Uint32> toArray({Allocator allocator = calloc}) {
    final array = allocator<Uint32>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].value;
    }
    return array;
  }
}

/// @nodoc
extension Int32ArrayToWinRTEnumListConversion on Pointer<Int32> {
  /// Creates a [List] of [T]s from `Pointer<Int32>`.
  ///
  /// [T] must be [WinRTEnum] (e.g. `DeviceClass`).
  ///
  /// [creator] must be specified for [T] (e.g. `DeviceClass.from`).
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int32>`.
  List<T> toEnumList<T>(T Function(int) creator, {int length = 1}) =>
      [for (var i = 0; i < length; i++) creator(this[i])];
}

/// @nodoc
extension Uint32ArrayToWinRTEnumListConversion on Pointer<Uint32> {
  /// Creates a [List] of [T]s from `Pointer<Uint32>`.
  ///
  /// [T] must be [WinRTFlagsEnum] (e.g. `FileAttributes`).
  ///
  /// [creator] must be specified for [T] (e.g. `FileAttributes.from`).
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint32>`.
  List<T> toEnumList<T>(T Function(int) creator, {int length = 1}) =>
      [for (var i = 0; i < length; i++) creator(this[i])];
}
