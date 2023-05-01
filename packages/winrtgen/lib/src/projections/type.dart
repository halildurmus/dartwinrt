// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../exception/exception.dart';
import '../models/models.dart';
import '../utilities/utilities.dart';

final class TypeTuple {
  const TypeTuple(this.nativeType, this.dartType, {this.attribute});

  /// The type, as represented in the native function (e.g. `Int64`)
  final String nativeType;

  /// The type, as represented in the Dart function (e.g. `int`)
  final String dartType;

  /// The type, as represented as a struct attribute (e.g. `@Int64()`)
  final String? attribute;
}

const baseNativeMapping = <BaseType, TypeTuple>{
  BaseType.booleanType: TypeTuple('Bool', 'bool', attribute: '@Bool()'),
  BaseType.charType: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.doubleType: TypeTuple('Double', 'double', attribute: '@Double()'),
  BaseType.floatType: TypeTuple('Float', 'double', attribute: '@Float()'),
  BaseType.int8Type: TypeTuple('Int8', 'int', attribute: '@Int8()'),
  BaseType.uint8Type: TypeTuple('Uint8', 'int', attribute: '@Uint8()'),
  BaseType.int16Type: TypeTuple('Int16', 'int', attribute: '@Int16()'),
  BaseType.uint16Type: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.int32Type: TypeTuple('Int32', 'int', attribute: '@Int32()'),
  BaseType.uint32Type: TypeTuple('Uint32', 'int', attribute: '@Uint32()'),
  BaseType.int64Type: TypeTuple('Int64', 'int', attribute: '@Int64()'),
  BaseType.uint64Type: TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  BaseType.intPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.uintPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.voidType: TypeTuple('Void', 'void'),
};

const specialTypes = <String, TypeTuple>{
  'System.Guid': TypeTuple('GUID', 'GUID'),
  'Windows.Foundation.DateTime':
      TypeTuple('Int64', 'int', attribute: '@Int64()'),
  'Windows.Foundation.EventRegistrationToken':
      TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  'Windows.Foundation.HResult':
      TypeTuple('Int32', 'int', attribute: '@Int32()'),
  'Windows.Foundation.TimeSpan':
      TypeTuple('Int64', 'int', attribute: '@Int64()'),
};

final class TypeProjection {
  TypeProjection(TypeIdentifier ti, {this.isParameter = false})
      : typeIdentifier =
            ti.isGenericType ? ti.copyWith(name: ti.shortName) : ti;

  final TypeIdentifier typeIdentifier;

  /// Whether this type belongs to a parameter.
  final bool isParameter;

  /// The type, as represented in the native function (e.g. `Int64`)
  String get nativeType => projection.nativeType;

  /// The type, as represented in the Dart function (e.g. `int`)
  String get dartType => projection.dartType;

  /// The type, as represented as a struct attribute (e.g. `@Int64()`)
  String get attribute => projection.attribute ?? '';

  /// The projection type of this type (e.g. `ProjectionType.dateTime`).
  ProjectionType get projectionType => ProjectionType.from(this);

  // Type matcher properties

  bool get isAsyncAction =>
      typeIdentifier.name == 'Windows.Foundation.IAsyncAction' ||
      (typeIdentifier.type?.interfaces
              .any((interface) => interface.name.endsWith('IAsyncAction')) ??
          false);

  bool get isAsyncOperation =>
      (typeIdentifier.type?.name.endsWith('IAsyncOperation`1') ?? false) ||
      (typeIdentifier.type?.interfaces.any((interface) =>
              interface.typeSpec?.name.endsWith('IAsyncOperation`1') ??
              false) ??
          false);

  bool get isBaseType =>
      baseNativeMapping.keys.contains(typeIdentifier.baseType);

  bool get isClassVariableType => typeIdentifier.isClassVariableType;

  bool get isDartPrimitive => switch (dartType) {
        'bool' || 'double' || 'void' => true,
        'int' when !isWinRTEnum => true,
        _ => false
      };

  bool get isDateTime => typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isGenericType => typeIdentifier.isGenericType;

  bool get isGuid => dartType == 'GUID';

  bool get isMap => typeIdentifier.type?.name.endsWith('IMap`2') ?? false;

  bool get isMapView =>
      typeIdentifier.type?.name.endsWith('IMapView`2') ?? false;

  bool get isObjectType => typeIdentifier.isObjectType;

  bool get isPointer => typeIdentifier.isPointerType;

  bool get isReference =>
      typeIdentifier.type?.name.endsWith('IReference`1') ?? false;

  bool get isReferenceType => typeIdentifier.isReferenceType;

  bool get isSimpleArray => typeIdentifier.isSimpleArrayType;

  bool get isSpecialType => specialTypes.keys.contains(typeIdentifier.name);

  bool get isString => typeIdentifier.isStringType;

  bool get isTimeSpan => typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  bool get isUri => typeIdentifier.name == 'Windows.Foundation.Uri';

  bool get isValueType => typeIdentifier.isValueType;

  bool get isVector => typeIdentifier.type?.name.endsWith('IVector`1') ?? false;

  bool get isVectorView =>
      typeIdentifier.type?.name.endsWith('IVectorView`1') ?? false;

  bool get isVoid => dartType == 'void';

  bool get isWinRT => typeIdentifier.type?.isWindowsRuntime ?? false;

  bool get isWinRTClass => isWinRT && (typeIdentifier.type?.isClass ?? false);

  bool get isWinRTDelegate =>
      isWinRT && (typeIdentifier.type?.isDelegate ?? false);

  bool get isWinRTEnum => isWinRT && (typeIdentifier.type?.isEnum ?? false);

  bool get isWinRTInterface =>
      isWinRT && (typeIdentifier.type?.isInterface ?? false);

  bool get isWinRTObject => isWinRTClass || isWinRTInterface || isObjectType;

  bool get isWinRTStruct => isWinRT && (typeIdentifier.type?.isStruct ?? false);

  TypeTuple unwrapEnum() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw WinRTGenException('Enum $typeIdentifier is missing value__ field');
    }

    final typeTuple = baseNativeMapping[fieldType.baseType];
    if (typeTuple == null) {
      throw WinRTGenException(
          'Enum $typeIdentifier has unsupported underlying type');
    }

    return typeTuple;
  }

  /// Takes a type such as `pointerTypeModifier` -> `BaseType.Uint32` and
  /// converts it to `Pointer<Uint32>`.
  TypeTuple unwrapPointerType() {
    if (typeIdentifier.typeArg case final typeArg?) {
      final typeProjection = TypeProjection(typeArg);
      final type = 'Pointer<${typeProjection.nativeType}>';
      return TypeTuple(type, type);
    }
    throw WinRTGenException('Pointer type missing for $typeIdentifier.');
  }

  TypeTuple unwrapReferenceType() {
    final typeArg = dereferenceType(typeIdentifier);
    return switch (typeArg.baseType) {
      BaseType.classTypeModifier =>
        const TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>'),
      // This form is used in WinRT methods when the caller receives an array
      // that was allocated by the method. In this style, the array size
      // parameter and the array parameter are both out parameters.
      // Additionally, the array parameter is passed by reference (that is,
      // ArrayType**, rather than ArrayType*).
      BaseType.simpleArrayType => TypeTuple(
          'Pointer<${unwrapSimpleArrayType(typeArg).nativeType}>',
          'Pointer<${unwrapSimpleArrayType(typeArg).dartType}>'),
      BaseType.uint32Type =>
        const TypeTuple('Pointer<Uint32>', 'Pointer<Uint32>'),
      _ => throw WinRTGenException(
          'Could not unwrap reference type of $typeIdentifier')
    };
  }

  /// Takes a type such as `simpleArrayType` -> `BaseType.Uint8` and converts
  /// it to `Pointer<Uint8>`.
  TypeTuple unwrapSimpleArrayType(TypeIdentifier typeIdentifier) {
    final typeArg = dereferenceType(typeIdentifier);
    final typeArgNativeType = TypeProjection(typeArg).nativeType;
    final type = wrapWithPointer(typeArgNativeType);
    return TypeTuple(type, type);
  }

  /// Takes a type such as `valueTypeModifier` ->
  /// `Windows.Devices.Geolocation.BasicGeoposition` and converts it to
  /// `NativeBasicGeoposition`.
  TypeTuple unwrapStruct() {
    final structType = typeIdentifier.type;
    if (structType == null) {
      throw WinRTGenException('Struct type missing for $typeIdentifier.');
    }

    final structName = 'Native${structType.shortName}';
    return TypeTuple(structName, structName);
  }

  TypeTuple? _projection;

  TypeTuple get projection {
    var projection = _projection;
    if (projection != null) return projection;
    projection = _projection = projectType();
    return projection;
  }

  TypeArg get genericTypeArg {
    assert(typeIdentifier.isClassVariableType);
    return TypeArg.from(typeIdentifier.name);
  }

  TypeTuple unwrapGenericTypeArg() {
    if (genericTypeArg.isEnum) {
      return baseNativeMapping[genericTypeArg == TypeArg.winrtEnum
          ? BaseType.int32Type
          : BaseType.uint32Type]!;
    }

    final type = isParameter ? 'VTablePointer' : 'Pointer<COMObject>';
    return TypeTuple(type, type);
  }

  TypeTuple projectType() {
    // Could be an intrinsic base type (e.g. Int32)
    if (isBaseType) return baseNativeMapping[typeIdentifier.baseType]!;

    // Could be a GUID or other special type that we want to custom-map
    if (isSpecialType) return specialTypes[typeIdentifier.name]!;

    // Could be a WinRT enum like AsyncStatus
    if (isWinRTEnum) return unwrapEnum();

    if (isPointer) return unwrapPointerType();
    if (isReferenceType) return unwrapReferenceType();
    if (isSimpleArray) return unwrapSimpleArrayType(typeIdentifier);

    // Strings in WinRT are defined as HSTRING which corresponding to IntPtr
    if (isString) return baseNativeMapping[BaseType.intPtrType]!;

    // Could be a WinRT struct like BasicGeoposition
    if (isWinRTStruct) return unwrapStruct();

    // Could be a WinRT delegate (e.g. AsyncActionCompletedHandler), class (e.g.
    // Calendar), interface (e.g. ICalendar), or boxed value
    if (isWinRTDelegate || isWinRTObject) {
      // VTablePointer is a type alias that represents a Pointer to the
      // COM v-table (i.e. Pointer<Pointer<IntPtr>>).
      final type = isParameter ? 'VTablePointer' : 'Pointer<COMObject>';
      return TypeTuple(type, type);
    }

    // Handle generic type argument (e.g. TypeArg.inspectable)
    if (isClassVariableType) return unwrapGenericTypeArg();

    throw WinRTGenException('Type information missing for $typeIdentifier.');
  }

  @override
  String toString() => 'TypeProjection($typeIdentifier)';
}
