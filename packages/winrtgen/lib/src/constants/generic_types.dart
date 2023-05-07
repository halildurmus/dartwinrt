// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../models/models.dart';

/// WinRT generic types with their [TypeArg]s.
///
/// Used to generate private concrete classes for the abstract WinRT generic
/// classes.
const genericTypes = <GenericType>[
  GenericTypeWithOneTypeArg('Windows.Foundation.IAsyncOperation`1', [
    TypeArg.bool_, TypeArg.guid, TypeArg.int16, TypeArg.int32, TypeArg.int64, //
    TypeArg.nullableInspectable, TypeArg.nullableObject, TypeArg.nullableUri, //
    TypeArg.string, TypeArg.uint8, TypeArg.uint16, TypeArg.uint32, //
    TypeArg.uint64, TypeArg.winrtEnum, TypeArg.winrtFlagsEnum
  ]),
  GenericTypeWithOneTypeArg('Windows.Foundation.IReference`1', [
    TypeArg.nullableBool, TypeArg.nullableDateTime, TypeArg.nullableDouble, //
    TypeArg.nullableDuration, TypeArg.nullableFloat, TypeArg.nullableGuid, //
    TypeArg.nullableInt16, TypeArg.nullableInt32, TypeArg.nullableInt64, //
    TypeArg.nullablePoint, TypeArg.nullableRect, TypeArg.nullableSize, //
    TypeArg.nullableString, TypeArg.nullableUint8, TypeArg.nullableUint16, //
    TypeArg.nullableUint32, TypeArg.nullableUint64, TypeArg.winrtEnum, //
    TypeArg.winrtFlagsEnum
  ]),
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.Collections.IIterator`1', _vectorTypeArgs),
  GenericTypeWithTwoTypeArgs(
      'Windows.Foundation.Collections.IKeyValuePair`2', _mapTypeArgPairs),
  GenericTypeWithTwoTypeArgs(
      'Windows.Foundation.Collections.IMap`2', _mapTypeArgPairs),
  GenericTypeWithTwoTypeArgs(
      'Windows.Foundation.Collections.IMapView`2', _mapTypeArgPairs),
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.Collections.IVector`1', _vectorTypeArgs),
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.Collections.IVectorView`1', _vectorTypeArgs),
];

/// The common type argument pairs for `IKeyValuePair`, `IMap`, and `IMapView`.
const _mapTypeArgPairs = <(TypeArg, TypeArg)>[
  (TypeArg.guid, TypeArg.nullableInspectable),
  (TypeArg.guid, TypeArg.nullableObject),
  (TypeArg.int16, TypeArg.nullableInspectable),
  (TypeArg.int32, TypeArg.nullableInspectable),
  (TypeArg.int64, TypeArg.nullableInspectable),
  (TypeArg.string, TypeArg.nullableInspectable),
  (TypeArg.string, TypeArg.nullableObject),
  (TypeArg.string, TypeArg.string),
  (TypeArg.string, TypeArg.winrtEnum),
  (TypeArg.string, TypeArg.winrtFlagsEnum),
  (TypeArg.uint8, TypeArg.nullableInspectable),
  (TypeArg.uint16, TypeArg.nullableInspectable),
  (TypeArg.uint32, TypeArg.nullableInspectable),
  (TypeArg.uint64, TypeArg.nullableInspectable),
  (TypeArg.winrtEnum, TypeArg.nullableInspectable),
  (TypeArg.winrtFlagsEnum, TypeArg.nullableInspectable)
];

/// The common type arguments for `IIterator`, `IVector`, and `IVectorView`.
const _vectorTypeArgs = <TypeArg>[
  TypeArg.bool_, TypeArg.guid, TypeArg.inspectable, TypeArg.int16, //
  TypeArg.int32, TypeArg.int64, TypeArg.string, TypeArg.uint8, //
  TypeArg.uint16, TypeArg.uint32, TypeArg.uint64, TypeArg.uri, //
  TypeArg.winrtEnum, TypeArg.winrtFlagsEnum
];
