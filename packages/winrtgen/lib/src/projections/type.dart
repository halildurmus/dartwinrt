// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../models/models.dart';

final class TypeProjection {
  TypeProjection(this.typeIdentifier, {this.isInParam = false});

  final TypeIdentifier typeIdentifier;

  /// Whether this type represents an `in` parameter.
  final bool isInParam;

  /// The type, as represented in the native function (e.g., `Int64`)
  String get nativeType => projection.nativeType;

  /// The type, as represented in the Dart function (e.g., `int`)
  String get dartType => projection.dartType;

  /// The type, as represented as a struct attribute (e.g., `@Int64()`)
  String get attribute => projection.attribute ?? '';

  /// The type of the pointer to [nativeType] (e.g., `Pointer<Int64>`).
  TypeTuple get pointer {
    final type = 'Pointer<$nativeType>';
    return TypeTuple(type, type);
  }

  // Type matcher properties

  bool get isAsyncAction =>
      typeIdentifier.name == 'Windows.Foundation.IAsyncAction' ||
      // Does the type implement IAsyncAction?
      (typeIdentifier.type?.interfaces
              .any((interface) => interface.name.endsWith('IAsyncAction')) ??
          false);

  bool get isAsyncActionWithProgress =>
      typeIdentifier.name == 'Windows.Foundation.IAsyncActionWithProgress`1' ||
      // Does the type implement IAsyncActionWithProgress?
      (typeIdentifier.type?.interfaces.any((interface) =>
              interface.typeSpec?.name.endsWith('IAsyncActionWithProgress`1') ??
              false) ??
          false);

  bool get isAsyncOperation =>
      (typeIdentifier.type?.name.endsWith('IAsyncOperation`1') ?? false) ||
      // Does the type implement IAsyncOperation?
      (typeIdentifier.type?.interfaces.any((interface) =>
              interface.typeSpec?.name.endsWith('IAsyncOperation`1') ??
              false) ??
          false);

  bool get isAsyncOperationWithProgress =>
      (typeIdentifier.type?.name.endsWith('IAsyncOperationWithProgress`2') ??
          false) ||
      // Does the type implement IAsyncOperationWithProgress?
      (typeIdentifier.type?.interfaces.any((interface) =>
              interface.typeSpec?.name
                  .endsWith('IAsyncOperationWithProgress`2') ??
              false) ??
          false);

  bool get isBaseType =>
      _baseNativeMapping.keys.contains(typeIdentifier.baseType);

  bool get isCharType => typeIdentifier.isCharType;

  bool get isCLanguageOptionalModifier =>
      typeIdentifier.isCLanguageOptionalModifier;

  bool get isCLanguageRequiredModifier =>
      typeIdentifier.isCLanguageRequiredModifier;

  bool get isClassVariableType => typeIdentifier.isClassVariableType;

  bool get isDartPrimitive => switch (dartType) {
        'bool' || 'double' || 'void' => true,
        'int' when !isDateTime && !isTimeSpan && !isWinRTEnum => true,
        _ => false
      };

  bool get isDateTime => typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isDouble => dartType == 'double';

  bool get isGenericType => typeIdentifier.isGenericType;

  bool get isGuid => dartType == 'GUID';

  bool get isInteger => switch (dartType) {
        'int' when !isDateTime && !isString && !isTimeSpan && !isWinRTEnum =>
          true,
        _ => false
      };

  bool get isIReference =>
      typeIdentifier.type?.name.endsWith('IReference`1') ?? false;

  bool get isMap => typeIdentifier.type?.name.endsWith('IMap`2') ?? false;

  bool get isMapView =>
      typeIdentifier.type?.name.endsWith('IMapView`2') ?? false;

  bool get isObjectType => typeIdentifier.isObjectType;

  bool get isPointer => typeIdentifier.isPointerType;

  bool get isReferenceType => typeIdentifier.isReferenceType;

  bool get isSimpleArray => typeIdentifier.isSimpleArrayType;

  bool get isSpecialType => _specialTypes.keys.contains(typeIdentifier.name);

  bool get isString => typeIdentifier.isStringType;

  bool get isTimeSpan => typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  bool get isUri => typeIdentifier.name == 'Windows.Foundation.Uri';

  bool get isValueType => typeIdentifier.isValueType;

  bool get isVector => typeIdentifier.type?.name.endsWith('IVector`1') ?? false;

  bool get isVectorView =>
      typeIdentifier.type?.name.endsWith('IVectorView`1') ?? false;

  bool get isVoid => dartType == 'void';

  bool get isWinRTClass => typeIdentifier.isWinRTClass;

  bool get isWinRTDelegate => typeIdentifier.isWinRTDelegate;

  bool get isWinRTEnum => typeIdentifier.isWinRTEnum;

  bool get isWinRTInterface => typeIdentifier.isWinRTInterface;

  bool get isWinRTObject => typeIdentifier.isWinRTObject;

  bool get isWinRTStruct => typeIdentifier.isWinRTStruct;

  bool get exposedAsStruct => isGuid || (isWinRTStruct && !isSpecialType);

  TypeTuple _unwrapEnum() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw StateError('Enum $typeIdentifier has no `value__` field.');
    }

    final typeTuple = _baseNativeMapping[fieldType.baseType];
    if (typeTuple == null) {
      throw StateError(
          'Enum $typeIdentifier has unsupported underlying type: ${fieldType.baseType}.');
    }

    return typeTuple;
  }

  /// Convert the projection of a *[typeIdentifier] into the projection of a
  /// typeIdentifier.
  TypeProjection dereference() =>
      TypeProjection(typeIdentifier.dereference(), isInParam: isInParam);

  TypeTuple _unwrapCustomModifier() => dereference().projection;

  TypeTuple _unwrapGenericTypeArg() {
    final typeArgKind = TypeArgKind.fromName(typeIdentifier.name);
    return switch (typeArgKind) {
      TypeArgKind.inspectable || TypeArgKind.nullableInspectable => TypeTuple(
          isInParam ? 'VTablePointer' : 'COMObject',
          isInParam ? 'VTablePointer' : 'COMObject'),
      TypeArgKind.winrtEnum => _baseNativeMapping[BaseType.int32Type]!,
      TypeArgKind.winrtFlagsEnum => _baseNativeMapping[BaseType.uint32Type]!,
      _ => throw UnsupportedError('Unsupported TypeArgKind: $typeArgKind')
    };
  }

  /// Takes a type such as `pointerTypeModifier` -> `BaseType.Uint32` and
  /// converts it to `Pointer<Uint32>`.
  TypeTuple _unwrapPointerType() => dereference().pointer;

  /// Takes a type such as `referenceTypeModifier` -> `BaseType.Int32` and
  /// converts it to `Pointer<Int32>`.
  TypeTuple _unwrapReferenceType() => dereference().pointer;

  /// Takes a type such as `simpleArrayType` -> `BaseType.Uint8` and converts
  /// it to `Pointer<Uint8>`.
  TypeTuple _unwrapSimpleArrayType() => dereference().pointer;

  /// Takes a type such as `valueTypeModifier` ->
  /// `Windows.Devices.Geolocation.BasicGeoposition` and converts it to
  /// `NativeBasicGeoposition`.
  TypeTuple _unwrapStruct() {
    final structType = typeIdentifier.type;
    if (structType == null) {
      throw StateError('Struct type missing for $typeIdentifier.');
    }

    final structName = 'Native${structType.name.lastComponent}';
    return TypeTuple(structName, structName);
  }

  TypeTuple? _projection;

  TypeTuple get projection => _projection ??= _projectType();

  TypeTuple _projectType() {
    // Could be an intrinsic base type (e.g., Int32)
    if (isBaseType) return _baseNativeMapping[typeIdentifier.baseType]!;

    // Could be a GUID or other special type that we want to custom-map
    if (isSpecialType) return _specialTypes[typeIdentifier.name]!;

    // Could be a WinRT enum like AsyncStatus
    if (isWinRTEnum) return _unwrapEnum();

    if (isPointer) return _unwrapPointerType();
    if (isReferenceType) return _unwrapReferenceType();
    if (isSimpleArray) return _unwrapSimpleArrayType();

    // Could be a WinRT struct like BasicGeoposition
    if (isWinRTStruct) return _unwrapStruct();

    // Could be a WinRT delegate (e.g., AsyncActionCompletedHandler), class
    // (e.g., Calendar), interface (e.g., ICalendar), or boxed value
    if (isWinRTDelegate || isWinRTObject) {
      // VTablePointer is a type alias that represents a Pointer to the
      // COM v-table (i.e. Pointer<Pointer<IntPtr>>).
      final type = isInParam ? 'VTablePointer' : 'COMObject';
      return TypeTuple(type, type);
    }

    // Handle custom modifiers (e.g., BaseType.cLanguageOptionalModifier)
    if (isCLanguageOptionalModifier) return _unwrapCustomModifier();

    // Handle generic type argument (e.g., TypeArgKind.inspectable,
    // TypeArgKind.nullableInspectable, TypeArgKind.winrtEnum, or
    // TypeArgKind.winrtFlagsEnum)
    if (isClassVariableType) return _unwrapGenericTypeArg();

    throw StateError('Type information missing for $typeIdentifier.');
  }

  @override
  String toString() => 'TypeProjection($typeIdentifier, isInParam: $isInParam, '
      'nativeType: $nativeType, dartType: $dartType, pointer: $pointer)';
}

final class TypeTuple {
  const TypeTuple(this.nativeType, this.dartType, {this.attribute});

  /// The type, as represented in the native function (e.g., `Int64`)
  final String nativeType;

  /// The type, as represented in the Dart function (e.g., `int`)
  final String dartType;

  /// The type, as represented as a struct attribute (e.g., `@Int64()`)
  final String? attribute;

  @override
  String toString() =>
      'TypeTuple(nativeType: $nativeType, dartType: $dartType, '
      'attribute: $attribute)';
}

const _baseNativeMapping = <BaseType, TypeTuple>{
  BaseType.booleanType: TypeTuple('Bool', 'bool', attribute: '@Bool()'),
  BaseType.charType: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.doubleType: TypeTuple('Double', 'double', attribute: '@Double()'),
  BaseType.floatType: TypeTuple('Float', 'double', attribute: '@Float()'),
  BaseType.int8Type: TypeTuple('Int8', 'int', attribute: '@Int8()'),
  BaseType.int16Type: TypeTuple('Int16', 'int', attribute: '@Int16()'),
  BaseType.int32Type: TypeTuple('Int32', 'int', attribute: '@Int32()'),
  BaseType.int64Type: TypeTuple('Int64', 'int', attribute: '@Int64()'),
  BaseType.intPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.stringType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.uint8Type: TypeTuple('Uint8', 'int', attribute: '@Uint8()'),
  BaseType.uint16Type: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.uint32Type: TypeTuple('Uint32', 'int', attribute: '@Uint32()'),
  BaseType.uint64Type: TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  BaseType.uintPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.voidType: TypeTuple('Void', 'void'),
};

const _specialTypes = <String, TypeTuple>{
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
