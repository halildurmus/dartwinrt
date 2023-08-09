// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import 'winrt_metadata_store.dart';

/// Represents a type argument kind for a generic class.
///
/// Used when generating private concrete classes for the abstract WinRT generic
/// classes.
enum TypeArgKind {
  accessListEntry('AccessListEntry'),
  backgroundTransferFileRange('BackgroundTransferFileRange'),
  basicGeoposition('BasicGeoposition'),
  bool_('bool'),
  color('Color'),
  dateTime('DateTime'),
  double('Double'),
  duration('Duration'),
  float('Float'),
  gpioChangeRecord('GpioChangeRecord'),
  guid('Guid'),
  inspectable('Inspectable'),
  int16('Int16'),
  int32('Int32'),
  int64('Int64'),
  loadMoreItemsResult('LoadMoreItemsResult'),
  mediaTimeRange('MediaTimeRange'),
  mseTimeRange('MseTimeRange'),
  nitRange('NitRange'),
  nullableBasicGeoposition('BasicGeoposition?'),
  nullableBool('bool?'),
  nullableColor('Color?'),
  nullableDateTime('DateTime?'),
  nullableDisplayPresentationRate('DisplayPresentationRate?'),
  nullableDouble('Double?'),
  nullableDuration('Duration?'),
  nullableFloat('Float?'),
  nullableGuid('Guid?'),
  nullableHolographicStereoTransform('HolographicStereoTransform?'),
  nullableInspectable('Inspectable?'),
  nullableInt16('Int16?'),
  nullableInt32('Int32?'),
  nullableInt64('Int64?'),
  nullableMatrix4x4('Matrix4x4?'),
  nullableMseTimeRange('MseTimeRange?'),
  nullableObject('Object?'),
  nullablePoint('Point?'),
  nullableQuaternion('Quaternion?'),
  nullableRect('Rect?'),
  nullableSize('Size?'),
  nullableSizeInt32('SizeInt32?'),
  nullableSpatialBoundingBox('SpatialBoundingBox?'),
  nullableSpatialBoundingFrustum('SpatialBoundingFrustum?'),
  nullableSpatialBoundingOrientedBox('SpatialBoundingOrientedBox?'),
  nullableSpatialRay('SpatialRay?'),
  nullableString('String?'),
  nullableUint8('Uint8?'),
  nullableUint16('Uint16?'),
  nullableUint32('Uint32?'),
  nullableUint64('Uint64?'),
  nullableUri('Uri?'),
  nullableVector2('Vector2?'),
  nullableVector3('Vector3?'),
  nullableWhiteBalanceGain('WhiteBalanceGain?'),
  object('Object'),
  plane('Plane'),
  point('Point'),
  pointerDeviceUsage('PointerDeviceUsage'),
  rect('Rect'),
  rectInt32('RectInt32'),
  size('Size'),
  sizeUint32('SizeUInt32'),
  sortEntry('SortEntry'),
  storePackageUpdateStatus('StorePackageUpdateStatus'),
  string('String'),
  textRange('TextRange'),
  textSegment('TextSegment'),
  uint8('Uint8'),
  uint16('Uint16'),
  uint32('Uint32'),
  uint64('Uint64'),
  uri('Uri'),
  windowId('WindowId'),
  winrtEnum('WinRTEnum'),
  winrtFlagsEnum('WinRTFlagsEnum');

  final String name;

  const TypeArgKind(this.name);

  factory TypeArgKind.from(String name) =>
      TypeArgKind.values.firstWhere((e) => e.name == name,
          orElse: () => throw ArgumentError.value(
              name, 'name', 'No enum value with that name'));

  factory TypeArgKind.fromTypeIdentifier(TypeIdentifier typeIdentifier,
      {bool isNullable = false}) {
    final TypeIdentifier(:baseType, :name, :type) = typeIdentifier;
    return switch (baseType) {
      BaseType.booleanType =>
        isNullable ? TypeArgKind.nullableBool : TypeArgKind.bool_,
      BaseType.classTypeModifier when name == 'Windows.Foundation.Uri' =>
        isNullable ? TypeArgKind.nullableUri : TypeArgKind.uri,
      BaseType.classTypeModifier ||
      BaseType.genericTypeModifier =>
        isNullable ? TypeArgKind.nullableInspectable : TypeArgKind.inspectable,
      BaseType.doubleType =>
        isNullable ? TypeArgKind.nullableDouble : TypeArgKind.double,
      BaseType.floatType =>
        isNullable ? TypeArgKind.nullableFloat : TypeArgKind.float,
      BaseType.int16Type =>
        isNullable ? TypeArgKind.nullableInt16 : TypeArgKind.int16,
      BaseType.int32Type =>
        isNullable ? TypeArgKind.nullableInt32 : TypeArgKind.int32,
      BaseType.int64Type =>
        isNullable ? TypeArgKind.nullableInt64 : TypeArgKind.int64,
      BaseType.objectType =>
        isNullable ? TypeArgKind.nullableObject : TypeArgKind.object,
      BaseType.stringType =>
        isNullable ? TypeArgKind.nullableString : TypeArgKind.string,
      BaseType.uint8Type =>
        isNullable ? TypeArgKind.nullableUint8 : TypeArgKind.uint8,
      BaseType.uint16Type =>
        isNullable ? TypeArgKind.nullableUint16 : TypeArgKind.uint16,
      BaseType.uint32Type =>
        isNullable ? TypeArgKind.nullableUint32 : TypeArgKind.uint32,
      BaseType.uint64Type =>
        isNullable ? TypeArgKind.nullableUint64 : TypeArgKind.uint64,
      BaseType.valueTypeModifier when type?.isEnum ?? false =>
        type!.existsAttribute(flagsAttribute)
            ? TypeArgKind.winrtFlagsEnum
            : TypeArgKind.winrtEnum,
      BaseType.valueTypeModifier => switch (name) {
          'System.Guid' =>
            isNullable ? TypeArgKind.nullableGuid : TypeArgKind.guid,
          'Windows.Foundation.TimeSpan' =>
            isNullable ? TypeArgKind.nullableDuration : TypeArgKind.duration,
          _ => TypeArgKind.from(
              isNullable ? name.lastComponent.nullable() : name.lastComponent)
        },
      _ => throw UnsupportedError('Unsupported TypeIdentifier: $typeIdentifier')
    };
  }

  /// Whether this is [TypeArgKind.double] or [TypeArgKind.float].
  bool get isDouble => switch (this) {
        TypeArgKind.double || TypeArgKind.float => true,
        _ => false
      };

  /// Whether this is [TypeArgKind.winrtEnum] or [TypeArgKind.winrtFlagsEnum].
  bool get isEnum => switch (this) {
        TypeArgKind.winrtEnum || TypeArgKind.winrtFlagsEnum => true,
        _ => false
      };

  /// Whether this is [TypeArgKind.inspectable] or
  /// [TypeArgKind.nullableInspectable].
  bool get isInspectable => switch (this) {
        TypeArgKind.inspectable || TypeArgKind.nullableInspectable => true,
        _ => false
      };

  /// Whether this is [TypeArgKind.int16], [TypeArgKind.int32],
  /// [TypeArgKind.int64], [TypeArgKind.uint8], [TypeArgKind.uint16],
  /// [TypeArgKind.uint32], or [TypeArgKind.uint64].
  bool get isInt => switch (this) {
        TypeArgKind.int16 ||
        TypeArgKind.int32 ||
        TypeArgKind.int64 ||
        TypeArgKind.uint8 ||
        TypeArgKind.uint16 ||
        TypeArgKind.uint32 ||
        TypeArgKind.uint64 =>
          true,
        _ => false
      };

  /// Returns the appropriate [TypeIdentifier] for this [TypeArgKind].
  TypeIdentifier get typeIdentifier => switch (this) {
        TypeArgKind.accessListEntry =>
          'Windows.Storage.AccessCache.AccessListEntry'.typeIdentifier,
        TypeArgKind.backgroundTransferFileRange =>
          'Windows.Networking.BackgroundTransfer.BackgroundTransferFileRange'
              .typeIdentifier,
        TypeArgKind.basicGeoposition ||
        TypeArgKind.nullableBasicGeoposition =>
          'Windows.Devices.Geolocation.BasicGeoposition'.typeIdentifier,
        TypeArgKind.bool_ ||
        TypeArgKind.nullableBool =>
          const TypeIdentifier(BaseType.booleanType),
        TypeArgKind.color ||
        TypeArgKind.nullableColor =>
          'Windows.UI.Color'.typeIdentifier,
        TypeArgKind.dateTime ||
        TypeArgKind.nullableDateTime =>
          'Windows.Foundation.DateTime'.typeIdentifier,
        TypeArgKind.nullableDisplayPresentationRate =>
          'Windows.Devices.Display.Core.DisplayPresentationRate'.typeIdentifier,
        TypeArgKind.double ||
        TypeArgKind.nullableDouble =>
          const TypeIdentifier(BaseType.doubleType),
        TypeArgKind.duration ||
        TypeArgKind.nullableDuration =>
          'Windows.Foundation.TimeSpan'.typeIdentifier,
        TypeArgKind.float ||
        TypeArgKind.nullableFloat =>
          const TypeIdentifier(BaseType.floatType),
        TypeArgKind.gpioChangeRecord =>
          'Windows.Devices.Gpio.GpioChangeRecord'.typeIdentifier,
        TypeArgKind.guid ||
        TypeArgKind.nullableGuid =>
          const TypeIdentifier(BaseType.valueTypeModifier, name: 'System.Guid'),
        TypeArgKind.int16 ||
        TypeArgKind.nullableInt16 =>
          const TypeIdentifier(BaseType.int16Type),
        TypeArgKind.int32 ||
        TypeArgKind.nullableInt32 =>
          const TypeIdentifier(BaseType.int32Type),
        TypeArgKind.int64 ||
        TypeArgKind.nullableInt64 =>
          const TypeIdentifier(BaseType.int64Type),
        TypeArgKind.loadMoreItemsResult =>
          'Windows.UI.Xaml.Data.LoadMoreItemsResult'.typeIdentifier,
        TypeArgKind.mediaTimeRange =>
          'Windows.Media.MediaTimeRange'.typeIdentifier,
        TypeArgKind.mseTimeRange ||
        TypeArgKind.nullableMseTimeRange =>
          'Windows.Media.Core.MseTimeRange'.typeIdentifier,
        TypeArgKind.nitRange =>
          'Windows.Graphics.Display.NitRange'.typeIdentifier,
        TypeArgKind.nullableHolographicStereoTransform =>
          'Windows.Graphics.Holographic.HolographicStereoTransform'
              .typeIdentifier,
        TypeArgKind.nullableMatrix4x4 =>
          'Windows.Foundation.Numerics.Matrix4x4'.typeIdentifier,
        TypeArgKind.nullableQuaternion =>
          'Windows.Foundation.Numerics.Quaternion'.typeIdentifier,
        TypeArgKind.nullableSizeInt32 =>
          'Windows.Graphics.SizeInt32'.typeIdentifier,
        TypeArgKind.nullableSpatialBoundingBox =>
          'Windows.Perception.Spatial.SpatialBoundingBox'.typeIdentifier,
        TypeArgKind.nullableSpatialBoundingFrustum =>
          'Windows.Perception.Spatial.SpatialBoundingFrustum'.typeIdentifier,
        TypeArgKind.nullableSpatialBoundingOrientedBox =>
          'Windows.Perception.Spatial.SpatialBoundingOrientedBox'
              .typeIdentifier,
        TypeArgKind.nullableSpatialRay =>
          'Windows.Perception.Spatial.SpatialRay'.typeIdentifier,
        TypeArgKind.nullableVector2 =>
          'Windows.Foundation.Numerics.Vector2'.typeIdentifier,
        TypeArgKind.nullableVector3 =>
          'Windows.Foundation.Numerics.Vector3'.typeIdentifier,
        TypeArgKind.nullableWhiteBalanceGain =>
          'Windows.Media.Capture.WhiteBalanceGain'.typeIdentifier,
        TypeArgKind.object ||
        TypeArgKind.nullableObject =>
          const TypeIdentifier(BaseType.objectType),
        TypeArgKind.plane => 'Windows.Foundation.Numerics.Plane'.typeIdentifier,
        TypeArgKind.point ||
        TypeArgKind.nullablePoint =>
          'Windows.Foundation.Point'.typeIdentifier,
        TypeArgKind.pointerDeviceUsage =>
          'Windows.Devices.Input.PointerDeviceUsage'.typeIdentifier,
        TypeArgKind.rect ||
        TypeArgKind.nullableRect =>
          'Windows.Foundation.Rect'.typeIdentifier,
        TypeArgKind.rectInt32 => 'Windows.Graphics.RectInt32'.typeIdentifier,
        TypeArgKind.size ||
        TypeArgKind.nullableSize =>
          'Windows.Foundation.Size'.typeIdentifier,
        TypeArgKind.sizeUint32 =>
          'Windows.Devices.PointOfService.SizeUInt32'.typeIdentifier,
        TypeArgKind.sortEntry =>
          'Windows.Storage.Search.SortEntry'.typeIdentifier,
        TypeArgKind.storePackageUpdateStatus =>
          'Windows.Services.Store.StorePackageUpdateStatus'.typeIdentifier,
        TypeArgKind.string ||
        TypeArgKind.nullableString =>
          const TypeIdentifier(BaseType.stringType),
        TypeArgKind.textRange =>
          'Windows.UI.Xaml.Documents.TextRange'.typeIdentifier,
        TypeArgKind.textSegment =>
          'Windows.Data.Text.TextSegment'.typeIdentifier,
        TypeArgKind.uint8 ||
        TypeArgKind.nullableUint8 =>
          const TypeIdentifier(BaseType.uint8Type),
        TypeArgKind.uint16 ||
        TypeArgKind.nullableUint16 =>
          const TypeIdentifier(BaseType.uint16Type),
        TypeArgKind.uint32 ||
        TypeArgKind.nullableUint32 =>
          const TypeIdentifier(BaseType.uint32Type),
        TypeArgKind.uint64 ||
        TypeArgKind.nullableUint64 =>
          const TypeIdentifier(BaseType.uint64Type),
        TypeArgKind.uri ||
        TypeArgKind.nullableUri =>
          'Windows.Foundation.Uri'.typeIdentifier,
        TypeArgKind.windowId => 'Windows.UI.WindowId'.typeIdentifier,
        _ => throw UnsupportedError('Unsupported TypeArgKind: $this'),
      };
}

extension on String {
  TypeIdentifier get typeIdentifier =>
      TypeIdentifier(BaseType.classTypeModifier,
          name: this, type: WinRTMetadataStore.findTypeDef(this));
}
