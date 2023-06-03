// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Extension methods to convert integer arrays to List<int>

import 'dart:ffi';
import 'dart:typed_data';

/// @nodoc
extension Uint8ArrayToListConversion on Pointer<Uint8> {
  /// Creates a [List] from `Pointer<Uint8>` by copying the [List] backed by the
  /// native memory to Dart memory so that it's safe to use even after the
  /// memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint8>`.
  List<int> toList({int length = 1}) => Uint8List.fromList(asTypedList(length));
}

/// @nodoc
extension Int16ArrayToListConversion on Pointer<Int16> {
  /// Creates a [List] from `Pointer<Int16>` by copying the [List] backed by the
  /// native memory to Dart memory so that it's safe to use even after the
  /// memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int16>`.
  List<int> toList({int length = 1}) => Int16List.fromList(asTypedList(length));
}

/// @nodoc
extension UInt16ArrayToListConversion on Pointer<Uint16> {
  /// Creates a [List] from `Pointer<Uint16>` by copying the [List] backed by
  /// the native memory to Dart memory so that it's safe to use even after the
  /// memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint16>`.
  List<int> toList({int length = 1}) =>
      Uint16List.fromList(asTypedList(length));
}

/// @nodoc
extension Int32ArrayToListConversion on Pointer<Int32> {
  /// Creates a [List] from `Pointer<Int32>` by copying the [List] backed by the
  /// native memory to Dart memory so that it's safe to use even after the
  /// memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int32>`.
  List<int> toList({int length = 1}) => Int32List.fromList(asTypedList(length));
}

/// @nodoc
extension UInt32ArrayToListConversion on Pointer<Uint32> {
  /// Creates a [List] from `Pointer<Uint32>` by copying the [List] backed by
  /// the native memory to Dart memory so that it's safe to use even after the
  /// memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint32>`.
  List<int> toList({int length = 1}) =>
      Uint32List.fromList(asTypedList(length));
}

/// @nodoc
extension Int64ArrayToListConversion on Pointer<Int64> {
  /// Creates a [List] from `Pointer<Int64>` by copying the [List] backed by the
  /// native memory to Dart memory so that it's safe to use even after the
  /// memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int64>`.
  List<int> toList({int length = 1}) => Int64List.fromList(asTypedList(length));
}

/// @nodoc
extension UInt64ArrayToListConversion on Pointer<Uint64> {
  /// Creates a [List] from `Pointer<Uint64>` by copying the [List] backed by
  /// the native memory to Dart memory so that it's safe to use even after the
  /// memory allocated on the native side is released.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Uint64>`.
  List<int> toList({int length = 1}) =>
      Uint64List.fromList(asTypedList(length));
}
