// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart' hide TypeTuple;

import '../constants/constants.dart';
import '../exceptions/exceptions.dart';
import '../extensions/extensions.dart';
import '../models/models.dart';
import 'getter.dart';
import 'interface.dart';
import 'method.dart';
import 'setter.dart';

final class GenericInterfacePartFileProjection {
  GenericInterfacePartFileProjection(this.genericType)
      : fileName = genericType.shortName.toLowerCase();

  final GenericType genericType;
  final String fileName;

  List<GenericInterfaceProjection>? _projections;

  List<GenericInterfaceProjection> get projections =>
      _projections ??= _cacheProjections();

  List<GenericInterfaceProjection> _cacheProjections() {
    final fullyQualifiedType = genericType.fullyQualifiedType;
    return switch (genericType) {
      GenericTypeWithOneTypeArg(:final typeArgKinds) => typeArgKinds.map(
          (typeArgKind) =>
              GenericInterfaceProjection.from(fullyQualifiedType, typeArgKind)),
      GenericTypeWithTwoTypeArgs(:final typeArgKindPairs) => typeArgKindPairs
          .map((typeArgKindPair) => GenericInterfaceProjection.from(
              fullyQualifiedType, typeArgKindPair.$1, typeArgKindPair.$2)),
    }
        .toList();
  }

  @override
  String toString() => '''
$classFileHeader
part of '$fileName.dart';

${projections.join('\n')}
''';
}

final class GenericInterfaceProjection extends InterfaceProjection {
  GenericInterfaceProjection._(super.typeDef, this.typeArgs);

  /// The type arguments of the interface (e.g., `[TypeArgKind.string]`,
  /// `[TypeArgKind.string, TypeArgKind.nullableObject]`).
  final List<TypeArgKind> typeArgs;

  /// Attempts to create a [GenericInterfaceProjection] from
  /// [fullyQualifiedType], [typeArg1], and optionally [typeArg2] by searching
  /// its [TypeDef].
  ///
  /// ```dart
  /// final projection = GenericInterfaceProjection.from(
  ///     'Windows.Foundation.IAsyncOperation`1', TypeArgKind.string);
  /// ```
  ///
  /// [typeArg2] must be specified if [fullyQualifiedType] has two type
  /// arguments (e.g., `Windows.Foundation.Collections.IMap`2`).
  ///
  /// ```dart
  /// final projection = GenericInterfaceProjection.from(
  ///     'Windows.Foundation.Collections.IMap`2',
  ///     TypeArgKind.string, TypeArgKind.string);
  /// ```
  ///
  /// Throws a [WinRTGenException] if no [TypeDef] matching
  /// [fullyQualifiedType] is found.
  factory GenericInterfaceProjection.from(
      String fullyQualifiedType, TypeArgKind typeArg1,
      [TypeArgKind? typeArg2]) {
    final typeDef = WinRTMetadataStore.findMetadata(fullyQualifiedType);
    if (fullyQualifiedType.endsWith('`2')) {
      if (typeArg2 == null) throw ArgumentError.notNull('typeArg2');
      return GenericInterfaceProjection._(typeDef, [typeArg1, typeArg2]);
    }
    return GenericInterfaceProjection._(typeDef, [typeArg1]);
  }

  String _formatTypeArgKind(TypeArgKind typeArgKind) => switch (typeArgKind) {
        TypeArgKind.double || TypeArgKind.float => 'double',
        TypeArgKind.nullableDouble || TypeArgKind.nullableFloat => 'double?',
        TypeArgKind.int16 ||
        TypeArgKind.int32 ||
        TypeArgKind.int64 ||
        TypeArgKind.uint8 ||
        TypeArgKind.uint16 ||
        TypeArgKind.uint32 ||
        TypeArgKind.uint64 =>
          'int',
        TypeArgKind.nullableInt16 ||
        TypeArgKind.nullableInt32 ||
        TypeArgKind.nullableInt64 ||
        TypeArgKind.nullableUint8 ||
        TypeArgKind.nullableUint16 ||
        TypeArgKind.nullableUint32 ||
        TypeArgKind.nullableUint64 =>
          'int?',
        TypeArgKind.inspectable ||
        TypeArgKind.nullableInspectable ||
        TypeArgKind.winrtEnum ||
        TypeArgKind.winrtFlagsEnum =>
          typeDef.genericParams[typeArgs.indexOf(typeArgKind)].name,
        _ => typeArgKind.name,
      };

  String get formattedTypeArgs => typeArgs.map(_formatTypeArgKind).join(', ');

  /// The generic type parameters that are used in the class header (e.g.,
  /// `<K, V>`, `<T>`).
  String get typeParams {
    final params = typeDef.genericParams
        .where((param) =>
            typeArgs[param.sequence].isEnum ||
            typeArgs[param.sequence].isInspectable)
        .map((param) => param.name);
    return params.isNotEmpty ? '<${params.join(', ')}>' : '';
  }

  /// The class name of the interface (e.g., `_IMapStringString`,
  /// `_IVectorIInspectable`).
  String get className {
    final args = typeArgs
        .map((arg) => arg.name.capitalize().stripQuestionMarkSuffix())
        .join();
    return '_$shortName$args';
  }

  @override
  String get classHeader =>
      'final class $className$typeParams extends $shortName<$formattedTypeArgs>';

  Set<String> get _superArguments => switch (shortName) {
        'IMap' || 'IMapView' || 'IVector' || 'IVectorView' => {
            if (typeArgs case [final typeArg1, final typeArg2]) ...{
              if (typeArg1.isEnum) 'enumKeyCreator: enumKeyCreator',
              if (typeArg2.isInspectable) 'creator: creator',
              if (typeArg2.isEnum) 'enumCreator: enumCreator'
            } else if (typeArgs case [final typeArg]) ...{
              if (typeArg.isInspectable) 'creator: creator',
              if (typeArg.isEnum) 'enumCreator: enumCreator'
            }
          },
        _ => {}
      };

  Set<String> get _namedConstructorArgs => {
        if (shortName case 'IMap' || 'IMapView' || 'IVector' || 'IVectorView')
          'required super.iterableIid',
        if (typeArgs case [final typeArg1, final typeArg2]) ...{
          if (typeArg1.isEnum) 'required this.enumKeyCreator',
          if (shortName case 'IMap' || 'IMapView' || 'IVector' || 'IVectorView'
              when typeArg1.isDouble)
            'super.doubleType',
          if (shortName case 'IMap' || 'IMapView' || 'IVector' || 'IVectorView'
              when typeArg1.isInt)
            'super.intType',
          if (typeArg2.isInspectable) 'required this.creator',
          if (typeArg2.isEnum) 'required this.enumCreator'
        } else if (typeArgs case [final typeArg]) ...{
          if (shortName case 'IMap' || 'IMapView' || 'IVector' || 'IVectorView'
              when typeArg.isDouble)
            'super.doubleType',
          if (shortName case 'IMap' || 'IMapView' || 'IVector' || 'IVectorView'
              when typeArg.isInt)
            'super.intType',
          if (typeArg.isInspectable) 'required this.creator',
          if (typeArg.isEnum) 'required this.enumCreator'
        }
      };

  @override
  String get namedConstructor {
    final namedConstructorArgs = _namedConstructorArgs;
    if (namedConstructorArgs.isEmpty) return '$className.fromPtr(super.ptr);';

    final constructorArgs = namedConstructorArgs.join(', ');
    if (_superArguments.isEmpty) {
      return '$className.fromPtr(super.ptr, {$constructorArgs});';
    }

    final superArgs = _superArguments.join(', ');
    return '$className.fromPtr(super.ptr, {$constructorArgs}) : super($superArgs);';
  }

  Set<String> get fields {
    final genericParams = typeDef.genericParams;
    return {
      if (typeArgs case [final typeArg1, final typeArg2]) ...{
        if (typeArg1.isEnum)
          'final EnumCreator<${genericParams[0].name}> enumKeyCreator;',
        if (typeArg2.isInspectable)
          'final COMObjectCreator<${genericParams[1].name}> creator;',
        if (typeArg2.isEnum)
          'final EnumCreator<${genericParams[1].name}> enumCreator;'
      } else if (typeArgs case [final typeArg]) ...{
        if (typeArg.isInspectable)
          'final COMObjectCreator<${genericParams[0].name}> creator;',
        if (typeArg.isEnum)
          'final EnumCreator<${genericParams[0].name}> enumCreator;'
      }
    };
  }

  void _handleClassVariableReturn(Method method) {
    final genericParamSequence =
        method.returnType.typeIdentifier.genericParamSequence;
    final arg = typeArgs[genericParamSequence];

    if (arg.isEnum || arg.isInspectable) {
      // If the arg is an enum or inspectable, change the name of the
      // TypeIdentifier to the name of the arg so that the TypeProjection can
      // project it accordingly.
      method.returnType.typeIdentifier =
          method.returnType.typeIdentifier.copyWith(name: arg.name);
    } else {
      // Otherwise, replace TypeIdentifier with an appropriate one for arg.
      method.returnType.typeIdentifier = arg.typeIdentifier
          .copyWith(genericParameterSequence: genericParamSequence);
    }
  }

  void _handleClassVariableParam(Parameter param, Method method) {
    final paramIndex =
        method.parameters.indexWhere((p) => p.name == param.name);
    final genericParamSequence = param.typeIdentifier.genericParamSequence;
    final arg = typeArgs[genericParamSequence];

    if (arg.isEnum || arg.isInspectable) {
      param.typeIdentifier = param.typeIdentifier.copyWith(name: arg.name);
      method.parameters[paramIndex] = param;
    } else {
      param.typeIdentifier = arg.typeIdentifier
          .copyWith(genericParameterSequence: genericParamSequence);
      method.parameters[paramIndex] = param;
    }
  }

  void _handleSimpleArrayClassVariableParam(Parameter param, Method method) {
    final typeArg = param.typeIdentifier.dereference();
    final paramIndex =
        method.parameters.indexWhere((p) => p.name == param.name);
    final genericParamSequence = typeArg.genericParamSequence;
    final arg = typeArgs[genericParamSequence];
    if (arg.isEnum || arg.isInspectable) {
      param.typeIdentifier = param.typeIdentifier
          .copyWith(typeArg: typeArg.copyWith(name: arg.name));
      method.parameters[paramIndex] = param;
    } else {
      param.typeIdentifier = param.typeIdentifier.copyWith(
          typeArg: arg.typeIdentifier
              .copyWith(genericParameterSequence: genericParamSequence));
      method.parameters[paramIndex] = param;
    }
  }

  /// The list of methods that need to be overridden in the concrete class.
  List<Method> get methodsToOverride {
    final methods = <Method>[];

    for (final method in typeDef.methods) {
      // TODO(halildurmus): Skip delegates as they are not supported yet
      if (method.returnType.isDelegate) continue;

      // Skip excluded methods
      if (excludedMethodsInConcreteClasses[typeDef.name]
              ?.contains(method.name) ??
          false) {
        continue;
      }

      // Whether to override the method
      var overrideMethod = false;

      // Clone the method so we can safely modify it without affecting the
      // original method
      final newMethod = method.clone();

      if (method.returnType.isClassVariableType) {
        _handleClassVariableReturn(newMethod);
        overrideMethod = true;
      }

      for (final param in method.parameters) {
        // Skip delegates for now
        if (param.isDelegate) continue;

        // Clone the parameter so we can safely modify it without affecting the
        // original param
        final newParam = param.clone();

        if (param.isClassVariableType) {
          _handleClassVariableParam(newParam, newMethod);
          overrideMethod = true;
        } else if (param.isSimpleArrayType) {
          if (param.typeIdentifier.typeArg?.isClassVariableType ?? false) {
            _handleSimpleArrayClassVariableParam(newParam, newMethod);
            overrideMethod = true;
          }
        }
      }

      if (overrideMethod) {
        methods.add(newMethod);
      }
    }

    return methods;
  }

  @override
  List<MethodProjection> get methodProjections {
    final projections = <MethodProjection>[];

    for (final method in methodsToOverride) {
      final vtableOffset = vtableStart +
          typeDef.methods.indexWhere((m) => m.token == method.token);

      if (method.isGetProperty) {
        projections.add(GetterProjection.create(method, vtableOffset));
      } else if (method.isSetProperty) {
        projections.add(SetterProjection.create(method, vtableOffset));
      } else {
        projections.add(MethodProjection.create(method, vtableOffset));
      }
    }

    return projections;
  }

  String get formattedMethodProjections {
    // IReference's getters should be treated specially as they are nullable
    // regardless of the type argument
    if (shortName == 'IReference') {
      return methodProjections
          .map((method) {
            var methodHeader = method.header;
            final isGenericGetter = method.method.isGetProperty &&
                switch (method.typeProjection.projectionKind) {
                  ProjectionKind.genericEnum ||
                  ProjectionKind.genericObject =>
                    true,
                  _ => false
                };
            final returnType = method.returnType;
            // Make the return type nullable if it is not generic
            if (!isGenericGetter) {
              methodHeader =
                  methodHeader.replaceFirst(returnType, '$returnType?');
            }
            final nullCheck =
                'if(_isNull) return null${isGenericGetter ? ' as $returnType' : ''};';
            final rest =
                method.toString().substring(method.toString().indexOf('{') + 1);
            // Insert a null check at the top before the FFI call
            return '$methodHeader {\n$nullCheck\n$rest';
          })
          .map((method) => '@override\n$method')
          .join('\n');
    }

    return methodProjections.map((method) => '@override\n$method').join('\n');
  }

  @override
  String get projection => '''
  $classHeader {
  $namedConstructor

  ${fields.join('\n')}

  $formattedMethodProjections
}
''';

  @override
  String toString() {
    try {
      return projection;
    } catch (_) {
      print(
          "Failed to project generic interface '$shortName<$formattedTypeArgs>'.");
      rethrow;
    }
  }
}
