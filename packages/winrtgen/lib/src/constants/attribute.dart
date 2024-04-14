// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents various attributes that indicate fundamental properties of WinRT
/// types and members.
enum Attribute {
  /// Indicates that the class is an activatable runtime class.
  activatable('Windows.Foundation.Metadata.ActivatableAttribute'),

  /// Indicates that a type or member should be marked in metadata as
  /// deprecated.
  deprecated('Windows.Foundation.Metadata.DeprecatedAttribute'),

  /// Indicates that the specified type is exclusive to this type.
  exclusiveTo('Windows.Foundation.Metadata.ExclusiveToAttribute'),

  /// Indicates that an enumeration can be treated as a bit field; that is, a
  /// set of flags.
  flags('System.FlagsAttribute'),

  /// Identifies the method as an overload in a language that supports
  /// overloading.
  overload('Windows.Foundation.Metadata.OverloadAttribute'),

  /// Indicates an interface that contains only static methods.
  static('Windows.Foundation.Metadata.StaticAttribute');

  /// The name of the attribute (e.g., `System.FlagsAttribute`).
  final String name;

  const Attribute(this.name);
}
