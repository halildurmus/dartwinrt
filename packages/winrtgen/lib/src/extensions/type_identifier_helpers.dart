// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../projections/type.dart';
import '../utils.dart';
import 'base_type_helpers.dart';
import 'typedef_helpers.dart';

extension TypeIdentifierHelpers on TypeIdentifier {
  /// Parses the argument to be passed to the `creator` parameter for the type
  /// defined in this TypeIdentifier.
  String? get creator {
    final typeProjection = TypeProjection(this);
    if ((typeProjection.isDartPrimitive && !typeProjection.isWinRTEnum) ||
        typeProjection.isGuid ||
        typeProjection.isUri ||
        typeProjection.isWinRTStruct) {
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

  bool get isVoidType => baseType == BaseType.voidType;

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
      final signatures = <String>[
        for (final typeArg in typeArgs) typeArg.signature
      ];
      return 'pinterface(${type!.guid};${signatures.join(';')})';
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

  /// Returns the type arguments of this TypeIdentifier.
  ///
  /// The TypeIdentifier must be a generic type.
  List<TypeIdentifier> get typeArgs {
    assert(baseType == BaseType.genericTypeModifier);
    assert(type != null);

    if (type!.genericParams.length == 1) return [typeArg!];

    final typeIdentifiersOfFirstArg = <TypeIdentifier>[];
    final typeIdentifiersOfSecondArg = <TypeIdentifier>[];
    var typeIdentifiersOfCurrentArg = typeIdentifiersOfFirstArg;
    var typeIdentifierCount = type!.genericParams.length - 1;

    var currentTypeIdentifier = typeArg;
    while (currentTypeIdentifier != null) {
      final typeIdentifier = TypeIdentifier(currentTypeIdentifier.baseType,
          name: currentTypeIdentifier.name, type: currentTypeIdentifier.type);
      typeIdentifiersOfCurrentArg.add(typeIdentifier);

      if (currentTypeIdentifier.isGenericType) {
        typeIdentifierCount += currentTypeIdentifier.type!.genericParams.length;
      }

      if (--typeIdentifierCount == 0) {
        typeIdentifiersOfCurrentArg = typeIdentifiersOfSecondArg;
      }

      currentTypeIdentifier = currentTypeIdentifier.typeArg;
    }

    return [
      unwrapTypeIdentifiers(typeIdentifiersOfFirstArg),
      unwrapTypeIdentifiers(typeIdentifiersOfSecondArg)
    ];
  }
}

/// Parses the argument to be passed to the `creator` parameter from a generic
/// [typeIdentifier].
String _parseGenericTypeIdentifierCreator(TypeIdentifier typeIdentifier) {
  final shortName = outerType(typeIdentifier.shortName);
  final typeArgs = typeIdentifier.typeArgs;
  final args = <String>['ptr'];

  if (['IKeyValuePair', 'IMap', 'IMapView'].contains(shortName)) {
    // Handle enum key typeArg
    if (typeArgs.first.type?.isEnum ?? false) {
      final enumKeyCreator = typeArgs.first.creator;
      args.add('enumKeyCreator: $enumKeyCreator');
    }

    // Handle int key typeArg
    if ([BaseType.int32Type, BaseType.uint32Type]
        .contains(typeArgs.first.baseType)) {
      final typeProjection = TypeProjection(typeArgs.first);
      final intType = 'IntType.${typeProjection.nativeType.toLowerCase()}';
      args.add('intType: $intType');
    }
  }

  // Use the value (last) typeArg to parse the creator argument since the
  // key (first) typeArg is handled above.
  final typeArg = ['IKeyValuePair', 'IMap', 'IMapView'].contains(shortName)
      ? typeArgs.last
      : typeArgs.first;
  final creator = typeArg.creator;
  if (creator != null) {
    final typeArgIsEnum = typeArg.type?.isEnum ?? false;
    final creatorParamName = typeArgIsEnum ? 'enumCreator' : 'creator';
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

  // Hanlde int typeArg in IIterable, IVector and IVectorView interfaces
  if (typeArguments(_parseGenericTypeIdentifierName(typeIdentifier)) == 'int') {
    final typeProjection = TypeProjection(typeIdentifier.typeArg!);
    final intType = 'IntType.${typeProjection.nativeType.toLowerCase()}';
    args.add('intType: $intType');
  }

  return '(ptr) => $shortName.fromPtr(${args.join(', ')})';
}

String _parseTypeArgName(TypeIdentifier typeIdentifier) {
  final typeArg = typeIdentifier.shortName;
  final typeArgIsCollection = typeIdentifier.type?.isCollectionObject ?? false;
  final typeArgIsNullable =
      // Collection interfaces cannot return null.
      !typeArgIsCollection &&
          // Primitive types cannot return null.
          !['bool', 'double', 'int', 'String'].contains(typeArg) &&
          // Value types (enums and structs) cannot return null.
          !TypeProjection(typeIdentifier).isValueType;
  return typeArgIsNullable ? nullable(typeArg) : typeArg;
}

/// Unpack a nested [typeIdentifier] into a single name.
String _parseGenericTypeIdentifierName(TypeIdentifier typeIdentifier) {
  final shortName = stripGenerics(lastComponent(typeIdentifier.name));

  if (typeIdentifier.type?.genericParams.length == 2) {
    final firstTypeArgIsPotentiallyNullable = [
      'Windows.Foundation.AsyncOperationProgressHandler`2',
      'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2',
      'Windows.Foundation.IAsyncOperationWithProgress`2',
    ].contains(typeIdentifier.type?.name);
    final secondTypeArgIsPotentiallyNullable = [
      'Windows.Foundation.Collections.IKeyValuePair`2',
      'Windows.Foundation.Collections.IMap`2',
      'Windows.Foundation.Collections.IMapView`2',
      'Windows.Foundation.Collections.IObservableMap`2',
      'Windows.Foundation.TypedEventHandler`2',
    ].contains(typeIdentifier.type?.name);
    final typeArgs = typeIdentifier.typeArgs;
    final firstTypeArg = firstTypeArgIsPotentiallyNullable
        ? _parseTypeArgName(typeArgs.first)
        : typeArgs.first.shortName;
    final secondTypeArg = secondTypeArgIsPotentiallyNullable
        ? _parseTypeArgName(typeArgs.last)
        : typeArgs.last.shortName;
    return '$shortName<$firstTypeArg, $secondTypeArg>';
  }

  switch (shortName) {
    case 'IAsyncOperation':
      final typeArg = _parseTypeArgName(typeIdentifier.typeArg!);
      return 'IAsyncOperation<$typeArg>';
    case 'IReference':
      final typeArg = typeIdentifier.typeArg!.shortName;
      // Mark typeArg as nullable since all IReference types are nullable.
      return 'IReference<$typeArg?>';
    default:
      final typeArg = typeIdentifier.typeArg!.shortName;
      return '$shortName<$typeArg>';
  }
}

/// Unwraps [typeIdentifiers] into a single TypeIdentifier
TypeIdentifier unwrapTypeIdentifiers(List<TypeIdentifier> typeIdentifiers) {
  var type = typeIdentifiers.last;
  for (var idx = typeIdentifiers.length - 2; idx >= 0; idx--) {
    final newType = typeIdentifiers[idx].copyWith(typeArg: type);
    type = newType;
  }
  return type;
}
