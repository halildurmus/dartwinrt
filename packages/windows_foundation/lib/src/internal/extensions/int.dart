// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import '../../ipropertyvalue.dart';
import '../../ireference.dart';
import '../../propertyvalue.dart';
import '../../types.dart';
import '../iids.dart';

/// @nodoc
extension IntConversions on int {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(IntType type) => switch (type) {
        IntType.int16 => PropertyValue.createInt16(this),
        IntType.int32 => PropertyValue.createInt32(this),
        IntType.int64 => PropertyValue.createInt64(this),
        IntType.uint8 => PropertyValue.createUInt8(this),
        IntType.uint16 => PropertyValue.createUInt16(this),
        IntType.uint32 => PropertyValue.createUInt32(this),
        IntType.uint64 => PropertyValue.createUInt64(this)
      };

  /// Converts the value to an [IReference].
  IReference<int?> toReference(IntType type) {
    final propertyValue = toPropertyValue(type);
    final iid = switch (type) {
      IntType.int16 => IID_IReference_Int16,
      IntType.int32 => IID_IReference_Int32,
      IntType.int64 => IID_IReference_Int64,
      IntType.uint8 => IID_IReference_Uint8,
      IntType.uint16 => IID_IReference_Uint16,
      IntType.uint32 => IID_IReference_Uint32,
      IntType.uint64 => IID_IReference_Uint64
    };
    final reference = IReference<int?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension IntListConversions on List<int> {
  /// Creates an array of [T]s from a List of [int]s.
  Pointer<T> toArray<T extends NativeType>({Allocator allocator = calloc}) {
    if (T == Int16) {
      final array = allocator<Int16>(length);
      for (var i = 0; i < length; i++) {
        array[i] = this[i];
      }
      return array as Pointer<T>;
    }

    if (T == Int32) {
      final array = allocator<Int32>(length);
      for (var i = 0; i < length; i++) {
        array[i] = this[i];
      }
      return array as Pointer<T>;
    }

    if (T == Int64) {
      final array = allocator<Int64>(length);
      for (var i = 0; i < length; i++) {
        array[i] = this[i];
      }
      return array as Pointer<T>;
    }

    if (T == Uint8) {
      final array = allocator<Uint8>(length);
      for (var i = 0; i < length; i++) {
        array[i] = this[i];
      }
      return array as Pointer<T>;
    }

    if (T == Uint16) {
      final array = allocator<Uint16>(length);
      for (var i = 0; i < length; i++) {
        array[i] = this[i];
      }
      return array as Pointer<T>;
    }

    if (T == Uint32) {
      final array = allocator<Uint32>(length);
      for (var i = 0; i < length; i++) {
        array[i] = this[i];
      }
      return array as Pointer<T>;
    }

    if (T == Uint64) {
      final array = allocator<Uint64>(length);
      for (var i = 0; i < length; i++) {
        array[i] = this[i];
      }
      return array as Pointer<T>;
    }

    throw UnsupportedError('Unsupported type argument: $T');
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(IntType type) => switch (type) {
        IntType.int16 => PropertyValue.createInt16Array(this),
        IntType.int32 => PropertyValue.createInt32Array(this),
        IntType.int64 => PropertyValue.createInt64Array(this),
        IntType.uint8 => PropertyValue.createUInt8Array(this),
        IntType.uint16 => PropertyValue.createUInt16Array(this),
        IntType.uint32 => PropertyValue.createUInt32Array(this),
        IntType.uint64 => PropertyValue.createUInt64Array(this)
      };
}

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
