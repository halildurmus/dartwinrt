// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../models/models.dart';

/// WinRT generic types with their [TypeArgKind]s.
///
/// Used to generate private concrete classes for the abstract WinRT generic
/// classes.
const genericTypes = <GenericType>[
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.IAsyncOperation`1', _asyncOperationTypeArgKinds),
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.IReference`1', _referenceTypeArgKinds),
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.Collections.IIterator`1', _vectorTypeArgKinds),
  GenericTypeWithTwoTypeArgs(
      'Windows.Foundation.Collections.IKeyValuePair`2', _mapTypeArgKindPairs),
  GenericTypeWithTwoTypeArgs(
      'Windows.Foundation.Collections.IMap`2', _mapTypeArgKindPairs),
  GenericTypeWithTwoTypeArgs(
      'Windows.Foundation.Collections.IMapView`2', _mapTypeArgKindPairs),
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.Collections.IVector`1', _vectorTypeArgKinds),
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.Collections.IVectorView`1', _vectorTypeArgKinds),
];

/// The type argument kinds for `IAsyncOperation`.
const _asyncOperationTypeArgKinds = <TypeArgKind>[
  TypeArgKind.bool_, TypeArgKind.double, TypeArgKind.float, TypeArgKind.guid, //
  TypeArgKind.int16, TypeArgKind.int32, TypeArgKind.int64, //
  TypeArgKind.loadMoreItemsResult, TypeArgKind.nullableInspectable, //
  TypeArgKind.nullableObject, TypeArgKind.nullableUri, TypeArgKind.string, //
  TypeArgKind.uint8, TypeArgKind.uint16, TypeArgKind.uint32, //
  TypeArgKind.uint64, TypeArgKind.winrtEnum, TypeArgKind.winrtFlagsEnum
];

/// The common type argument kind pairs for `IKeyValuePair`, `IMap`, and
/// `IMapView`.
const _mapTypeArgKindPairs = <(TypeArgKind, TypeArgKind)>[
  (TypeArgKind.guid, TypeArgKind.nullableInspectable),
  (TypeArgKind.guid, TypeArgKind.nullableObject),
  (TypeArgKind.int16, TypeArgKind.nullableInspectable),
  (TypeArgKind.int32, TypeArgKind.nullableInspectable),
  (TypeArgKind.int64, TypeArgKind.nullableInspectable),
  (TypeArgKind.string, TypeArgKind.nullableInspectable),
  (TypeArgKind.string, TypeArgKind.nullableObject),
  (TypeArgKind.string, TypeArgKind.string),
  (TypeArgKind.string, TypeArgKind.winrtEnum),
  (TypeArgKind.string, TypeArgKind.winrtFlagsEnum),
  (TypeArgKind.uint8, TypeArgKind.nullableInspectable),
  (TypeArgKind.uint16, TypeArgKind.nullableInspectable),
  (TypeArgKind.uint32, TypeArgKind.nullableInspectable),
  (TypeArgKind.uint64, TypeArgKind.nullableInspectable),
  (TypeArgKind.winrtEnum, TypeArgKind.nullableInspectable),
  (TypeArgKind.winrtFlagsEnum, TypeArgKind.nullableInspectable)
];

/// The type argument kinds for `IReference`.
const _referenceTypeArgKinds = <TypeArgKind>[
  TypeArgKind.nullableBasicGeoposition,
  TypeArgKind.nullableBool,
  TypeArgKind.nullableColor,
  TypeArgKind.nullableDateTime,
  TypeArgKind.nullableDisplayPresentationRate,
  TypeArgKind.nullableDouble,
  TypeArgKind.nullableDuration,
  TypeArgKind.nullableFloat,
  TypeArgKind.nullableGuid,
  TypeArgKind.nullableHolographicStereoTransform,
  TypeArgKind.nullableInt16,
  TypeArgKind.nullableInt32,
  TypeArgKind.nullableInt64,
  TypeArgKind.nullableMatrix4x4,
  TypeArgKind.nullableMseTimeRange,
  TypeArgKind.nullablePoint,
  TypeArgKind.nullableQuaternion,
  TypeArgKind.nullableRect,
  TypeArgKind.nullableSize,
  TypeArgKind.nullableSizeInt32,
  TypeArgKind.nullableSpatialBoundingBox,
  TypeArgKind.nullableSpatialBoundingFrustum,
  TypeArgKind.nullableSpatialBoundingOrientedBox,
  TypeArgKind.nullableSpatialRay,
  TypeArgKind.nullableString,
  TypeArgKind.nullableUint8,
  TypeArgKind.nullableUint16,
  TypeArgKind.nullableUint32,
  TypeArgKind.nullableUint64,
  TypeArgKind.nullableVector2,
  TypeArgKind.nullableVector3,
  TypeArgKind.nullableWhiteBalanceGain,
  TypeArgKind.winrtEnum,
  TypeArgKind.winrtFlagsEnum
];

/// The common type argument kinds for `IIterator`, `IVector`, and
/// `IVectorView`.
const _vectorTypeArgKinds = <TypeArgKind>[
  TypeArgKind.accessListEntry, TypeArgKind.backgroundTransferFileRange, //
  TypeArgKind.basicGeoposition, TypeArgKind.bool_, TypeArgKind.color, //
  TypeArgKind.double, TypeArgKind.float, TypeArgKind.gpioChangeRecord, //
  TypeArgKind.guid, TypeArgKind.int16, TypeArgKind.int32, TypeArgKind.int64, //
  TypeArgKind.mediaTimeRange, TypeArgKind.mseTimeRange, TypeArgKind.nitRange, //
  TypeArgKind.nullableInspectable, TypeArgKind.nullableObject, //
  TypeArgKind.nullableUri, TypeArgKind.point, TypeArgKind.pointerDeviceUsage, //
  TypeArgKind.rect, TypeArgKind.rectInt32, TypeArgKind.size, //
  TypeArgKind.sizeUint32, TypeArgKind.sortEntry, //
  TypeArgKind.storePackageUpdateStatus, TypeArgKind.string, //
  TypeArgKind.textSegment, TypeArgKind.uint8, TypeArgKind.uint16, //
  TypeArgKind.uint32, TypeArgKind.uint64, TypeArgKind.windowId, //
  TypeArgKind.winrtEnum, TypeArgKind.winrtFlagsEnum
];
