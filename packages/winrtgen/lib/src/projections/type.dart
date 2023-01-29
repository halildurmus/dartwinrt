// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../utils.dart';

class TypeTuple {
  /// The type, as represented in the native function (e.g. `Uint64`)
  final String nativeType;

  /// The type, as represented in the Dart function (e.g. `int`)
  final String dartType;

  /// The type, as represented as a struct attribute (e.g. `@Uint64()`)
  final String? attribute;

  /// The type, as represented in a method declaration prior to conversion (e.g.
  /// `DateTime`)
  final String? methodParamType;

  const TypeTuple(this.nativeType, this.dartType,
      {this.attribute, this.methodParamType});
}

const Map<BaseType, TypeTuple> baseNativeMapping = {
  BaseType.voidType: TypeTuple('Void', 'void'),
  BaseType.booleanType: TypeTuple('Bool', 'bool', attribute: '@Bool()'),
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
  BaseType.floatType: TypeTuple('Float', 'double', attribute: '@Float()'),
  BaseType.doubleType: TypeTuple('Double', 'double', attribute: '@Double()'),
  BaseType.charType: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
};

const Map<String, TypeTuple> specialTypes = {
  'System.Guid': TypeTuple('GUID', 'GUID'),
  'Windows.Foundation.DateTime': TypeTuple('Uint64', 'int',
      attribute: '@Uint64()', methodParamType: 'DateTime'),
  'Windows.Foundation.HResult':
      TypeTuple('Int32', 'int', attribute: '@Int32()'),
  'Windows.Foundation.TimeSpan': TypeTuple('Uint64', 'int',
      attribute: '@Uint64()', methodParamType: 'Duration'),
  'Windows.Foundation.EventRegistrationToken':
      TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
};

class TypeProjection {
  TypeProjection(TypeIdentifier ti, {this.isParameter = false})
      : typeIdentifier = ti.baseType == BaseType.genericTypeModifier
            ? ti.copyWith(name: parseGenericTypeIdentifierName(ti))
            : ti;

  final TypeIdentifier typeIdentifier;

  TypeTuple? _projection;

  TypeTuple get projection {
    _projection ??= projectType();
    return _projection!;
  }

  String get attribute => projection.attribute ?? '';

  String get nativeType => projection.nativeType;

  String get dartType => projection.dartType;

  String get methodParamType =>
      projection.methodParamType ?? projection.dartType;

  /// Whether this type belongs to a parameter.
  final bool isParameter;

  // Type matcher properties

  bool get isBool => dartType == 'bool';

  bool get isDouble => dartType == 'double';

  bool get isInt => dartType == 'int';

  bool get isDartPrimitive =>
      ['void', 'bool', 'int', 'double'].contains(dartType) ||
      dartType.startsWith('Pointer');

  bool get isClass => typeIdentifier.type?.isClass ?? false;

  bool get isInterface => typeIdentifier.type?.isInterface ?? false;

  bool get isObject => typeIdentifier.baseType == BaseType.objectType;

  bool get isWinRT => typeIdentifier.type?.isWindowsRuntime ?? false;

  bool get isWinRTSpecialType =>
      specialTypes.keys.contains(typeIdentifier.name);

  bool get isPointer => typeIdentifier.baseType == BaseType.pointerTypeModifier;

  bool get isSimpleArray => typeIdentifier.baseType == BaseType.simpleArrayType;

  bool get isDateTime => typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isEnumType => typeIdentifier.type?.parent?.name == 'System.Enum';

  bool get isEnum => isWinRT && isEnumType;

  bool get isGuid => dartType == 'GUID';

  bool get isAsyncAction =>
      typeIdentifier.name == 'Windows.Foundation.IAsyncAction';

  bool get isGenericType =>
      typeIdentifier.baseType == BaseType.genericTypeModifier;

  bool get isReferenceType =>
      typeIdentifier.baseType == BaseType.referenceTypeModifier;

  bool get isWrappedValueType =>
      typeIdentifier.baseType == BaseType.valueTypeModifier;

  bool get isAsyncOperation =>
      isGenericType &&
      (typeIdentifier.type?.name.endsWith('IAsyncOperation`1') ?? false);

  bool get isMap =>
      isGenericType && (typeIdentifier.type?.name.endsWith('IMap`2') ?? false);

  bool get isMapView =>
      isGenericType &&
      (typeIdentifier.type?.name.endsWith('IMapView`2') ?? false);

  bool get isIReference =>
      typeIdentifier.type?.name.endsWith('IReference`1') ?? false;

  bool get isVector =>
      isGenericType &&
      (typeIdentifier.type?.name.endsWith('IVector`1') ?? false);

  bool get isVectorView =>
      isGenericType &&
      (typeIdentifier.type?.name.endsWith('IVectorView`1') ?? false);

  bool get isTimeSpan => typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  bool get isUri => typeIdentifier.name == 'Windows.Foundation.Uri';

  bool get isVoid => dartType == 'void';

  bool get isBaseType =>
      baseNativeMapping.keys.contains(typeIdentifier.baseType);

  bool get isString => typeIdentifier.baseType == BaseType.stringType;

  bool get isDelegate =>
      isWinRT &&
      typeIdentifier.type?.parent?.name == 'System.MulticastDelegate';

  bool get isStruct => isWinRT && (typeIdentifier.type?.isStruct ?? false);

  TypeTuple unwrapEnum() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw Exception('Enum $typeIdentifier is missing value__');
    }

    final enumName = lastComponent(typeIdentifier.type!.name);

    switch (fieldType.baseType) {
      case BaseType.int32Type:
        return TypeTuple('Int32', 'int',
            attribute: '@Int32()', methodParamType: enumName);
      case BaseType.uint32Type:
        return TypeTuple('Uint32', 'int',
            attribute: '@Uint32()', methodParamType: enumName);
      default:
        throw Exception('Enum $typeIdentifier has unsupported underlying type');
    }
  }

  TypeTuple unwrapDelegate() {
    final delegateName =
        outerType(stripGenerics(lastComponent(typeIdentifier.name)));
    return TypeTuple('Pointer<NativeFunction<$delegateName>>',
        'Pointer<NativeFunction<$delegateName>>');
  }

  /// Takes a type such as `simpleArrayType` -> `BaseType.Uint8` and converts
  /// it to `Pointer<Uint8>`.
  TypeTuple unwrapSimpleArrayType(TypeIdentifier typeIdentifier) {
    final typeArg = typeIdentifier.typeArg;
    if (typeArg == null) {
      throw Exception('Array type missing for $typeIdentifier.');
    }

    final typeProjection = TypeProjection(typeArg);
    final nativeType = typeProjection.nativeType;

    // If it is already wrapped with 'Pointer', no need to wrap it again.
    if (nativeType == 'Pointer<COMObject>') {
      return TypeTuple(nativeType, nativeType);
    }

    final type = 'Pointer<$nativeType>';
    return TypeTuple(type, type);
  }

  TypeTuple unwrapReferenceType() {
    final baseType = typeIdentifier.typeArg?.baseType;
    switch (baseType) {
      case BaseType.classTypeModifier:
        return TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>',
            methodParamType: lastComponent(typeIdentifier.typeArg!.name));
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
        throw Exception('Could not unwrap reference type: $typeIdentifier');
    }
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

  TypeTuple unwrapValueType() {
    final wrappedType = typeIdentifier.type;
    if (wrappedType == null) {
      throw Exception(
          'Wrapped type TypeIdentifier missing for $typeIdentifier.');
    }

    final typeClass = lastComponent(wrappedType.name);
    return TypeTuple(typeClass, typeClass);
  }

  TypeTuple projectType() {
    // Could be an intrinsic base type (e.g. Int32)
    if (isBaseType) return baseNativeMapping[typeIdentifier.baseType]!;

    // Could be a string or other special type that we want to custom-map
    if (isWinRTSpecialType) return specialTypes[typeIdentifier.name]!;

    // This is used by WinRT for an HSTRING
    if (isString) {
      return const TypeTuple('IntPtr', 'int',
          attribute: '@IntPtr()', methodParamType: 'String');
    }

    // Could be a WinRT enum like AsyncStatus
    if (isEnum) return unwrapEnum();

    // Could be a wrapped type (e.g. a HWND)
    if (isWrappedValueType) return unwrapValueType();

    if (isPointer) return unwrapPointerType();
    if (isSimpleArray) return unwrapSimpleArrayType(typeIdentifier);
    if (isDelegate) return unwrapDelegate();
    if (isReferenceType) return unwrapReferenceType();

    if (isClass || isInterface || isObject) {
      final type = isParameter ? 'LPVTBL' : 'Pointer<COMObject>';
      return TypeTuple(type, type,
          methodParamType: isObject
              ? 'Object?'
              : nullable(lastComponent(typeIdentifier.name)));
    }

    throw Exception('Type information missing for $typeIdentifier.');
  }

  @override
  String toString() => 'TypeProjection($typeIdentifier)';
}
