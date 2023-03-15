// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../models/models.dart';

/// The common type arguments for `IKeyValuePair`, `IMap`, and `IMapView`.
final _mapTypeArgs = <TypeArgPair>[
  TypeArgPair(TypeArg.guid, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.guid, TypeArg.nullableObject),
  TypeArgPair(TypeArg.int16, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.int32, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.int64, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.string, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.string, TypeArg.nullableObject),
  TypeArgPair(TypeArg.string, TypeArg.string),
  TypeArgPair(TypeArg.string, TypeArg.winrtEnum),
  TypeArgPair(TypeArg.string, TypeArg.winrtFlagsEnum),
  TypeArgPair(TypeArg.uint8, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.uint16, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.uint32, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.uint64, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.winrtEnum, TypeArg.nullableInspectable),
  TypeArgPair(TypeArg.winrtFlagsEnum, TypeArg.nullableInspectable)
];

/// The common type arguments for `IIterator`, `IVector`, and `IVectorView`.
final _vectorTypeArgs = <TypeArg>[
  TypeArg.bool_, TypeArg.guid, TypeArg.inspectable, TypeArg.int16, //
  TypeArg.int32, TypeArg.int64, TypeArg.string, TypeArg.uint8, //
  TypeArg.uint16, TypeArg.uint32, TypeArg.uint64, TypeArg.uri, //
  TypeArg.winrtEnum, TypeArg.winrtFlagsEnum
];

/// WinRT generic types with their [TypeArg]s.
///
/// Used to generate private concrete classes for the abstract WinRT generic
/// classes.
final genericTypesWithTypeArgs = <GenericType>[
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
      'Windows.Foundation.Collections.IKeyValuePair`2', _mapTypeArgs),
  GenericTypeWithTwoTypeArgs(
      'Windows.Foundation.Collections.IMap`2', _mapTypeArgs),
  GenericTypeWithTwoTypeArgs(
      'Windows.Foundation.Collections.IMapView`2', _mapTypeArgs),
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.Collections.IVector`1', _vectorTypeArgs),
  GenericTypeWithOneTypeArg(
      'Windows.Foundation.Collections.IVectorView`1', _vectorTypeArgs),
];
