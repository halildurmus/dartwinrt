// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../projections/projections.dart';
import 'extensions.dart';

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
      BaseType.classTypeModifier => '${name.lastComponent}.fromPtr',
      BaseType.genericTypeModifier => _parseGenericTypeIdentifierCreator(this),
      BaseType.referenceTypeModifier => dereference().creator,
      BaseType.valueTypeModifier when typeProjection.isWinRTEnum =>
        '${name.lastComponent}.from',
      _ => null,
    };
  }

  /// Parses the argument to be passed to the `creator` parameter from a generic
  /// [typeIdentifier].
  String _parseGenericTypeIdentifierCreator(TypeIdentifier typeIdentifier) {
    final shortName = typeIdentifier.shortName.outerType;
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

    if (shortName case 'IMap' || 'IMapView' || 'IVector' || 'IVectorView') {
      args.add('iterableIid: ${typeIdentifier.iterableIID.quote()}');
    } else if (shortName == 'IReference') {
      final referenceArgSignature = typeArgs.first.signature;
      final referenceSignature =
          'pinterface($IID_IReference;$referenceArgSignature)';
      final iid = referenceSignature.toIID();
      args.add('referenceIid: ${iid.quote()}');
    } else {
      if (creator == null) return '$shortName.fromPtr';
    }

    // Hanlde int typeArg in IIterable, IVector and IVectorView interfaces
    if (typeIdentifier.shortName.typeArguments == 'int') {
      final typeProjection = TypeProjection(typeArgs.first);
      final intType = 'IntType.${typeProjection.nativeType.toLowerCase()}';
      args.add('intType: $intType');
    }

    return '(ptr) => $shortName.fromPtr(${args.join(', ')})';
  }

  /// Convert this *TypeIdentifier into a TypeIdentifier.
  TypeIdentifier dereference() {
    if (typeArg case final typeArg?) return typeArg;
    throw StateError('Could not de-reference type $this.');
  }

  /// The value identifying the generic parameter sequence, if there is one.
  ///
  /// For example, in class `Foo<T, U>`, a property that returns `T` will have a
  /// returnType with a [TypeIdentifier] that has a genericParameterSequence of
  /// `0`.
  int get genericParamSequence => switch (genericParameterSequence) {
        final sequence? => sequence,
        _ => throw StateError('Type $this has no genericParameterSequence.'),
      };

  /// Returns the IID of this TypeIdentifier.
  String get iid => signature.toIID();

  bool get isCharType => baseType == BaseType.charType;

  bool get isClassType => baseType == BaseType.classTypeModifier;

  bool get isClassVariableType =>
      baseType == BaseType.classVariableTypeModifier;

  bool get isCollectionObject => type?.isCollectionObject ?? false;

  bool get isGenericType => baseType == BaseType.genericTypeModifier;

  bool get isObjectType => baseType == BaseType.objectType;

  bool get isPointerType => baseType == BaseType.pointerTypeModifier;

  bool get isReferenceType => baseType == BaseType.referenceTypeModifier;

  bool get isSimpleArrayType => baseType == BaseType.simpleArrayType;

  bool get isStringType => baseType == BaseType.stringType;

  bool get isValueType => baseType == BaseType.valueTypeModifier;

  bool get isVoidType => baseType == BaseType.voidType;

  bool get isWinRT => type?.isWindowsRuntime ?? false;

  bool get isWinRTClass => isWinRT && (type?.isClass ?? false);

  bool get isWinRTDelegate => isWinRT && (type?.isDelegate ?? false);

  bool get isWinRTEnum => isWinRT && (type?.isEnum ?? false);

  bool get isWinRTInterface => isWinRT && (type?.isInterface ?? false);

  bool get isWinRTObject => isWinRTClass || isWinRTInterface || isObjectType;

  bool get isWinRTStruct => isWinRT && (type?.isStruct ?? false);

  /// Returns the `IIterable<IKeyValuePair<K, V>>` IID for this `IMap` or
  /// `IMapView` TypeIdentifier.
  String get iterableIID {
    if (shortName.outerType case 'IMap' || 'IMapView') {
      final keyArgSignature = typeArgs.first.signature;
      final valueArgSignature = typeArgs.last.signature;
      final kvpSignature =
          'pinterface($IID_IKeyValuePair;$keyArgSignature;$valueArgSignature)';
      final iterableSignature = 'pinterface($IID_IIterable;$kvpSignature)';
      return iterableSignature.toIID();
    }

    if (shortName.outerType case 'IVector' || 'IVectorView') {
      final iterableArgSignature = typeArgs.first.signature;
      final iterableSignature =
          'pinterface($IID_IIterable;$iterableArgSignature)';
      return iterableSignature.toIID();
    }

    throw UnsupportedError('$this is not an IMap, IMapView, IVector or '
        'IVectorView.');
  }

  /// Returns the shorter name of the type defined in this TypeIdentifier (e.g.,
  /// `ICalendar`, `IMap<String, String>`).
  String get shortName {
    if (name == 'Windows.Foundation.TimeSpan') return 'Duration';
    return switch (baseType) {
      BaseType.classTypeModifier ||
      BaseType.valueTypeModifier =>
        name.lastComponent,
      BaseType.genericTypeModifier => _parseGenericTypeIdentifierName(this),
      BaseType.objectType => 'Object',
      BaseType.referenceTypeModifier => dereference().shortName,
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
      if (type.defaultInterface?.signature case final signature?) {
        return 'rc($name;$signature)';
      }
      throw StateError('Type $this has no default interface.');
    }

    if (typeProjection.isWinRTEnum) {
      final isFlagsEnum = type.existsAttribute(flagsAttribute);
      final enumSignature = isFlagsEnum ? 'u4' : 'i4';
      return 'enum($name;$enumSignature)';
    }

    if (typeProjection.isWinRTStruct) {
      final fieldSignatures =
          type.fields.map((field) => field.typeIdentifier.signature);
      return 'struct($name;${fieldSignatures.join(';')})';
    }

    return type.signature;
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
          throw StateError('Type $this has no TypeDef.');
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

/// Unwraps [typeIdentifiers] into a single `TypeIdentifier`.
TypeIdentifier _unwrapTypeIdentifiers(List<TypeIdentifier> typeIdentifiers) {
  var type = typeIdentifiers.last;
  for (var idx = typeIdentifiers.length - 2; idx >= 0; idx--) {
    final newType = typeIdentifiers[idx].copyWith(typeArg: type);
    type = newType;
  }
  return type;
}

/// Unpack a nested [typeIdentifier] into a single name.
String _parseGenericTypeIdentifierName(TypeIdentifier typeIdentifier) {
  final shortName = typeIdentifier.name.lastComponent.stripGenerics();
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
    // Mark typeArg as nullable since all IReference types are nullable.
    'IReference' => 'IReference<${typeArg1.shortName}?>',
    _ => '$shortName<${_parseTypeArgName(typeArg1)}>',
  };
}

String _parseTypeArgName(TypeIdentifier typeIdentifier) {
  final typeArg = typeIdentifier.shortName;
  // IIterable<IKeyValuePair<K, V>> cannot be null.
  if (typeArg.startsWith('IKeyValuePair')) return typeArg;
  // Value types (enums and structs) cannot be null.
  if (TypeProjection(typeIdentifier).isValueType) return typeArg;
  // Collection interfaces cannot be null.
  if (typeIdentifier.isCollectionObject) return typeArg;
  // Primitive types cannot be null.
  if (typeArg case 'bool' || 'double' || 'int' || 'String') return typeArg;
  // Everything else can be null.
  return typeArg.nullable();
}
