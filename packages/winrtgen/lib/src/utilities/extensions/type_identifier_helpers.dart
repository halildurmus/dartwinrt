// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../constants/constants.dart';
import '../../exception/exception.dart';
import '../../projections/projections.dart';
import '../helpers.dart';
import 'base_type_helpers.dart';
import 'typedef_helpers.dart';

extension TypeIdentifierHelpers on TypeIdentifier {
  /// Parses the argument to be passed to the `creator` parameter for the type
  /// defined in this TypeIdentifier.
  String? get creator {
    final typeProjection = TypeProjection(this);
    if (typeProjection.isDartPrimitive ||
        typeProjection.isGuid ||
        typeProjection.isUri ||
        typeProjection.isWinRTStruct) {
      return null;
    }

    return switch (baseType) {
      BaseType.classTypeModifier => '${lastComponent(name)}.fromPtr',
      BaseType.genericTypeModifier => _parseGenericTypeIdentifierCreator(this),
      BaseType.referenceTypeModifier => dereferenceType(this).creator,
      BaseType.valueTypeModifier when typeProjection.isWinRTEnum =>
        '${lastComponent(name)}.from',
      _ => null,
    };
  }

  /// The value identifying the generic parameter sequence, if there is one.
  ///
  /// For example, in class `Foo<T, U>`, a property that returns `T` will have a
  /// returnType with a [TypeIdentifier] that has a genericParameterSequence of
  /// `0`.
  ///
  /// Throws a [WinRTGenException] if this [TypeIdentifier] has no
  /// [genericParameterSequence].
  int get genericParamSequence => switch (genericParameterSequence) {
        final sequence? => sequence,
        _ => throw WinRTGenException(
            'Type $this has no genericParameterSequence.'),
      };

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
    // If the typeIdentifier's name is already parsed, return it as is
    if (name.contains('<')) return name;

    if (name == 'Windows.Foundation.TimeSpan') return 'Duration';

    if (baseType == BaseType.referenceTypeModifier) {
      return dereferenceType(this).shortName;
    }

    return switch (baseType) {
      BaseType.classTypeModifier ||
      BaseType.valueTypeModifier =>
        lastComponent(name),
      BaseType.genericTypeModifier => _parseGenericTypeIdentifierName(this),
      BaseType.objectType => 'Object',
      _ => baseType.dartType,
    };
  }

  /// Returns the type signature of this TypeIdentifier.
  String get signature {
    if (name == 'System.Guid') return 'g16';

    final type = this.type;
    if (type == null) return baseType.signature;

    if (isGenericType) {
      final signatures = typeArgs.map((typeArg) => typeArg.signature);
      return 'pinterface(${type.iid};${signatures.join(';')})';
    }

    final typeProjection = TypeProjection(this);

    if (typeProjection.isWinRTClass) {
      final defaultInterfaceSignature = type.interfaces.first.signature;
      return 'rc($name;$defaultInterfaceSignature)';
    }

    if (typeProjection.isWinRTDelegate) return type.signature;

    if (typeProjection.isWinRTEnum) {
      final isFlagsEnum = type.existsAttribute(flagsAttribute);
      final enumSignature = isFlagsEnum ? 'u4' : 'i4';
      return 'enum($name;$enumSignature)';
    }

    if (typeProjection.isWinRTInterface) return type.signature;

    if (typeProjection.isWinRTStruct) {
      final fieldSignatures =
          type.fields.map((field) => field.typeIdentifier.signature);
      return 'struct($name;${fieldSignatures.join(';')})';
    }

    throw WinRTGenException('Unsupported type: $type');
  }

  /// Returns the type arguments of this TypeIdentifier.
  ///
  /// The TypeIdentifier must be a generic type.
  List<TypeIdentifier> get typeArgs {
    assert(baseType == BaseType.genericTypeModifier);

    final type = this.type;
    final typeArg = this.typeArg;
    if (type == null || typeArg == null) return [];

    final genericParams = type.genericParams;
    if (genericParams case [_]) return [typeArg];

    final typeIdentifiersOfFirstArg = <TypeIdentifier>[];
    final typeIdentifiersOfSecondArg = <TypeIdentifier>[];
    var typeIdentifiersOfCurrentArg = typeIdentifiersOfFirstArg;
    var typeIdentifierCount = genericParams.length - 1;

    TypeIdentifier? currentTypeIdentifier = typeArg;
    while (currentTypeIdentifier != null) {
      final typeIdentifier = TypeIdentifier(currentTypeIdentifier.baseType,
          name: currentTypeIdentifier.name, type: currentTypeIdentifier.type);
      typeIdentifiersOfCurrentArg.add(typeIdentifier);

      if (currentTypeIdentifier.isGenericType) {
        if (currentTypeIdentifier.type case final type?) {
          typeIdentifierCount += type.genericParams.length;
        } else {
          throw WinRTGenException('Type $this has no TypeDef.');
        }
      }

      if (--typeIdentifierCount == 0) {
        typeIdentifiersOfCurrentArg = typeIdentifiersOfSecondArg;
      }

      currentTypeIdentifier = currentTypeIdentifier.typeArg;
    }

    return [
      _unwrapTypeIdentifiers(typeIdentifiersOfFirstArg),
      _unwrapTypeIdentifiers(typeIdentifiersOfSecondArg)
    ];
  }
}

/// Parses the argument to be passed to the `creator` parameter from a generic
/// [typeIdentifier].
String _parseGenericTypeIdentifierCreator(TypeIdentifier typeIdentifier) {
  final shortName = outerType(typeIdentifier.shortName);
  final typeArgs = typeIdentifier.typeArgs;
  final args = <String>['ptr'];

  if (shortName case 'IKeyValuePair' || 'IMap' || 'IMapView') {
    // Handle enum key typeArg
    if (typeArgs.first.type?.isEnum ?? false) {
      final enumKeyCreator = typeArgs.first.creator;
      args.add('enumKeyCreator: $enumKeyCreator');
    }

    // Handle int key typeArg
    if (typeArgs.first.baseType
        case BaseType.int32Type || BaseType.uint32Type) {
      final typeProjection = TypeProjection(typeArgs.first);
      final intType = 'IntType.${typeProjection.nativeType.toLowerCase()}';
      args.add('intType: $intType');
    }
  }

  // Use the value (last) typeArg to parse the creator argument since the
  // key (first) typeArg is handled above.
  final typeArg = switch (shortName) {
    'IKeyValuePair' || 'IMap' || 'IMapView' => typeArgs.last,
    _ => typeArgs.first,
  };
  final creator = typeArg.creator;
  if (creator != null) {
    final typeArgIsEnum = typeArg.type?.isEnum ?? false;
    final creatorParamName = typeArgIsEnum ? 'enumCreator' : 'creator';
    args.add('$creatorParamName: $creator');
  }

  if (shortName case 'IVector' || 'IVectorView') {
    final iid = iterableIidFromVectorType(typeIdentifier);
    args.add("iterableIid: ${quote(iid)}");
  } else if (shortName case 'IMap' || 'IMapView') {
    final iid = iterableIidFromMapType(typeIdentifier);
    args.add("iterableIid: ${quote(iid)}");
  } else if (shortName == 'IReference') {
    final referenceArgSignature = typeArgs.first.signature;
    final referenceSignature =
        'pinterface($IID_IReference;$referenceArgSignature)';
    final iid = iidFromSignature(referenceSignature);
    args.add("referenceIid: ${quote(iid)}");
  } else {
    if (creator == null) return '$shortName.fromPtr';
  }

  // Hanlde int typeArg in IIterable, IVector and IVectorView interfaces
  if (typeArguments(_parseGenericTypeIdentifierName(typeIdentifier)) == 'int') {
    final typeProjection = TypeProjection(typeArgs.first);
    final intType = 'IntType.${typeProjection.nativeType.toLowerCase()}';
    args.add('intType: $intType');
  }

  return '(ptr) => $shortName.fromPtr(${args.join(', ')})';
}

String _parseTypeArgName(TypeIdentifier typeIdentifier) {
  final typeArg = typeIdentifier.shortName;
  // Collection interfaces cannot be null.
  if (typeIdentifier.type?.isCollectionObject ?? false) return typeArg;
  // Value types (enums and structs) cannot be null.
  if (TypeProjection(typeIdentifier).isValueType) return typeArg;
  // Primitive types cannot be null.
  if (typeArg case 'bool' || 'double' || 'int' || 'String') return typeArg;
  return nullable(typeArg);
}

/// Unpack a nested [typeIdentifier] into a single name.
String _parseGenericTypeIdentifierName(TypeIdentifier typeIdentifier) {
  final shortName = stripGenerics(lastComponent(typeIdentifier.name));
  final typeArgs = typeIdentifier.typeArgs;
  final typeArg1 = typeArgs.first;

  // Handle generic types with two type parameters
  if (typeIdentifier.type?.genericParams.length == 2) {
    final typeArg2 = typeArgs.last;
    final firstTypeArg = switch (typeIdentifier.type?.name) {
      'Windows.Foundation.AsyncOperationProgressHandler`2' ||
      'Windows.Foundation.AsyncOperationWithProgressCompletedHandler`2' ||
      'Windows.Foundation.IAsyncOperationWithProgress`2' =>
        _parseTypeArgName(typeArg1),
      _ => typeArg1.shortName,
    };
    final secondTypeArg = switch (typeIdentifier.type?.name) {
      'Windows.Foundation.Collections.IKeyValuePair`2' ||
      'Windows.Foundation.Collections.IMap`2' ||
      'Windows.Foundation.Collections.IMapView`2' ||
      'Windows.Foundation.Collections.IObservableMap`2' ||
      'Windows.Foundation.TypedEventHandler`2' =>
        _parseTypeArgName(typeArg2),
      _ => typeArg2.shortName,
    };
    return '$shortName<$firstTypeArg, $secondTypeArg>';
  }

  // Handle generic types with one type parameter
  return switch (shortName) {
    'IAsyncOperation' => 'IAsyncOperation<${_parseTypeArgName(typeArg1)}>',
    // Mark typeArg as nullable since all IReference types are nullable.
    'IReference' => 'IReference<${typeArg1.shortName}?>',
    _ => '$shortName<${typeArg1.shortName}>',
  };
}

/// Unwraps [typeIdentifiers] into a single `TypeIdentifier`.
TypeIdentifier _unwrapTypeIdentifiers(List<TypeIdentifier> typeIdentifiers) {
  var type = typeIdentifiers.last;
  for (var idx = typeIdentifiers.length - 2; idx >= 0; idx--) {
    final newType = typeIdentifiers[idx].copyWith(typeArg: type);
    type = newType;
  }
  return type;
}
