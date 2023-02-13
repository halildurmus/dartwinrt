// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../models/models.dart';
import '../utils.dart';

class TypeTuple {
  const TypeTuple(this.nativeType, this.dartType, {this.attribute});

  /// The type, as represented in the native function (e.g. `Uint64`)
  final String nativeType;

  /// The type, as represented in the Dart function (e.g. `int`)
  final String dartType;

  /// The type, as represented as a struct attribute (e.g. `@Uint64()`)
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
      TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  'Windows.Foundation.EventRegistrationToken':
      TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  'Windows.Foundation.HResult':
      TypeTuple('Int32', 'int', attribute: '@Int32()'),
  'Windows.Foundation.TimeSpan':
      TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
};

class TypeProjection {
  TypeProjection(TypeIdentifier ti, {this.isParameter = false})
      : typeIdentifier = ti.baseType == BaseType.genericTypeModifier
            ? ti.copyWith(name: ti.shortName)
            : ti;

  final TypeIdentifier typeIdentifier;

  /// Whether this type belongs to a parameter.
  final bool isParameter;

  /// The type, as represented in the native function (e.g. `Uint64`)
  String get nativeType => projection.nativeType;

  /// The type, as represented in the Dart function (e.g. `int`)
  String get dartType => projection.dartType;

  /// The type, as represented as a struct attribute (e.g. `@Uint64()`)
  String get attribute => projection.attribute ?? '';

  /// The projection type of this type (e.g. `ProjectionType.dateTime`).
  ProjectionType get projectionType => ProjectionType.from(this);

  // Type matcher properties

  bool get isAsyncAction =>
      typeIdentifier.name == 'Windows.Foundation.IAsyncAction';

  bool get isAsyncOperation =>
      typeIdentifier.type?.name.endsWith('IAsyncOperation`1') ?? false;

  bool get isBaseType =>
      baseNativeMapping.keys.contains(typeIdentifier.baseType);

  bool get isDartPrimitive =>
      ['bool', 'double', 'int', 'void'].contains(dartType);

  bool get isDateTime => typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isGenericType =>
      typeIdentifier.baseType == BaseType.genericTypeModifier;

  bool get isGuid => dartType == 'GUID';

  bool get isMap => typeIdentifier.type?.name.endsWith('IMap`2') ?? false;

  bool get isMapView =>
      typeIdentifier.type?.name.endsWith('IMapView`2') ?? false;

  bool get isObject => typeIdentifier.baseType == BaseType.objectType;

  bool get isPointer => typeIdentifier.baseType == BaseType.pointerTypeModifier;

  bool get isReference =>
      typeIdentifier.type?.name.endsWith('IReference`1') ?? false;

  bool get isReferenceType =>
      typeIdentifier.baseType == BaseType.referenceTypeModifier;

  bool get isSimpleArray => typeIdentifier.baseType == BaseType.simpleArrayType;

  bool get isSpecialType => specialTypes.keys.contains(typeIdentifier.name);

  bool get isString => typeIdentifier.baseType == BaseType.stringType;

  bool get isTimeSpan => typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  bool get isUri => typeIdentifier.name == 'Windows.Foundation.Uri';

  bool get isValueType => typeIdentifier.baseType == BaseType.valueTypeModifier;

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

  bool get isWinRTStruct => isWinRT && (typeIdentifier.type?.isStruct ?? false);

  TypeTuple unwrapDelegate() {
    final delegateName = outerType(typeIdentifier.shortName);
    return TypeTuple('Pointer<NativeFunction<$delegateName>>',
        'Pointer<NativeFunction<$delegateName>>');
  }

  TypeTuple unwrapEnum() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw Exception('Enum $typeIdentifier is missing value__ field');
    }

    final typeTuple = baseNativeMapping[fieldType.baseType];
    if (typeTuple == null) {
      throw Exception('Enum $typeIdentifier has unsupported underlying type');
    }

    return typeTuple;
  }

  /// Takes a type such as `pointerTypeModifier` -> `BaseType.Uint32` and
  /// converts it to `Pointer<Uint32>`.
  TypeTuple unwrapPointerType() {
    final typeArg = typeIdentifier.typeArg;
    if (typeArg == null) {
      throw Exception('Pointer type missing for $typeIdentifier.');
    }

    final typeProjection = TypeProjection(typeIdentifier.typeArg!);
    final type = 'Pointer<${typeProjection.nativeType}>';
    return TypeTuple(type, type);
  }

  TypeTuple unwrapReferenceType() {
    final baseType = typeIdentifier.typeArg?.baseType;
    switch (baseType) {
      case BaseType.classTypeModifier:
        return const TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>');
      case BaseType.simpleArrayType:
        // This form is used in WinRT methods when the caller receives an array
        // that was allocated by the method. In this style, the array size
        // parameter and the array parameter are both out parameters.
        // Additionally, the array parameter is passed by reference (that is,
        // ArrayType**, rather than ArrayType*).
        final refTuple = unwrapSimpleArrayType(typeIdentifier.typeArg!);
        return TypeTuple(
            'Pointer<${refTuple.nativeType}>', 'Pointer<${refTuple.dartType}>');
      // For example, `bool IndexOf(..., [Out] uint32_t & index)`.
      case BaseType.uint32Type:
        return const TypeTuple('Pointer<Uint32>', 'Pointer<Uint32>');
      default:
        throw Exception('Could not unwrap reference type of $typeIdentifier');
    }
  }

  /// Takes a type such as `simpleArrayType` -> `BaseType.Uint8` and converts
  /// it to `Pointer<Uint8>`.
  TypeTuple unwrapSimpleArrayType(TypeIdentifier typeIdentifier) {
    final typeArg = typeIdentifier.typeArg;
    if (typeArg == null) {
      throw Exception('Array type missing for $typeIdentifier.');
    }

    final nativeType = TypeProjection(typeArg).nativeType;
    // If it is already wrapped with 'Pointer', no need to wrap it again.
    if (nativeType == 'Pointer<COMObject>') {
      return TypeTuple(nativeType, nativeType);
    }

    final type = 'Pointer<$nativeType>';
    return TypeTuple(type, type);
  }

  /// Takes a type such as `valueTypeModifier` ->
  /// `Windows.Devices.Geolocation.BasicGeoposition` and converts it to
  /// `BasicGeoposition`.
  TypeTuple unwrapStruct() {
    final structType = typeIdentifier.type;
    if (structType == null) {
      throw Exception('Struct type missing for $typeIdentifier.');
    }

    final structName = structType.shortName;
    return TypeTuple(structName, structName);
  }

  TypeTuple? _projection;

  TypeTuple get projection {
    _projection ??= projectType();
    return _projection!;
  }

  TypeTuple projectType() {
    // Could be an intrinsic base type (e.g. Int32)
    if (isBaseType) return baseNativeMapping[typeIdentifier.baseType]!;

    // Could be a GUID or other special type that we want to custom-map
    if (isSpecialType) return specialTypes[typeIdentifier.name]!;

    // Could be a WinRT delegate like AsyncActionCompletedHandler
    if (isWinRTDelegate) return unwrapDelegate();

    // Could be a WinRT enum like AsyncStatus
    if (isWinRTEnum) return unwrapEnum();

    if (isPointer) return unwrapPointerType();
    if (isReferenceType) return unwrapReferenceType();
    if (isSimpleArray) return unwrapSimpleArrayType(typeIdentifier);

    // Strings in WinRT are defined as HSTRING which corresponding to IntPtr
    if (isString) return baseNativeMapping[BaseType.intPtrType]!;

    // Could be a WinRT struct like BasicGeoposition
    if (isWinRTStruct) return unwrapStruct();

    // Could be a WinRT class (e.g. Calendar), interface (e.g. ICalendar), or
    // an object
    if (isWinRTClass || isWinRTInterface || isObject) {
      // LPVTBL is an alias for a Pointer to COM vtable (i.e.
      // Pointer<Pointer<IntPtr>>).
      final type = isParameter ? 'LPVTBL' : 'Pointer<COMObject>';
      return TypeTuple(type, type);
    }

    throw Exception('Type information missing for $typeIdentifier.');
  }

  @override
  String toString() => 'TypeProjection($typeIdentifier)';
}
