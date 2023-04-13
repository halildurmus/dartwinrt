// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

/// Represents a type argument for a generic class.
///
/// Used when generating private concrete classes for the abstract WinRT generic
/// classes.
enum TypeArg {
  bool_('bool'),
  dateTime('DateTime'),
  double('Double'),
  duration('Duration'),
  float('Float'),
  guid('Guid'),
  inspectable('Inspectable'),
  int16('Int16'),
  int32('Int32'),
  int64('Int64'),
  nullableBool('bool?'),
  nullableDateTime('DateTime?'),
  nullableDouble('Double?'),
  nullableDuration('Duration?'),
  nullableFloat('Float?'),
  nullableGuid('Guid?'),
  nullableInspectable('Inspectable?'),
  nullableInt16('Int16?'),
  nullableInt32('Int32?'),
  nullableInt64('Int64?'),
  nullableObject('Object?'),
  nullablePoint('Point?'),
  nullableRect('Rect?'),
  nullableSize('Size?'),
  nullableString('String?'),
  nullableUint8('Uint8?'),
  nullableUint16('Uint16?'),
  nullableUint32('Uint32?'),
  nullableUint64('Uint64?'),
  nullableUri('Uri?'),
  object('Object'),
  point('Point'),
  rect('Rect'),
  size('Size'),
  string('String'),
  uint8('Uint8'),
  uint16('Uint16'),
  uint32('Uint32'),
  uint64('Uint64'),
  uri('Uri'),
  winrtEnum('WinRTEnum'),
  winrtFlagsEnum('WinRTFlagsEnum');

  final String name;

  const TypeArg(this.name);

  factory TypeArg.from(String name) =>
      TypeArg.values.firstWhere((e) => e.name == name,
          orElse: () => throw ArgumentError.value(
              name, 'name', 'No enum value with that name'));

  /// Whether this is [TypeArg.winrtEnum] or [TypeArg.winrtFlagsEnum].
  bool get isEnum => [TypeArg.winrtEnum, TypeArg.winrtFlagsEnum].contains(this);

  /// Whether this is [TypeArg.int16], [TypeArg.int32], [TypeArg.int64],
  /// [TypeArg.uint8], [TypeArg.uint16], [TypeArg.uint32], or [TypeArg.uint64].
  bool get isInt => [
        TypeArg.int16,
        TypeArg.int32,
        TypeArg.int64,
        TypeArg.uint8,
        TypeArg.uint16,
        TypeArg.uint32,
        TypeArg.uint64
      ].contains(this);

  /// Whether this is [TypeArg.inspectable] or [TypeArg.nullableInspectable].
  bool get isInspectable =>
      [TypeArg.inspectable, TypeArg.nullableInspectable].contains(this);

  /// Returns the appropriate [TypeIdentifier] for this [TypeArg].
  TypeIdentifier get typeIdentifier => switch (this) {
        TypeArg.bool_ ||
        TypeArg.nullableBool =>
          const TypeIdentifier(BaseType.booleanType),
        TypeArg.dateTime || TypeArg.nullableDateTime => const TypeIdentifier(
            BaseType.classTypeModifier,
            name: 'Windows.Foundation.DateTime'),
        TypeArg.double ||
        TypeArg.nullableDouble =>
          const TypeIdentifier(BaseType.doubleType),
        TypeArg.duration || TypeArg.nullableDuration => const TypeIdentifier(
            BaseType.classTypeModifier,
            name: 'Windows.Foundation.TimeSpan'),
        TypeArg.float ||
        TypeArg.nullableFloat =>
          const TypeIdentifier(BaseType.floatType),
        TypeArg.guid ||
        TypeArg.nullableGuid =>
          const TypeIdentifier(BaseType.valueTypeModifier, name: 'System.Guid'),
        TypeArg.int16 ||
        TypeArg.nullableInt16 =>
          const TypeIdentifier(BaseType.int16Type),
        TypeArg.int32 ||
        TypeArg.nullableInt32 =>
          const TypeIdentifier(BaseType.int32Type),
        TypeArg.int64 ||
        TypeArg.nullableInt64 =>
          const TypeIdentifier(BaseType.int64Type),
        TypeArg.object ||
        TypeArg.nullableObject =>
          const TypeIdentifier(BaseType.objectType),
        TypeArg.point || TypeArg.nullablePoint => TypeIdentifier(
            BaseType.classTypeModifier,
            name: 'Windows.Foundation.Point',
            type: MetadataStore.getMetadataForType('Windows.Foundation.Point')),
        TypeArg.rect || TypeArg.nullableRect => TypeIdentifier(
            BaseType.classTypeModifier,
            name: 'Windows.Foundation.Rect',
            type: MetadataStore.getMetadataForType('Windows.Foundation.Rect')),
        TypeArg.size || TypeArg.nullableSize => TypeIdentifier(
            BaseType.classTypeModifier,
            name: 'Windows.Foundation.Size',
            type: MetadataStore.getMetadataForType('Windows.Foundation.Size')),
        TypeArg.string ||
        TypeArg.nullableString =>
          const TypeIdentifier(BaseType.stringType),
        TypeArg.uint8 ||
        TypeArg.nullableUint8 =>
          const TypeIdentifier(BaseType.uint8Type),
        TypeArg.uint16 ||
        TypeArg.nullableUint16 =>
          const TypeIdentifier(BaseType.uint16Type),
        TypeArg.uint32 ||
        TypeArg.nullableUint32 =>
          const TypeIdentifier(BaseType.uint32Type),
        TypeArg.uint64 ||
        TypeArg.nullableUint64 =>
          const TypeIdentifier(BaseType.uint64Type),
        TypeArg.uri || TypeArg.nullableUri => TypeIdentifier(
            BaseType.classTypeModifier,
            name: 'Windows.Foundation.Uri',
            type: MetadataStore.getMetadataForType('Windows.Foundation.Uri')),
        _ => throw UnsupportedError('Unsupported type arg: $this'),
      };
}
