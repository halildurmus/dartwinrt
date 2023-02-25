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
  TypeIdentifier get typeIdentifier {
    switch (this) {
      case TypeArg.bool_:
      case TypeArg.nullableBool:
        return const TypeIdentifier(BaseType.booleanType);
      case TypeArg.dateTime:
      case TypeArg.nullableDateTime:
        return const TypeIdentifier(BaseType.classTypeModifier,
            name: 'Windows.Foundation.DateTime');
      case TypeArg.double:
      case TypeArg.nullableDouble:
        return const TypeIdentifier(BaseType.doubleType);
      case TypeArg.duration:
      case TypeArg.nullableDuration:
        return const TypeIdentifier(BaseType.classTypeModifier,
            name: 'Windows.Foundation.TimeSpan');
      case TypeArg.float:
      case TypeArg.nullableFloat:
        return const TypeIdentifier(BaseType.floatType);
      case TypeArg.guid:
      case TypeArg.nullableGuid:
        return const TypeIdentifier(BaseType.valueTypeModifier,
            name: 'System.Guid');
      case TypeArg.int16:
      case TypeArg.nullableInt16:
        return const TypeIdentifier(BaseType.int16Type);
      case TypeArg.int32:
      case TypeArg.nullableInt32:
        return const TypeIdentifier(BaseType.int32Type);
      case TypeArg.int64:
      case TypeArg.nullableInt64:
        return const TypeIdentifier(BaseType.int64Type);
      case TypeArg.object:
      case TypeArg.nullableObject:
        return const TypeIdentifier(BaseType.objectType);
      case TypeArg.point:
      case TypeArg.nullablePoint:
        final typeDef =
            MetadataStore.getMetadataForType('Windows.Foundation.Point')!;
        return TypeIdentifier(BaseType.classTypeModifier,
            name: 'Windows.Foundation.Point', type: typeDef);
      case TypeArg.rect:
      case TypeArg.nullableRect:
        final typeDef =
            MetadataStore.getMetadataForType('Windows.Foundation.Rect')!;
        return TypeIdentifier(BaseType.classTypeModifier,
            name: 'Windows.Foundation.Rect', type: typeDef);
      case TypeArg.size:
      case TypeArg.nullableSize:
        final typeDef =
            MetadataStore.getMetadataForType('Windows.Foundation.Size')!;
        return TypeIdentifier(BaseType.classTypeModifier,
            name: 'Windows.Foundation.Size', type: typeDef);
      case TypeArg.string:
      case TypeArg.nullableString:
        return const TypeIdentifier(BaseType.stringType);
      case TypeArg.uint8:
      case TypeArg.nullableUint8:
        return const TypeIdentifier(BaseType.uint8Type);
      case TypeArg.uint16:
      case TypeArg.nullableUint16:
        return const TypeIdentifier(BaseType.uint16Type);
      case TypeArg.uint32:
      case TypeArg.nullableUint32:
        return const TypeIdentifier(BaseType.uint32Type);
      case TypeArg.uint64:
      case TypeArg.nullableUint64:
        return const TypeIdentifier(BaseType.uint64Type);
      case TypeArg.uri:
      case TypeArg.nullableUri:
        final typeDef =
            MetadataStore.getMetadataForType('Windows.Foundation.Uri')!;
        return TypeIdentifier(BaseType.classTypeModifier,
            name: 'Windows.Foundation.Uri', type: typeDef);
      default:
        throw UnsupportedError('Unsupported TypeArg: $name');
    }
  }
}
