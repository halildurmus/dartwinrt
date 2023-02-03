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
