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
extension DoubleConversions on double {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(DoubleType type) => switch (type) {
        DoubleType.double => PropertyValue.createDouble(this),
        DoubleType.float => PropertyValue.createSingle(this)
      };

  /// Converts the value to an [IReference].
  IReference<double?> toReference(DoubleType type) {
    final propertyValue = toPropertyValue(type);
    final iid = switch (type) {
      DoubleType.double => IID_IReference_Double,
      DoubleType.float => IID_IReference_Float
    };
    final reference = IReference<double?>.fromPtr(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension DoubleListConversions on List<double> {
  /// Creates an array of doubles from a List of [double]s.
  Pointer<T> toArray<T extends NativeType>({Allocator allocator = calloc}) {
    if (T == Double) {
      final array = allocator<Double>(length);
      for (var i = 0; i < length; i++) {
        array[i] = this[i];
      }
      return array as Pointer<T>;
    }

    if (T == Float) {
      final array = allocator<Float>(length);
      for (var i = 0; i < length; i++) {
        array[i] = this[i];
      }
      return array as Pointer<T>;
    }

    throw UnsupportedError('Unsupported type argument: $T');
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(DoubleType type) => switch (type) {
        DoubleType.double => PropertyValue.createDoubleArray(this),
        DoubleType.float => PropertyValue.createSingleArray(this)
      };
}

/// @nodoc
extension DoubleArrayToFloat64ListConversion on Pointer<Double> {
  /// Creates a [Float64List] from `Pointer<Double>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Double>`.
  Float64List toList({int length = 1}) =>
      Float64List.fromList(asTypedList(length));
}

/// @nodoc
extension FloatArrayToFloat32ListConversion on Pointer<Float> {
  /// Creates a [Float32List] from `Pointer<Float>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Float>`.
  Float32List toList({int length = 1}) =>
      Float32List.fromList(asTypedList(length));
}
