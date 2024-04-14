// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide WinRTStringConversion;

import '../../internal.dart';
import '../types.dart';

part 'ikeyvaluepair_part.dart';

/// Represents a key-value pair.
///
/// This is typically used as a constraint type when you need to encapsulate
/// two type parameters into one to satisfy the constraints of another generic
/// interface.
abstract interface class IKeyValuePair<K, V> extends IInspectable {
  IKeyValuePair(
    super.ptr, {
    DoubleType? kDoubleType,
    IntType? kIntType,
    DoubleType? vDoubleType,
    IntType? vIntType,
  });

  /// Creates an instance of [IKeyValuePair] from the given [ptr].
  ///
  /// [K] must be of type `Guid`, `int`, `Object`, `String`, `Uri`, or
  /// `WinRTEnum` (e.g., `PedometerStepKind`).
  ///
  /// [V] must be of type `Object?`, `String`, `IInspectable?` (e.g.,
  /// `IJsonValue?`), or `WinRTEnum` (e.g., `ChatMessageStatus`).
  ///
  /// [kEnumCreator] must be specified if [K] is `WinRTEnum`.
  /// ```dart
  /// final keyValuePair =
  ///     IKeyValuePair<PedometerStepKind, PedometerReading?>.fromPtr
  ///         (ptr, kEnumCreator: PedometerStepKind.from,
  ///         vObjectCreator: PedometerReading.fromPtr);
  /// ```
  ///
  /// [vEnumCreator] must be specified if [V] is `WinRTEnum`.
  /// ```dart
  /// final keyValuePair = IKeyValuePair<String, ChatMessageStatus>.fromPtr(ptr,
  ///     vEnumCreator: ChatMessageStatus.from);
  /// ```
  ///
  /// [vObjectCreator] must be specified if [V] is `IInspectable?`.
  /// ```dart
  /// final keyValuePair = IKeyValuePair<String, IJsonValue?>.fromPtr(ptr,
  ///     vObjectCreator: IJsonValue.fromPtr);
  /// ```
  factory IKeyValuePair.fromPtr(
    Pointer<COMObject> ptr, {
    EnumCreator<K>? kEnumCreator,
    IntType? kIntType,
    EnumCreator<V>? vEnumCreator,
    COMObjectCreator<V>? vObjectCreator,
  }) {
    if (K == Guid) {
      if (isSubtypeOfInspectable<V>()) {
        if (vObjectCreator == null) {
          throw ArgumentError.notNull('vObjectCreator');
        }

        return _IKeyValuePairGuidInspectable<V>.fromPtr(
          ptr,
          vObjectCreator: vObjectCreator,
        ) as IKeyValuePair<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IKeyValuePairGuidObject.fromPtr(ptr) as IKeyValuePair<K, V>;
      }
    }

    if (K == int && isSubtypeOfInspectable<V>()) {
      if (vObjectCreator == null) throw ArgumentError.notNull('vObjectCreator');
      if (kIntType == null) throw ArgumentError.notNull('kIntType');
      final keyValuePair = switch (kIntType) {
        IntType.int16 => _IKeyValuePairInt16Inspectable<V>.fromPtr(ptr,
            kIntType: kIntType, vObjectCreator: vObjectCreator),
        IntType.int32 => _IKeyValuePairInt32Inspectable<V>.fromPtr(ptr,
            kIntType: kIntType, vObjectCreator: vObjectCreator),
        IntType.int64 => _IKeyValuePairInt64Inspectable<V>.fromPtr(ptr,
            kIntType: kIntType, vObjectCreator: vObjectCreator),
        IntType.uint8 => _IKeyValuePairUint8Inspectable<V>.fromPtr(ptr,
            kIntType: kIntType, vObjectCreator: vObjectCreator),
        IntType.uint16 => _IKeyValuePairUint16Inspectable<V>.fromPtr(ptr,
            kIntType: kIntType, vObjectCreator: vObjectCreator),
        IntType.uint32 => _IKeyValuePairUint32Inspectable<V>.fromPtr(ptr,
            kIntType: kIntType, vObjectCreator: vObjectCreator),
        IntType.uint64 => _IKeyValuePairUint64Inspectable<V>.fromPtr(ptr,
            kIntType: kIntType, vObjectCreator: vObjectCreator)
      };
      return keyValuePair as IKeyValuePair<K, V>;
    }

    if (K == String) {
      if (V == String) {
        return _IKeyValuePairStringString.fromPtr(ptr) as IKeyValuePair<K, V>;
      }

      if (isSubtypeOfInspectable<V>()) {
        if (vObjectCreator == null) {
          throw ArgumentError.notNull('vObjectCreator');
        }

        return _IKeyValuePairStringInspectable<V>.fromPtr(ptr,
            vObjectCreator: vObjectCreator) as IKeyValuePair<K, V>;
      }

      if (isSubtypeOfWinRTFlagsEnum<V>()) {
        if (vEnumCreator == null) throw ArgumentError.notNull('vEnumCreator');
        return _IKeyValuePairStringWinRTFlagsEnum<V>.fromPtr(ptr,
            vEnumCreator: vEnumCreator) as IKeyValuePair<K, V>;
      }

      if (isSubtypeOfWinRTEnum<V>()) {
        if (vEnumCreator == null) throw ArgumentError.notNull('vEnumCreator');
        return _IKeyValuePairStringWinRTEnum<V>.fromPtr(ptr,
            vEnumCreator: vEnumCreator) as IKeyValuePair<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IKeyValuePairStringObject.fromPtr(ptr) as IKeyValuePair<K, V>;
      }
    }

    if (isSubtypeOfWinRTEnum<K>() && isSubtypeOfInspectable<V>()) {
      if (kEnumCreator == null) throw ArgumentError.notNull('kEnumCreator');
      if (vObjectCreator == null) throw ArgumentError.notNull('vObjectCreator');

      if (isSubtypeOfWinRTFlagsEnum<K>()) {
        return _IKeyValuePairWinRTFlagsEnumInspectable.fromPtr(
          ptr,
          kEnumCreator: kEnumCreator,
          vObjectCreator: vObjectCreator,
        );
      }

      return _IKeyValuePairWinRTEnumInspectable.fromPtr(
        ptr,
        kEnumCreator: kEnumCreator,
        vObjectCreator: vObjectCreator,
      );
    }

    if (K == Uri && V == String) {
      return _IKeyValuePairUriString.fromPtr(ptr) as IKeyValuePair<K, V>;
    }

    if (K == Object && isNullableObjectType<V>()) {
      return _IKeyValuePairObjectObject.fromPtr(ptr) as IKeyValuePair<K, V>;
    }

    throw UnsupportedError('Unsupported key-value pair: ($K, $V)');
  }

  /// Gets the key of the key-value pair.
  K get key;

  /// Gets the value of the key-value pair.
  V get value;
}
