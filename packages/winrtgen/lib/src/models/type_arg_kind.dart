// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../exception/exception.dart';
import '../utilities/utilities.dart';

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
        TypeArgKind.accessListEntry => _createClassTypeIdentifier(
            'Windows.Storage.AccessCache.AccessListEntry'),
        TypeArgKind.backgroundTransferFileRange => _createClassTypeIdentifier(
            'Windows.Networking.BackgroundTransfer.BackgroundTransferFileRange'),
        TypeArgKind.basicGeoposition ||
        TypeArgKind.nullableBasicGeoposition =>
          _createClassTypeIdentifier(
              'Windows.Devices.Geolocation.BasicGeoposition'),
        TypeArgKind.bool_ ||
        TypeArgKind.nullableBool =>
          const TypeIdentifier(BaseType.booleanType),
        TypeArgKind.color ||
        TypeArgKind.nullableColor =>
          _createClassTypeIdentifier('Windows.UI.Color'),
        TypeArgKind.dateTime ||
        TypeArgKind.nullableDateTime =>
          _createClassTypeIdentifier('Windows.Foundation.DateTime'),
        TypeArgKind.nullableDisplayPresentationRate =>
          _createClassTypeIdentifier(
              'Windows.Devices.Display.Core.DisplayPresentationRate'),
        TypeArgKind.double ||
        TypeArgKind.nullableDouble =>
          const TypeIdentifier(BaseType.doubleType),
        TypeArgKind.duration ||
        TypeArgKind.nullableDuration =>
          _createClassTypeIdentifier('Windows.Foundation.TimeSpan'),
        TypeArgKind.float ||
        TypeArgKind.nullableFloat =>
          const TypeIdentifier(BaseType.floatType),
        TypeArgKind.gpioChangeRecord =>
          _createClassTypeIdentifier('Windows.Devices.Gpio.GpioChangeRecord'),
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
        TypeArgKind.loadMoreItemsResult => _createClassTypeIdentifier(
            'Windows.UI.Xaml.Data.LoadMoreItemsResult'),
        TypeArgKind.mediaTimeRange =>
          _createClassTypeIdentifier('Windows.Media.MediaTimeRange'),
        TypeArgKind.mseTimeRange ||
        TypeArgKind.nullableMseTimeRange =>
          _createClassTypeIdentifier('Windows.Media.Core.MseTimeRange'),
        TypeArgKind.nitRange =>
          _createClassTypeIdentifier('Windows.Graphics.Display.NitRange'),
        TypeArgKind.nullableHolographicStereoTransform =>
          _createClassTypeIdentifier(
              'Windows.Graphics.Holographic.HolographicStereoTransform'),
        TypeArgKind.nullableMatrix4x4 =>
          _createClassTypeIdentifier('Windows.Foundation.Numerics.Matrix4x4'),
        TypeArgKind.nullableQuaternion =>
          _createClassTypeIdentifier('Windows.Foundation.Numerics.Quaternion'),
        TypeArgKind.nullableSizeInt32 =>
          _createClassTypeIdentifier('Windows.Graphics.SizeInt32'),
        TypeArgKind.nullableSpatialBoundingBox => _createClassTypeIdentifier(
            'Windows.Perception.Spatial.SpatialBoundingBox'),
        TypeArgKind.nullableSpatialBoundingFrustum =>
          _createClassTypeIdentifier(
              'Windows.Perception.Spatial.SpatialBoundingFrustum'),
        TypeArgKind.nullableSpatialBoundingOrientedBox =>
          _createClassTypeIdentifier(
              'Windows.Perception.Spatial.SpatialBoundingOrientedBox'),
        TypeArgKind.nullableSpatialRay =>
          _createClassTypeIdentifier('Windows.Perception.Spatial.SpatialRay'),
        TypeArgKind.nullableVector2 =>
          _createClassTypeIdentifier('Windows.Foundation.Numerics.Vector2'),
        TypeArgKind.nullableVector3 =>
          _createClassTypeIdentifier('Windows.Foundation.Numerics.Vector3'),
        TypeArgKind.nullableWhiteBalanceGain =>
          _createClassTypeIdentifier('Windows.Media.Capture.WhiteBalanceGain'),
        TypeArgKind.object ||
        TypeArgKind.nullableObject =>
          const TypeIdentifier(BaseType.objectType),
        TypeArgKind.point ||
        TypeArgKind.nullablePoint =>
          _createClassTypeIdentifier('Windows.Foundation.Point'),
        TypeArgKind.pointerDeviceUsage => _createClassTypeIdentifier(
            'Windows.Devices.Input.PointerDeviceUsage'),
        TypeArgKind.rect ||
        TypeArgKind.nullableRect =>
          _createClassTypeIdentifier('Windows.Foundation.Rect'),
        TypeArgKind.rectInt32 =>
          _createClassTypeIdentifier('Windows.Graphics.RectInt32'),
        TypeArgKind.size ||
        TypeArgKind.nullableSize =>
          _createClassTypeIdentifier('Windows.Foundation.Size'),
        TypeArgKind.sizeUint32 => _createClassTypeIdentifier(
            'Windows.Devices.PointOfService.SizeUInt32'),
        TypeArgKind.sortEntry =>
          _createClassTypeIdentifier('Windows.Storage.Search.SortEntry'),
        TypeArgKind.storePackageUpdateStatus => _createClassTypeIdentifier(
            'Windows.Services.Store.StorePackageUpdateStatus'),
        TypeArgKind.string ||
        TypeArgKind.nullableString =>
          const TypeIdentifier(BaseType.stringType),
        TypeArgKind.textRange =>
          _createClassTypeIdentifier('Windows.UI.Xaml.Documents.TextRange'),
        TypeArgKind.textSegment =>
          _createClassTypeIdentifier('Windows.Data.Text.TextSegment'),
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
          _createClassTypeIdentifier('Windows.Foundation.Uri'),
        TypeArgKind.windowId =>
          _createClassTypeIdentifier('Windows.UI.WindowId'),
        _ => throw WinRTGenException('Unsupported TypeArgKind: $this'),
      };
}

TypeIdentifier _createClassTypeIdentifier(String type) =>
    TypeIdentifier(BaseType.classTypeModifier,
        name: type, type: getMetadataForType(type));
