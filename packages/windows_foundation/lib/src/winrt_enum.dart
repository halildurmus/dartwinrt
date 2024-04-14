// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// The base class that all WinRT enumerations extend or implement.
abstract class WinRTEnum {
  const WinRTEnum(this.value, {String? name}) : _name = name;

  final int value;
  final String? _name;

  @override
  String toString() =>
      _name != null ? '$runtimeType.$_name' : '$runtimeType(value: $value)';
}

extension WinRTEnumHelper<T extends WinRTEnum> on Iterable<T> {
  /// Finds the enum value in this list with value [value].
  ///
  /// Goes through this collection looking for an enum with value [value].
  /// Returns the first value with the given value. Such a value must be found.
  T byValue(int value) {
    for (final enumValue in this) {
      if (enumValue.value == value) return enumValue;
    }
    throw ArgumentError.value(value, 'value', 'No enum value with that value');
  }
}

/// The base class that all WinRT Flags enumerations implement.
abstract base class WinRTFlagsEnum<T extends WinRTEnum> extends WinRTEnum {
  const WinRTFlagsEnum(super.value, {super.name});

  /// Bit-wise and operator.
  ///
  /// ```dart
  /// FileAttributes.readOnly & FileAttributes.archive // 1 & 32 -> 0
  /// FileAttributes.archive & FileAttributes.archive // 32 & 32 -> 32
  /// ```
  T operator &(T other);

  /// Bit-wise or operator.
  ///
  /// ```dart
  /// FileAttributes.readOnly | FileAttributes.archive // 1 | 32 -> 33
  /// FileAttributes.archive | FileAttributes.archive // 32 | 32 -> 32
  /// ```
  T operator |(T other);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  ///
  /// ```dart
  /// final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
  /// fileAttributes.hasFlag(FileAttributes.readOnly); // `true`
  /// fileAttributes.hasFlag(FileAttributes.temporary); // `false`
  /// fileAttributes.hasFlag(
  ///     FileAttributes.readOnly | FileAttributes.archive); // `true`
  /// ```
  bool hasFlag(T flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}
