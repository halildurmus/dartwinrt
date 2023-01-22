// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart' hide TypeTuple;

import 'utils.dart';

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

class WinRTTypeProjection extends TypeProjection {
  WinRTTypeProjection(TypeIdentifier ti)
      : super(ti.baseType == BaseType.genericTypeModifier
            ? ti.copyWith(name: parseGenericTypeIdentifierName(ti))
            : ti);

  bool get isWinRTSpecialType =>
      specialTypes.keys.contains(typeIdentifier.name);

  TypeTuple unwrapWinRTEnum() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw Exception('Enum $typeIdentifier is missing value__');
    }

    final enumName = lastComponent(typeIdentifier.type!.name);

    if (fieldType.baseType == BaseType.int32Type) {
      return TypeTuple('Int32', 'int',
          attribute: '@Int32()', methodParamType: enumName);
    }

    if (fieldType.baseType == BaseType.uint32Type) {
      return TypeTuple('Uint32', 'int',
          attribute: '@Uint32()', methodParamType: enumName);
    }

    return TypeProjection(fieldType).projection;
  }

  TypeTuple unwrapWinRTDelegate() {
    final delegateName = outerType(stripGenerics(
        stripLeadingUnderscores(lastComponent(typeIdentifier.name))));

    return TypeTuple('Pointer<NativeFunction<$delegateName>>',
        'Pointer<NativeFunction<$delegateName>>');
  }

  /// Takes a type such as `simpleArrayType` -> `BaseType.Uint8` and converts
  /// it to `Pointer<Uint8>`.
  TypeTuple unwrapSimpleArrayType(TypeIdentifier type) {
    if (type.typeArg == null) throw Exception('Array type missing for $type.');

    final typeArg = WinRTTypeProjection(type.typeArg!);

    // Strip leading underscores (unless the type is nested, in which case leave
    // one behind).
    final typeArgNativeType = type.typeArg?.type?.isNested ?? false
        ? '_${stripLeadingUnderscores(typeArg.projection.nativeType)}'
        : stripLeadingUnderscores(typeArg.projection.nativeType);

    // Since this is already wrapped with 'Pointer', we can return it as is
    if (typeArgNativeType.endsWith('Pointer<COMObject>')) {
      return TypeTuple(typeArgNativeType, typeArgNativeType);
    }

    final nativeType = 'Pointer<$typeArgNativeType>';
    final dartType = 'Pointer<$typeArgNativeType>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple unwrapReferenceType() {
    if ((typeIdentifier.typeArg?.type?.isInterface ?? false) ||
        typeIdentifier.typeArg?.baseType == BaseType.classTypeModifier) {
      return TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>',
          methodParamType: lastComponent(typeIdentifier.typeArg!.name));
    }

    if (typeIdentifier.typeArg?.baseType == BaseType.simpleArrayType) {
      // This form is used in WinRT methods when the caller receives an array
      // that was allocated by the method. In this style, the array size
      // parameter and the array parameter are both out parameters.
      // Additionally, the array parameter is passed by reference (that is,
      // ArrayType**, rather than ArrayType*).
      final refTuple = unwrapSimpleArrayType(typeIdentifier.typeArg!);
      return TypeTuple(
          'Pointer<${refTuple.nativeType}>', 'Pointer<${refTuple.dartType}>');
    }

    // For example, `bool IndexOf(..., [Out] uint32_t & index)`.
    if (typeIdentifier.typeArg?.baseType == BaseType.uint32Type) {
      return const TypeTuple('Pointer<Uint32>', 'Pointer<Uint32>');
    }

    throw Exception(
        'Could not unwrap reference type: ${typeIdentifier.typeArg}');
  }

  @override
  TypeTuple projectType() {
    // Could be an intrinsic base type (e.g. Int32)
    if (isBaseType) return baseNativeMapping[typeIdentifier.baseType]!;

    // Could be a string or other special type that we want to custom-map
    if (isWinRTSpecialType) return specialTypes[typeIdentifier.name]!;

    // This is used by WinRT for an HSTRING
    if (isString) {
      return const TypeTuple('IntPtr', 'int', methodParamType: 'String');
    }

    // Could be a WinRT enum like AsyncStatus
    if (isWinRTEnum) return unwrapWinRTEnum();

    // Could be a wrapped type (e.g. a HWND)
    if (isWrappedValueType) return unwrapValueType();

    if (isPointerType) return unwrapPointerType();
    if (isArrayType) return unwrapArrayType();
    if (isSimpleArrayType) return unwrapSimpleArrayType(typeIdentifier);
    if (isWinRTDelegate) return unwrapWinRTDelegate();
    if (isReferenceType) return unwrapReferenceType();

    if (isClass || isInterface || isObject) {
      const type = 'Pointer<COMObject>';
      return TypeTuple(type, type,
          methodParamType:
              isObject ? null : nullable(lastComponent(typeIdentifier.name)));
    }

    // default: return the name as returned by metadata
    throw Exception('Type information missing for $typeIdentifier.');
  }
}
