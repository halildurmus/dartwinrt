// Useful utilities

import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as path;
import 'package:win32/winrt.dart';
import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

import 'winrt_type.dart';

/// Strip the `?` suffix from the name.
///
/// For example, `IJsonValue?` should become `JsonValue`.
String stripQuestionMarkSuffix(String typeName) => typeName.endsWith('?')
    ? typeName.substring(0, typeName.length - 1)
    : typeName;

/// Converts [targetPath] to an equivalent relative path from the [start] directory.
String relativePath(String targetPath, {required String start}) =>
    path.relative(targetPath, from: start).replaceAll(r'\', '/');

String packageNameFromWinRTType(String fullyQualifiedType) =>
    'windows_${fullyQualifiedType.split('.').skip(1).first.toLowerCase()}';

String folderPathFromWinRTType(String fullyQualifiedType) {
  final packageName = packageNameFromWinRTType(fullyQualifiedType);
  // e.g. Windows.Storage.Pickers.FileOpenPicker -> pickers
  final segments = stripGenerics(fullyQualifiedType).split('.').skip(2).toList()
    ..removeLast();
  final classFolderPath =
      segments.isEmpty ? '' : '/${segments.join('/').toLowerCase()}';
  return '../../packages/$packageName/lib/src$classFolderPath';
}

/// Converts a fully-qualified type (e.g.
/// `Windows.Storage.Pickers.FileOpenPicker`) and returns the matching folder
/// (e.g. `windows_storage/pickers`).
String folderFromWinRTType(String fullyQualifiedType) {
  final segments = fullyQualifiedType.split('.').skip(1).toList()..removeLast();
  return 'windows_${segments.join('/').toLowerCase()}';
}

/// Return the parent namespace of a fully-qualified type
/// (e.g. `Windows.Gaming.Input.Gamepad` becomes `Windows.Gaming.Input`).
String parentNamespace(String fullyQualifiedType) =>
    (fullyQualifiedType.split('.')..removeLast()).join('.');

/// Take a name like `IAsyncOperation<StorageFile>` and return `StorageFile` or
/// `String, String` for a name like `IMap<String, String>`.
String typeArguments(String name) {
  if (!name.contains('<')) return name;
  return name.substring(name.indexOf('<') + 1, name.lastIndexOf('>'));
}

/// Take a name like `IAsyncOperation<StorageFile>` and return `IAsyncOperation`.
String outerType(String name) {
  if (!name.contains('<')) return name;
  return name.substring(0, name.indexOf('<'));
}

/// Parses the argument to be passed to the `creator` parameter from [ti].
String? parseArgumentForCreatorParameter(TypeIdentifier ti) {
  final typeProjection = WinRTTypeProjection(ti);
  if (typeProjection.isWinRTStruct ||
      ['bool', 'DateTime', 'double', 'Duration', 'int', 'String', 'Uri']
          .contains(typeProjection.methodParamType)) {
    return null;
  }

  switch (ti.baseType) {
    case BaseType.classTypeModifier:
      return '${lastComponent(ti.name)}.fromRawPointer';
    case BaseType.genericTypeModifier:
      return parseArgumentForCreatorParameterFromGenericTypeIdentifier(ti);
    case BaseType.referenceTypeModifier:
      return parseArgumentForCreatorParameter(ti.typeArg!);
    case BaseType.valueTypeModifier:
      if (ti.type?.isEnum ?? false) return '${lastComponent(ti.name)}.from';
      return null;
    default:
      return null;
  }
}

/// Parses the argument to be passed to the `creator` parameter from generic [ti].
String parseArgumentForCreatorParameterFromGenericTypeIdentifier(
    TypeIdentifier ti) {
  if (ti.baseType != BaseType.genericTypeModifier) {
    throw ArgumentError('Expected a generic type identifier.');
  }

  final typeIdentifierName = stripGenerics(lastComponent(outerType(ti.name)));
  final typeArg = ['IKeyValuePair', 'IMap', 'IMapView']
          .contains(typeIdentifierName)
      // Skip over to the value typeArg since the `creator` parameter does not
      // need to be created for the key typeArg of the above types.
      ? ti.typeArg!.typeArg!
      : ti.typeArg;

  final creator = parseArgumentForCreatorParameter(typeArg!);

  final args = <String>['ptr'];
  // Handle enum key type argument in IKeyValuePair, IMap, IMapView interfaces
  if (['IKeyValuePair', 'IMap', 'IMapView'].contains(typeIdentifierName) &&
      (ti.typeArg!.type?.isEnum ?? false)) {
    final enumKeyCreator = parseArgumentForCreatorParameter(ti.typeArg!);
    args.add('enumKeyCreator: $enumKeyCreator');
  }

  if (creator != null) {
    final isTypeArgEnum = typeArg.type?.isEnum ?? false;
    final creatorParamName = isTypeArgEnum ? 'enumCreator' : 'creator';
    args.add('$creatorParamName: $creator');
  }

  if (['IVector', 'IVectorView'].contains(typeIdentifierName)) {
    args.add("iterableIid: '${iterableIidFromVectorTypeIdentifier(ti)}'");
  } else if (['IMap', 'IMapView'].contains(typeIdentifierName)) {
    args.add("iterableIid: '${iterableIidFromMapTypeIdentifier(ti)}'");
  } else if (typeIdentifierName == 'IReference') {
    final referenceArgSignature = parseTypeIdentifierSignature(ti.typeArg!);
    final referenceSignature =
        'pinterface($IID_IReference;$referenceArgSignature)';
    args.add("referenceIid: '${iidFromSignature(referenceSignature)}'");
  } else {
    if (creator == null) return '$typeIdentifierName.fromRawPointer';
  }

  // e.g. IIterable<int>, IVector<int>, IVectorView<int>
  if (typeArguments(parseGenericTypeIdentifierName(ti)) == 'int') {
    final typeProjection = WinRTTypeProjection(ti.typeArg!);
    args.add('intType: ${typeProjection.nativeType}');
  }

  return '(Pointer<COMObject> ptr) => $typeIdentifierName.fromRawPointer(${args.join(', ')})';
}

/// Returns the appropriate Dart primitive type name for the given [baseType].
String primitiveTypeNameFromBaseType(BaseType baseType) {
  switch (baseType) {
    case BaseType.booleanType:
      return 'bool';
    case BaseType.doubleType:
    case BaseType.floatType:
      return 'double';
    case BaseType.int8Type:
    case BaseType.int16Type:
    case BaseType.int32Type:
    case BaseType.int64Type:
    case BaseType.uint8Type:
    case BaseType.uint16Type:
    case BaseType.uint32Type:
    case BaseType.uint64Type:
      return 'int';
    case BaseType.stringType:
      return 'String';
    default:
      return 'undefined';
  }
}

/// Returns the appropriate Dart type name for the given [ti].
String parseTypeIdentifierName(TypeIdentifier ti) {
  switch (ti.baseType) {
    case BaseType.classTypeModifier:
    case BaseType.valueTypeModifier:
      if (ti.name == 'System.Guid') return 'Guid';
      if (ti.name == 'Windows.Foundation.TimeSpan') return 'Duration';
      return lastComponent(ti.name);
    case BaseType.genericTypeModifier:
      return parseGenericTypeIdentifierName(ti);
    case BaseType.objectType:
      return 'Object';
    case BaseType.referenceTypeModifier:
      return parseTypeIdentifierName(ti.typeArg!);
    default:
      return primitiveTypeNameFromBaseType(ti.baseType);
  }
}

/// Unpack a nested [typeIdentifier] into a single name.
String parseGenericTypeIdentifierName(TypeIdentifier typeIdentifier) {
  if (typeIdentifier.baseType != BaseType.genericTypeModifier) {
    throw ArgumentError('Expected a generic type identifier.');
  }

  // If the typeIdentifier's name is already parsed, return it as is
  if (typeIdentifier.name.contains('<')) return typeIdentifier.name;

  final parentTypeName = stripGenerics(lastComponent(typeIdentifier.name));

  if (typeIdentifier.type?.genericParams.length == 2) {
    final secondArgIsPotentiallyNullable = [
      'Windows.Foundation.Collections.IKeyValuePair`2',
      'Windows.Foundation.Collections.IMap`2',
      'Windows.Foundation.Collections.IMapView`2',
      'Windows.Foundation.Collections.IObservableMap`2',
    ].contains(typeIdentifier.type?.name);
    final firstArg = parseTypeIdentifierName(typeIdentifier.typeArg!);
    final secondArg = parseTypeIdentifierName(typeIdentifier.typeArg!.typeArg!);

    var questionMark = '';
    if (secondArgIsPotentiallyNullable) {
      final secondArgIsEnum =
          WinRTTypeProjection(typeIdentifier.typeArg!.typeArg!).isWinRTEnum;
      final secondArgIsNullable = !secondArgIsEnum && secondArg != 'String';
      questionMark = secondArgIsNullable ? '?' : '';
    }

    return '$parentTypeName<$firstArg, $secondArg$questionMark>';
  }

  final isAsyncOperation = parentTypeName == 'IAsyncOperation';
  if (isAsyncOperation) {
    final typeArg = parseTypeIdentifierName(typeIdentifier.typeArg!);
    final typeProjection = WinRTTypeProjection(typeIdentifier.typeArg!);
    final typeArgIsNullable =
        // Collection interfaces cannot return null.
        !typeArg.startsWith(RegExp(r'(IMap|IVector)')) &&
            // Primitives cannot return null.
            !['bool', 'double', 'int', 'String'].contains(typeArg) &&
            // Value types (enums and structs) cannot return null.
            !typeProjection.isWrappedValueType;
    final questionMark = typeArgIsNullable ? '?' : '';
    return 'IAsyncOperation<$typeArg$questionMark>';
  }

  return '$parentTypeName<${parseTypeIdentifierName(typeIdentifier.typeArg!)}>';
}

/// Returns the primitive type signature for the given [baseType].
///
/// To learn more about this, see
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
String primitiveTypeSignatureFromBaseType(BaseType baseType) {
  switch (baseType) {
    case BaseType.booleanType:
      return 'b1';
    case BaseType.charType:
      return 'c2';
    case BaseType.doubleType:
      return 'f8';
    case BaseType.floatType:
      return 'f4';
    case BaseType.int8Type:
      return 'i1';
    case BaseType.int16Type:
      return 'i2';
    case BaseType.int32Type:
      return 'i4';
    case BaseType.int64Type:
      return 'i8';
    case BaseType.objectType:
      return 'cinterface(IInspectable)';
    case BaseType.stringType:
      return 'string';
    case BaseType.uint8Type:
      return 'u1';
    case BaseType.uint16Type:
      return 'u2';
    case BaseType.uint32Type:
      return 'u4';
    case BaseType.uint64Type:
      return 'u8';
    default:
      throw UnsupportedError('Unsupported baseType: $baseType');
  }
}

/// Returns the type signature for the given [td].
String parseTypeDefSignature(TypeDef td) {
  if (td.typeSpec != null) return parseTypeIdentifierSignature(td.typeSpec!);

  if (td.isClass) {
    final className = td.name;
    final defaultInterfaceSignature =
        parseTypeDefSignature(td.interfaces.first);
    return 'rc($className;$defaultInterfaceSignature)';
  }

  return td.guid!;
}

/// Returns the type signature for the given [ti].
String parseTypeIdentifierSignature(TypeIdentifier ti) {
  if (ti.baseType == BaseType.genericTypeModifier) {
    return parseGenericTypeIdentifierSignature(ti);
  }

  if (ti.name == 'System.Guid') return 'g16';

  final typeProjection = WinRTTypeProjection(ti);

  if (typeProjection.isWinRTDelegate) {
    return 'delegate(${ti.type!.guid!})';
  }

  if (typeProjection.isWinRTEnum) {
    final enumName = ti.name;
    final isFlagsEnum = ti.type!.existsAttribute('System.FlagsAttribute');
    final enumSignature = isFlagsEnum ? 'u4' : 'i4';
    return 'enum($enumName;$enumSignature)';
  }

  if (typeProjection.isWinRTStruct) {
    final structName = ti.name;
    final fields = ti.type!.fields
        .map((field) => parseTypeIdentifierSignature(field.typeIdentifier));
    return 'struct($structName;${fields.join(';')})';
  }

  if (typeProjection.isInterface) return ti.type!.guid!;

  if (typeProjection.isClass) {
    final className = ti.name;
    final defaultInterface = ti.type!.interfaces.first;
    if (defaultInterface.typeSpec != null) {
      final defaultInterfaceSignature =
          parseTypeIdentifierSignature(defaultInterface.typeSpec!);
      return 'rc($className;$defaultInterfaceSignature)';
    }

    final defaultInterfaceSignature = parseTypeDefSignature(defaultInterface);
    return 'rc($className;$defaultInterfaceSignature)';
  }

  return primitiveTypeSignatureFromBaseType(ti.baseType);
}

/// Returns the type signature for the given generic [typeIdentifier].
String parseGenericTypeIdentifierSignature(TypeIdentifier typeIdentifier) {
  if (typeIdentifier.baseType != BaseType.genericTypeModifier) {
    throw ArgumentError('Expected a generic type identifier.');
  }

  final parentTypeGuid = typeIdentifier.type!.guid!;

  if (typeIdentifier.type?.genericParams.length == 2) {
    final firstArgSignature =
        parseTypeIdentifierSignature(typeIdentifier.typeArg!);
    final secondArgSignature =
        parseTypeIdentifierSignature(typeIdentifier.typeArg!.typeArg!);
    return 'pinterface($parentTypeGuid;$firstArgSignature;$secondArgSignature)';
  }

  return 'pinterface($parentTypeGuid;${parseTypeIdentifierSignature(typeIdentifier.typeArg!)})';
}

/// A byte representation of the pinterface instantiation.
///
/// This is hardcoded as the value {11f47ad5-7b73-42c0-abae-878b1e16adee} in
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system
const wrtPinterfaceNamespace = [
  0x11, 0xf4, 0x7a, 0xd5,
  0x7b, 0x73,
  0x42, 0xc0,
  0xab, 0xae,
  0x87, 0x8b, 0x1e, 0x16, 0xad, 0xee, //
];

/// Returns the IID for the given [signature].
///
/// Takes a parameterized type instance, such as `IMap<String, String>`, which
/// can be represented as:
/// `pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)`
///
/// Converts it to a unique IID for the resultant type, using an algorithm
/// defined here:
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
Guid iidFromSignature(String signature) {
  final signatureInBytes = const Utf8Encoder().convert(signature);
  final data = [...wrtPinterfaceNamespace, ...signatureInBytes];
  final sha1Hash = sha1.convert(data);
  final sha1Bytes = Uint8List.fromList(sha1Hash.bytes).buffer.asByteData();

  final firstPart = sha1Bytes.getUint32(0);
  final secondPart = sha1Bytes.getUint16(4);
  final thirdPart = (sha1Bytes.getUint16(6) & 0x0FFF) | 0x5000;
  final fourthPart = (sha1Bytes.getUint64(8, Endian.little) & ~0xC0) | 0x80;

  return Guid.fromComponents(firstPart, secondPart, thirdPart, fourthPart);
}

/// Returns the IID for the given [typeDef].
Guid iidFromTypeDef(TypeDef typeDef) {
  final signature = parseTypeDefSignature(typeDef);
  return iidFromSignature(signature);
}

/// Returns the IID for the given [typeIdentifier].
Guid iidFromTypeIdentifier(TypeIdentifier typeIdentifier) {
  final signature = parseTypeIdentifierSignature(typeIdentifier);
  return iidFromSignature(signature);
}

/// Returns the `IIterable<IKeyValuePair<K, V>>` IID for the given `IMap` or
/// `IMapView` [typeIdentifier].
Guid iterableIidFromMapTypeIdentifier(TypeIdentifier typeIdentifier) {
  if (!['IMap', 'IMapView']
      .contains(outerType(parseTypeIdentifierName(typeIdentifier)))) {
    throw ArgumentError("Expected an 'IMap' or 'IMapView' type identifier.");
  }

  final kvpKeyArgSig = parseTypeIdentifierSignature(typeIdentifier.typeArg!);
  final kvpValueArgSig =
      parseTypeIdentifierSignature(typeIdentifier.typeArg!.typeArg!);
  final iterableSignature =
      'pinterface($IID_IIterable;pinterface($IID_IKeyValuePair;$kvpKeyArgSig;$kvpValueArgSig))';
  return iidFromSignature(iterableSignature);
}

/// Returns the `IIterable<T>` IID for the given `IVector` or `IVectorView`
/// [typeIdentifier].
Guid iterableIidFromVectorTypeIdentifier(TypeIdentifier typeIdentifier) {
  if (!['IVector', 'IVectorView']
      .contains(outerType(parseTypeIdentifierName(typeIdentifier)))) {
    throw ArgumentError(
        "Expected an 'IVector' or 'IVectorView' type identifier.");
  }

  final iterableArgSignature =
      parseTypeIdentifierSignature(typeIdentifier.typeArg!);
  final iterableSignature = 'pinterface($IID_IIterable;$iterableArgSignature)';
  return iidFromSignature(iterableSignature);
}

List<NamespaceGroup> groupTypesByParentNamespace(Iterable<String> types) {
  types.toList().sort((a, b) => a.compareTo(b));
  final namespaceGroups = <NamespaceGroup>[];
  final namespaceGroup = NamespaceGroup(
      namespace: parentNamespace(types.first), types: [types.first]);
  namespaceGroups.add(namespaceGroup);

  for (var i = 1; i < types.length; i++) {
    final type = types.elementAt(i);
    if (namespaceGroups.any((e) => e.namespace == parentNamespace(type))) {
      final namespaceGroup = namespaceGroups
          .firstWhere((e) => e.namespace == parentNamespace(type));
      namespaceGroup.types.add(type);
    } else {
      final namespaceGroup =
          NamespaceGroup(namespace: parentNamespace(type), types: [type]);
      namespaceGroups.add(namespaceGroup);
    }
  }

  return namespaceGroups;
}

class NamespaceGroup {
  NamespaceGroup({required this.namespace, required this.types});

  final String namespace;
  final List<String> types;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NamespaceGroup &&
        other.namespace == namespace &&
        other.types.length == types.length &&
        other.types.every(types.contains);
  }

  @override
  int get hashCode => namespace.hashCode ^ types.hashCode;

  @override
  String toString() => 'NamespaceGroup(namespace: $namespace, types: $types)';
}
