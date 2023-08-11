// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import 'type_arg_kind.dart';
import 'winrt_metadata_store.dart';

/// Represents a WinRT generic type.
sealed class GenericType {
  const GenericType(this.type);

  /// The WinRT generic type (e.g., Windows.Foundation.IReference`1).
  final String type;

  /// Returns all the generic types.
  static List<GenericType> get all => [
        iasyncOperation,
        iiterator,
        ikeyValuePair,
        imap,
        imapView,
        ireference,
        ivector,
        ivectorView
      ];

  /// The `IAsyncOperation` generic type.
  static const iasyncOperation = GenericTypeWithOneTypeArg._(
      'Windows.Foundation.IAsyncOperation`1', _asyncOperationTypeArgKinds);

  /// The `IIterator` generic type.
  static const iiterator = GenericTypeWithOneTypeArg._(
      'Windows.Foundation.Collections.IIterator`1', _vectorTypeArgKinds);

  /// The `IKeyValuePair` generic type.
  static const ikeyValuePair = GenericTypeWithTwoTypeArgs._(
      'Windows.Foundation.Collections.IKeyValuePair`2', _mapTypeArgKindPairs);

  /// The `IMap` generic type.
  static const imap = GenericTypeWithTwoTypeArgs._(
      'Windows.Foundation.Collections.IMap`2', _mapTypeArgKindPairs);

  /// The `IMapView` generic type.
  static const imapView = GenericTypeWithTwoTypeArgs._(
      'Windows.Foundation.Collections.IMapView`2', _mapTypeArgKindPairs);

  /// The `IReference` generic type.
  static const ireference = GenericTypeWithOneTypeArg._(
      'Windows.Foundation.IReference`1', _referenceTypeArgKinds);

  /// The `IVector` generic type.
  static const ivector = GenericTypeWithOneTypeArg._(
      'Windows.Foundation.Collections.IVector`1', _vectorTypeArgKinds);

  /// The `IVectorView` generic type.
  static const ivectorView = GenericTypeWithOneTypeArg._(
      'Windows.Foundation.Collections.IVectorView`1', _vectorTypeArgKinds);

  /// The short name of the type (e.g., `IReference`).
  String get shortName => type.stripGenerics().lastComponent;

  @override
  String toString() => shortName;
}

/// Represents a WinRT generic type with one type argument (e.g.,
/// Windows.Foundation.IAsyncOperation`1).
final class GenericTypeWithOneTypeArg extends GenericType {
  const GenericTypeWithOneTypeArg._(super.type, this.typeArgKinds);

  /// The [TypeArgKind]s for this generic type (e.g., `TypeArgKind.bool_`,
  /// `TypeArgKind.string`).
  final Set<TypeArgKind> typeArgKinds;

  /// The [TypeArgKind]s for this generic type that are found in the Metadata.
  Set<TypeArgKind> get typeArgKindsInMetadata {
    final typeArgKinds = <TypeArgKind>{};

    for (final Method(:returnType) in WinRTMetadataStore.methods) {
      final Parameter(:isClassVariableType, :isGenericType) = returnType;
      if (isClassVariableType) continue;

      final typeIdentifier =
          returnType.typeIdentifier.name != type && isGenericType
              ? returnType.typeIdentifier.dereference()
              : returnType.typeIdentifier;

      if (typeIdentifier.name == type) {
        final typeArg = typeIdentifier.typeArg!;
        if (typeArg.isClassVariableType) continue;

        final isNullable = shortName == 'IReference' ||
            typeArg.isClassType ||
            typeArg.isGenericType ||
            typeArg.isObjectType;
        final typeArgKind =
            TypeArgKind.fromTypeIdentifier(typeArg, isNullable: isNullable);
        typeArgKinds.add(typeArgKind);
      }
    }

    return typeArgKinds;
  }
}

/// Represents a WinRT generic type with two type arguments (e.g.,
/// Windows.Foundation.Collections.IMap`2).
final class GenericTypeWithTwoTypeArgs extends GenericType {
  const GenericTypeWithTwoTypeArgs._(super.type, this.typeArgKindPairs);

  /// The [TypeArgKind] pairs for this generic type (e.g.,
  /// `(TypeArgKind.string, TypeArgKind.string)`,
  /// `(TypeArgKind.string, TypeArgKind.nullableObject)`).
  final Set<(TypeArgKind, TypeArgKind)> typeArgKindPairs;

  /// The [TypeArgKind] pairs for this generic type that are found in the
  /// Metadata.
  Set<(TypeArgKind, TypeArgKind)> get typeArgKindPairsInMetadata {
    final typeArgKindPairs = <(TypeArgKind, TypeArgKind)>{};

    for (final method in WinRTMetadataStore.methods) {
      final paramsAndReturnType = [...method.parameters, method.returnType];

      for (final param in paramsAndReturnType) {
        if (param.isClassVariableType) continue;

        final typeIdentifier = param.typeIdentifier.name != type &&
                (param.isGenericType || param.isReferenceType)
            ? param.typeIdentifier.dereference()
            : param.typeIdentifier;

        if (typeIdentifier.name == type) {
          final [typeArg1, typeArg2] = typeIdentifier.typeArgs;
          if (typeArg1.isClassVariableType || typeArg2.isClassVariableType) {
            continue;
          }

          final typeArg1IsNullable = false;
          final typeArgKind1 = TypeArgKind.fromTypeIdentifier(typeArg1,
              isNullable: typeArg1IsNullable);
          final typeArg2IsNullable = typeArg2.isClassType ||
              typeArg2.isGenericType ||
              typeArg2.isObjectType;
          final typeArgKind2 = TypeArgKind.fromTypeIdentifier(typeArg2,
              isNullable: typeArg2IsNullable);
          typeArgKindPairs.add((typeArgKind1, typeArgKind2));
        }
      }
    }

    return typeArgKindPairs;
  }
}

/// The type argument kinds for `IAsyncOperation`.
const _asyncOperationTypeArgKinds = <TypeArgKind>{
  TypeArgKind.bool_, TypeArgKind.double, TypeArgKind.float, TypeArgKind.guid, //
  TypeArgKind.int16, TypeArgKind.int32, TypeArgKind.int64, //
  TypeArgKind.loadMoreItemsResult, TypeArgKind.nullableInspectable, //
  TypeArgKind.nullableObject, TypeArgKind.nullableUri, TypeArgKind.string, //
  TypeArgKind.uint8, TypeArgKind.uint16, TypeArgKind.uint32, //
  TypeArgKind.uint64, TypeArgKind.winrtEnum, TypeArgKind.winrtFlagsEnum
};

/// The common type argument kind pairs for `IKeyValuePair`, `IMap`, and
/// `IMapView`.
const _mapTypeArgKindPairs = <(TypeArgKind, TypeArgKind)>{
  (TypeArgKind.guid, TypeArgKind.nullableInspectable),
  (TypeArgKind.guid, TypeArgKind.nullableObject),
  (TypeArgKind.int16, TypeArgKind.nullableInspectable),
  (TypeArgKind.int32, TypeArgKind.nullableInspectable),
  (TypeArgKind.int64, TypeArgKind.nullableInspectable),
  (TypeArgKind.object, TypeArgKind.nullableObject),
  (TypeArgKind.string, TypeArgKind.nullableInspectable),
  (TypeArgKind.string, TypeArgKind.nullableObject),
  (TypeArgKind.string, TypeArgKind.string),
  (TypeArgKind.string, TypeArgKind.winrtEnum),
  (TypeArgKind.string, TypeArgKind.winrtFlagsEnum),
  (TypeArgKind.uint8, TypeArgKind.nullableInspectable),
  (TypeArgKind.uint16, TypeArgKind.nullableInspectable),
  (TypeArgKind.uint32, TypeArgKind.nullableInspectable),
  (TypeArgKind.uint64, TypeArgKind.nullableInspectable),
  (TypeArgKind.uri, TypeArgKind.string),
  (TypeArgKind.winrtEnum, TypeArgKind.nullableInspectable),
  (TypeArgKind.winrtFlagsEnum, TypeArgKind.nullableInspectable)
};

/// The type argument kinds for `IReference`.
const _referenceTypeArgKinds = <TypeArgKind>{
  TypeArgKind.nullableBasicGeoposition, TypeArgKind.nullableBool, //
  TypeArgKind.nullableColor, TypeArgKind.nullableDateTime, //
  TypeArgKind.nullableDisplayPresentationRate, TypeArgKind.nullableDouble, //
  TypeArgKind.nullableDuration, TypeArgKind.nullableFloat, //
  TypeArgKind.nullableGuid, TypeArgKind.nullableHolographicStereoTransform, //
  TypeArgKind.nullableInt16, TypeArgKind.nullableInt32, //
  TypeArgKind.nullableInt64, TypeArgKind.nullableMatrix4x4, //
  TypeArgKind.nullableMseTimeRange, TypeArgKind.nullablePoint, //
  TypeArgKind.nullableQuaternion, TypeArgKind.nullableRect, //
  TypeArgKind.nullableSize, TypeArgKind.nullableSizeInt32, //
  TypeArgKind.nullableSpatialBoundingBox, //
  TypeArgKind.nullableSpatialBoundingFrustum, //
  TypeArgKind.nullableSpatialBoundingOrientedBox, //
  TypeArgKind.nullableSpatialRay, TypeArgKind.nullableString, //
  TypeArgKind.nullableUint8, TypeArgKind.nullableUint16, //
  TypeArgKind.nullableUint32, TypeArgKind.nullableUint64, //
  TypeArgKind.nullableVector2, TypeArgKind.nullableVector3, //
  TypeArgKind.nullableWhiteBalanceGain, TypeArgKind.winrtEnum, //
  TypeArgKind.winrtFlagsEnum
};

/// The common type argument kinds for `IIterator`, `IVector`, and
/// `IVectorView`.
const _vectorTypeArgKinds = <TypeArgKind>{
  TypeArgKind.accessListEntry, TypeArgKind.backgroundTransferFileRange, //
  TypeArgKind.basicGeoposition, TypeArgKind.bool_, TypeArgKind.color, //
  TypeArgKind.dateTime, TypeArgKind.double, TypeArgKind.duration, //
  TypeArgKind.float, TypeArgKind.gpioChangeRecord, TypeArgKind.guid, //
  TypeArgKind.int16, TypeArgKind.int32, TypeArgKind.int64, //
  TypeArgKind.mediaTimeRange, TypeArgKind.mseTimeRange, TypeArgKind.nitRange, //
  TypeArgKind.nullableInspectable, TypeArgKind.nullableObject, //
  TypeArgKind.nullableUri, TypeArgKind.point, TypeArgKind.pointerDeviceUsage, //
  TypeArgKind.rect, TypeArgKind.rectInt32, TypeArgKind.size, //
  TypeArgKind.sizeUint32, TypeArgKind.sortEntry, //
  TypeArgKind.storePackageUpdateStatus, TypeArgKind.string, //
  TypeArgKind.textRange, TypeArgKind.textSegment, TypeArgKind.uint8, //
  TypeArgKind.uint16, TypeArgKind.uint32, TypeArgKind.uint64, //
  TypeArgKind.windowId, TypeArgKind.winrtEnum, TypeArgKind.winrtFlagsEnum
};
