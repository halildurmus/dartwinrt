// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';
import '../types.dart';

part 'ikeyvaluepair_part.dart';

/// Represents a key-value pair.
///
/// This is typically used as a constraint type when you need to encapsulate
/// two type parameters into one to satisfy the constraints of another generic
/// interface.
///
/// {@category interface}
abstract class IKeyValuePair<K, V> extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IKeyValuePair(
    super.ptr, {
    V Function(Pointer<COMObject>)? creator,
    K Function(int)? enumKeyCreator,
    V Function(int)? enumCreator,
  })  : _creator = creator,
        _enumKeyCreator = enumKeyCreator,
        _enumCreator = enumCreator;

  final V Function(Pointer<COMObject>)? _creator;
  final K Function(int)? _enumKeyCreator;
  final V Function(int)? _enumCreator;

  /// Creates an instance of [IKeyValuePair] from the given [ptr].
  ///
  /// [K] must be of type `Guid`, `int`, `String`, or `WinRTEnum` (e.g.
  /// `PedometerStepKind`).
  ///
  /// [V] must be of type `Object?`, `String`, `IInspectable?` (e.g.
  /// `IJsonValue?`), or `WinRTEnum` (e.g. `ChatMessageStatus`).
  ///
  /// [creator] must be specified if [V] is `IInspectable?`.
  /// ```dart
  /// final keyValuePair = IKeyValuePair<String, IJsonValue?>.fromPtr
  ///     (ptr, creator: IJsonValue.fromPtr);
  /// ```
  ///
  /// [enumKeyCreator] must be specified if [K] is `WinRTEnum`.
  /// ```dart
  /// final keyValuePair =
  ///     IKeyValuePair<PedometerStepKind, PedometerReading?>.fromPtr
  ///         (ptr, enumKeyCreator: PedometerStepKind.from,
  ///         creator: PedometerReading.fromPtr);
  /// ```
  ///
  /// [enumCreator] must be specified if [V] is `WinRTEnum`.
  /// ```dart
  /// final keyValuePair = IKeyValuePair<String, ChatMessageStatus>.fromPtr(ptr,
  ///     enumCreator: ChatMessageStatus.from);
  /// ```
  factory IKeyValuePair.fromPtr(
    Pointer<COMObject> ptr, {
    V Function(Pointer<COMObject>)? creator,
    K Function(int)? enumKeyCreator,
    V Function(int)? enumCreator,
    IntType? intType,
  }) {
    if (K == Guid) {
      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IKeyValuePairGuidInspectable<V>.fromPtr(ptr, creator: creator)
            as IKeyValuePair<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IKeyValuePairGuidObject.fromPtr(ptr) as IKeyValuePair<K, V>;
      }
    }

    if (K == int && isSubtypeOfInspectable<V>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      if (intType == null) throw ArgumentError.notNull('intType');
      switch (intType) {
        case IntType.int16:
          return _IKeyValuePairInt16Inspectable<V>.fromPtr(ptr,
              creator: creator) as IKeyValuePair<K, V>;
        case IntType.int32:
          return _IKeyValuePairInt32Inspectable<V>.fromPtr(ptr,
              creator: creator) as IKeyValuePair<K, V>;
        case IntType.int64:
          return _IKeyValuePairInt64Inspectable<V>.fromPtr(ptr,
              creator: creator) as IKeyValuePair<K, V>;
        case IntType.uint8:
          return _IKeyValuePairUint8Inspectable<V>.fromPtr(ptr,
              creator: creator) as IKeyValuePair<K, V>;
        case IntType.uint16:
          return _IKeyValuePairUint16Inspectable<V>.fromPtr(ptr,
              creator: creator) as IKeyValuePair<K, V>;
        case IntType.uint32:
          return _IKeyValuePairUint32Inspectable<V>.fromPtr(ptr,
              creator: creator) as IKeyValuePair<K, V>;
        case IntType.uint64:
          return _IKeyValuePairUint64Inspectable<V>.fromPtr(ptr,
              creator: creator) as IKeyValuePair<K, V>;
      }
    }

    if (K == String) {
      if (V == String) {
        return _IKeyValuePairStringString.fromPtr(ptr) as IKeyValuePair<K, V>;
      }

      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IKeyValuePairStringInspectable<V>.fromPtr(ptr, creator: creator)
            as IKeyValuePair<K, V>;
      }

      if (isSubtypeOfWinRTEnum<V>()) {
        if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

        if (isSubtypeOfWinRTFlagsEnum<V>()) {
          return _IKeyValuePairStringWinRTFlagsEnum<V>.fromPtr(ptr,
              enumCreator: enumCreator) as IKeyValuePair<K, V>;
        }

        return _IKeyValuePairStringWinRTEnum<V>.fromPtr(ptr,
            enumCreator: enumCreator) as IKeyValuePair<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IKeyValuePairStringObject.fromPtr(ptr) as IKeyValuePair<K, V>;
      }
    }

    if (isSubtypeOfWinRTEnum<K>() && isSubtypeOfInspectable<V>()) {
      if (enumKeyCreator == null) throw ArgumentError.notNull('enumKeyCreator');
      if (creator == null) throw ArgumentError.notNull('creator');

      if (isSubtypeOfWinRTFlagsEnum<K>()) {
        return _IKeyValuePairWinRTFlagsEnumInspectable.fromPtr(ptr,
            creator: creator, enumKeyCreator: enumKeyCreator);
      }

      return _IKeyValuePairWinRTEnumInspectable.fromPtr(ptr,
          creator: creator, enumKeyCreator: enumKeyCreator);
    }

    throw UnsupportedError('Unsupported key-value pair: ($K, $V)');
  }

  /// Gets the key of the key-value pair.
  K get key;

  /// Gets the value of the key-value pair.
  V get value;
}
