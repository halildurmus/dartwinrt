// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../projections/type.dart';
import '../utils.dart';
import 'base_type_helpers.dart';
import 'typedef_helpers.dart';

/// Parses the argument to be passed to the `creator` parameter from a generic
/// [typeIdentifier].
String _parseGenericTypeIdentifierCreator(TypeIdentifier typeIdentifier) {
  final shortName = outerType(typeIdentifier.shortName);
  final args = <String>['ptr'];

  // Handle enum key type argument in IKeyValuePair, IMap, IMapView interfaces
  if (['IKeyValuePair', 'IMap', 'IMapView'].contains(shortName) &&
      (typeIdentifier.typeArg!.type?.isEnum ?? false)) {
    final enumKeyCreator = typeIdentifier.typeArg!.creator;
    args.add('enumKeyCreator: $enumKeyCreator');
  }

  // Handle int key type argument in IKeyValuePair, IMap, IMapView interfaces
  if (['IKeyValuePair', 'IMap', 'IMapView'].contains(shortName) &&
      (typeIdentifier.typeArg!.baseType == BaseType.int32Type ||
          typeIdentifier.typeArg!.baseType == BaseType.uint32Type)) {
    final typeProjection = TypeProjection(typeIdentifier.typeArg!);
    final intType = 'IntType.${typeProjection.nativeType.toLowerCase()}';
    args.add('intType: $intType');
  }

  final typeArg = ['IKeyValuePair', 'IMap', 'IMapView'].contains(shortName)
      // Skip over to the value typeArg since the `creator` parameter does not
      // need to be created for the key typeArg of the above types.
      ? typeIdentifier.typeArg!.typeArg!
      : typeIdentifier.typeArg;

  final creator = typeArg!.creator;

  if (creator != null) {
    final isTypeArgEnum = typeArg.type?.isEnum ?? false;
    final creatorParamName = isTypeArgEnum ? 'enumCreator' : 'creator';
    args.add('$creatorParamName: $creator');
  }

  if (['IVector', 'IVectorView'].contains(shortName)) {
    final iid = iterableIidFromVectorType(typeIdentifier);
    args.add("iterableIid: ${quote(iid)}");
  } else if (['IMap', 'IMapView'].contains(shortName)) {
    final iid = iterableIidFromMapType(typeIdentifier);
    args.add("iterableIid: ${quote(iid)}");
  } else if (shortName == 'IReference') {
    final referenceArgSignature = typeIdentifier.typeArg!.signature;
    final referenceSignature =
        'pinterface($IID_IReference;$referenceArgSignature)';
    final iid = iidFromSignature(referenceSignature);
    args.add("referenceIid: ${quote(iid)}");
  } else {
    if (creator == null) return '$shortName.fromPtr';
  }

  // e.g. IIterable<int>, IVector<int>, IVectorView<int>
  if (typeArguments(_parseGenericTypeIdentifierName(typeIdentifier)) == 'int') {
    final typeProjection = TypeProjection(typeIdentifier.typeArg!);
    final intType = 'IntType.${typeProjection.nativeType.toLowerCase()}';
    args.add('intType: $intType');
  }

  return '(ptr) => $shortName.fromPtr(${args.join(', ')})';
}

/// Unpack a nested [typeIdentifier] into a single name.
String _parseGenericTypeIdentifierName(TypeIdentifier typeIdentifier) {
  final shortName = stripGenerics(lastComponent(typeIdentifier.name));

  if (typeIdentifier.type?.genericParams.length == 2) {
    final secondArgIsPotentiallyNullable = [
      'Windows.Foundation.Collections.IKeyValuePair`2',
      'Windows.Foundation.Collections.IMap`2',
      'Windows.Foundation.Collections.IMapView`2',
      'Windows.Foundation.Collections.IObservableMap`2',
    ].contains(typeIdentifier.type?.name);
    final firstArg = typeIdentifier.typeArg!.shortName;
    final secondArg = typeIdentifier.typeArg!.typeArg!.shortName;

    var questionMark = '';
    if (secondArgIsPotentiallyNullable) {
      final secondArgIsEnum =
          TypeProjection(typeIdentifier.typeArg!.typeArg!).isWinRTEnum;
      final secondArgIsNullable = !secondArgIsEnum && secondArg != 'String';
      questionMark = secondArgIsNullable ? '?' : '';
    }

    return '$shortName<$firstArg, $secondArg$questionMark>';
  }

  if (shortName == 'IAsyncOperation') {
    final typeArg = typeIdentifier.typeArg!.shortName;
    final typeProjection = TypeProjection(typeIdentifier.typeArg!);
    final typeArgIsNullable =
        // Collection interfaces cannot return null.
        !typeArg.startsWith(RegExp(r'(IMap|IVector)')) &&
            // Primitives cannot return null.
            !['bool', 'double', 'int', 'String'].contains(typeArg) &&
            // Value types (enums and structs) cannot return null.
            !typeProjection.isValueType;
    final questionMark = typeArgIsNullable ? '?' : '';
    return 'IAsyncOperation<$typeArg$questionMark>';
  }

  if (shortName == 'IReference') {
    final typeArg = typeIdentifier.typeArg!.shortName;
    // Mark typeArg as nullable as all IReference types are nullable.
    return 'IReference<$typeArg?>';
  }

  return '$shortName<${typeIdentifier.typeArg!.shortName}>';
}

extension TypeIdentifierHelpers on TypeIdentifier {
  /// Parses the argument to be passed to the `creator` parameter for the type
  /// defined in this TypeIdentifier.
  String? get creator {
    final typeProjection = TypeProjection(this);
    if (!typeProjection.isWinRTEnum &&
        (typeProjection.isDartPrimitive ||
            typeProjection.isGuid ||
            typeProjection.isUri ||
            typeProjection.isWinRTStruct)) {
      return null;
    }

    switch (baseType) {
      case BaseType.classTypeModifier:
        return '${lastComponent(name)}.fromPtr';
      case BaseType.genericTypeModifier:
        return _parseGenericTypeIdentifierCreator(this);
      case BaseType.referenceTypeModifier:
        return typeArg!.creator;
      case BaseType.valueTypeModifier:
        if (typeProjection.isWinRTEnum) return '${lastComponent(name)}.from';
        return null;
      default:
        return null;
    }
  }

  /// Returns the IID of this TypeIdentifier.
  String get iid => iidFromSignature(signature);

  bool get isClassVariableType =>
      baseType == BaseType.classVariableTypeModifier;

  bool get isGenericType => baseType == BaseType.genericTypeModifier;

  bool get isObjectType => baseType == BaseType.objectType;

  bool get isPointerType => baseType == BaseType.pointerTypeModifier;

  bool get isReferenceType => baseType == BaseType.referenceTypeModifier;

  bool get isSimpleArrayType => baseType == BaseType.simpleArrayType;

  bool get isStringType => baseType == BaseType.stringType;

  bool get isValueType => baseType == BaseType.valueTypeModifier;

  /// Returns the shorter name of the type defined in this TypeIdentifier (e.g.
  /// `ICalendar`, `IMap<String, String>`).
  String get shortName {
    switch (baseType) {
      case BaseType.classTypeModifier:
      case BaseType.valueTypeModifier:
        if (name == 'System.Guid') return 'Guid';
        if (name == 'Windows.Foundation.TimeSpan') return 'Duration';
        return lastComponent(name);
      case BaseType.genericTypeModifier:
        // If the typeIdentifier's name is already parsed, return it as is
        if (name.contains('<')) return name;
        return _parseGenericTypeIdentifierName(this);
      case BaseType.objectType:
        return 'Object';
      case BaseType.referenceTypeModifier:
        return typeArg!.shortName;
      default:
        return baseType.dartType;
    }
  }

  /// Returns the type signature of this TypeIdentifier.
  String get signature {
    if (isGenericType) {
      if (type!.genericParams.length == 2) {
        final firstArgSignature = typeArg!.signature;
        final secondArgSignature = typeArg!.typeArg!.signature;
        return 'pinterface(${type!.guid};$firstArgSignature;$secondArgSignature)';
      }

      return 'pinterface(${type!.guid};${typeArg!.signature})';
    }

    if (name == 'System.Guid') return 'g16';

    final typeProjection = TypeProjection(this);
    if (typeProjection.isWinRTDelegate) return 'delegate(${type!.guid!})';
    if (typeProjection.isWinRTInterface) return type!.guid!;

    if (typeProjection.isWinRTClass) {
      final defaultInterface = type!.interfaces.first;
      final defaultInterfaceSignature = defaultInterface.typeSpec != null
          ? defaultInterface.typeSpec!.signature
          : defaultInterface.signature;
      return 'rc($name;$defaultInterfaceSignature)';
    }

    if (typeProjection.isWinRTEnum) {
      final isFlagsEnum = type!.existsAttribute(flagsAttribute);
      final enumSignature = isFlagsEnum ? 'u4' : 'i4';
      return 'enum($name;$enumSignature)';
    }

    if (typeProjection.isWinRTStruct) {
      final fieldSignatures =
          type!.fields.map((field) => field.typeIdentifier.signature);
      return 'struct($name;${fieldSignatures.join(';')})';
    }

    return baseType.signature;
  }
}
