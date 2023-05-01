// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// The base class that all WinRT enumerations extend or implement.
abstract class WinRTEnum {
  const WinRTEnum(this.value, {String? name}) : _name = name;

  final int value;
  final String? _name;

  @override
  String toString() =>
      _name != null ? '$runtimeType.$_name' : '$runtimeType(value: $value)';
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
  /// fileAttributes.hasFlag(FileAttributes.readOnly)); // `true`
  /// fileAttributes.hasFlag(FileAttributes.temporary)); // `false`
  /// fileAttributes.hasFlag(
  ///     FileAttributes.readOnly | FileAttributes.archive)); // `true`
  /// ```
  bool hasFlag(T flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}
