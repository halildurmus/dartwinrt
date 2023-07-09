// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import '../../winrt_enum.dart';
import 'datetime_conversions.dart';
import 'duration_conversions.dart';

/// @nodoc
extension Uint8ArrayToUint8ListConversion on Pointer<Uint8> {
  /// Creates an [Uint8List] from `Pointer<Uint8>` by copying the [List] backed
  /// by the native memory to Dart memory so that it's safe to use even after
  /// the memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint8>`.
  Uint8List toList({int length = 1}) => Uint8List.fromList(asTypedList(length));
}

/// @nodoc
extension Int16ArrayToInt16ListConversion on Pointer<Int16> {
  /// Creates an [Int16List] from `Pointer<Int16>` by copying the [List] backed
  /// by the native memory to Dart memory so that it's safe to use even after
  /// the memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int16>`.
  Int16List toList({int length = 1}) => Int16List.fromList(asTypedList(length));
}

/// @nodoc
extension UInt16ArrayToUint16ListConversion on Pointer<Uint16> {
  /// Creates an [Uint16List] from `Pointer<Uint16>` by copying the [List]
  /// backed by the native memory to Dart memory so that it's safe to use even
  /// after the memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint16>`.
  Uint16List toList({int length = 1}) =>
      Uint16List.fromList(asTypedList(length));
}

/// @nodoc
extension Int32ArrayHelpers on Pointer<Int32> {
  /// Creates a [List] from `Pointer<Int32>`.
  ///
  /// [T] must be [WinRTEnum] (e.g. `DeviceClass`).
  ///
  /// [creator] must be specified for [T] (e.g. `DeviceClass.from`).
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int32>`.
  List<T> toEnumList<T>(T Function(int) creator, {int length = 1}) =>
      [for (var i = 0; i < length; i++) creator(this[i])];

  /// Creates an [Int32List] from `Pointer<Int32>` by copying the [List] backed
  /// by the native memory to Dart memory so that it's safe to use even after
  /// the memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int32>`.
  Int32List toList({int length = 1}) => Int32List.fromList(asTypedList(length));
}

/// @nodoc
extension UInt32ArrayHelpers on Pointer<Uint32> {
  /// Creates a [List] from `Pointer<Uint32>`.
  ///
  /// [T] must be [WinRTFlagsEnum] (e.g. `FileAttributes`).
  ///
  /// [creator] must be specified for [T] (e.g. `FileAttributes.from`).
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint32>`.
  List<T> toEnumList<T>(T Function(int) creator, {int length = 1}) =>
      [for (var i = 0; i < length; i++) creator(this[i])];

  /// Creates an [Uint32List] from `Pointer<Uint32>` by copying the [List]
  /// backed by the native memory to Dart memory so that it's safe to use even
  /// after the memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint32>`.
  Uint32List toList({int length = 1}) =>
      Uint32List.fromList(asTypedList(length));
}

/// @nodoc
extension Int64ArrayHelpers on Pointer<Int64> {
  /// Creates a [List] from `Pointer<Int64>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int64>`.
  List<DateTime> toDateTimeList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i].toDartDateTime()];

  /// Creates a [List] from `Pointer<Int64>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int64>`.
  List<Duration> toDurationList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i].toDartDuration()];

  /// Creates an [Int64List] from `Pointer<Int64>` by copying the [List] backed
  /// by the native memory to Dart memory so that it's safe to use even after
  /// the memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int64>`.
  Int64List toList({int length = 1}) => Int64List.fromList(asTypedList(length));
}

/// @nodoc
extension UInt64ArrayToUint64ListConversion on Pointer<Uint64> {
  /// Creates an [Uint64List] from `Pointer<Uint64>` by copying the [List]
  /// backed by the native memory to Dart memory so that it's safe to use even
  /// after the memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint64>`.
  Uint64List toList({int length = 1}) =>
      Uint64List.fromList(asTypedList(length));
}
