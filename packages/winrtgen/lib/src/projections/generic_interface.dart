// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart' hide TypeTuple;

import '../constants/exclusions.dart';
import '../extensions/extensions.dart';
import '../models/models.dart';
import '../utils.dart';
import 'getter.dart';
import 'interface.dart';
import 'method.dart';
import 'setter.dart';
import 'types/generic.dart';

class GenericInterfaceProjection extends InterfaceProjection {
  GenericInterfaceProjection._(super.typeDef, this.typeArgs);

  /// The type arguments of the interface (e.g. `[TypeArg.string]`,
  /// `[TypeArg.string, TypeArg.nullableObject]`).
  final List<TypeArg> typeArgs;

  /// Attempts to create a [GenericInterfaceProjection] from
  /// [fullyQualifiedType], [typeArg1], and optionally [typeArg2] by searching
  /// its [TypeDef].
  ///
  /// ```dart
  /// final projection = GenericInterfaceProjection.from(
  ///     'Windows.Foundation.IAsyncOperation`1', TypeArg.string);
  /// ```
  ///
  /// [typeArg2] must be specified if [fullyQualifiedType] has two type
  /// arguments (e.g. `Windows.Foundation.Collections.IMap`2`).
  ///
  /// ```dart
  /// final projection = GenericInterfaceProjection.from(
  ///     'Windows.Foundation.Collections.IMap`2',
  ///     TypeArg.string, TypeArg.string);
  /// ```
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedType] is
  /// found.
  factory GenericInterfaceProjection.from(
      String fullyQualifiedType, TypeArg typeArg1,
      [TypeArg? typeArg2]) {
    if (fullyQualifiedType.endsWith('`2') && typeArg2 == null) {
      throw ArgumentError.notNull('typeArg2');
    }

    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedType);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedType");
    return GenericInterfaceProjection._(
        typeDef, [typeArg1, if (fullyQualifiedType.endsWith('`2')) typeArg2!]);
  }

  String get formattedTypeArgs => typeArgs.map((arg) {
        switch (arg) {
          case TypeArg.double:
          case TypeArg.float:
            return 'double';
          case TypeArg.nullableDouble:
          case TypeArg.nullableFloat:
            return 'double?';
          case TypeArg.int16:
          case TypeArg.int32:
          case TypeArg.int64:
          case TypeArg.uint8:
          case TypeArg.uint16:
          case TypeArg.uint32:
          case TypeArg.uint64:
            return 'int';
          case TypeArg.nullableInt16:
          case TypeArg.nullableInt32:
          case TypeArg.nullableInt64:
          case TypeArg.nullableUint8:
          case TypeArg.nullableUint16:
          case TypeArg.nullableUint32:
          case TypeArg.nullableUint64:
            return 'int?';
          case TypeArg.inspectable:
          case TypeArg.nullableInspectable:
          case TypeArg.winrtEnum:
          case TypeArg.winrtFlagsEnum:
            return typeDef.genericParams[typeArgs.indexOf(arg)].name;
          default:
            return arg.name;
        }
      }).join(', ');

  /// The generic type parameters that are used in the class header (e.g.
  /// `<K, V>`, `<T>`).
  String get typeParams {
    final params = typeDef.genericParams
        .where((param) =>
            typeArgs[param.sequence].isEnum ||
            typeArgs[param.sequence].isInspectable)
        .map((param) => param.name);
    return params.isNotEmpty ? '<${params.join(', ')}>' : '';
  }

  /// The class name of the interface (e.g. `_IMapStringString`,
  /// `_IVectorIInspectable`).
  String get className {
    final args = typeArgs
        .map((arg) => stripQuestionMarkSuffix(
            arg.name[0].toUpperCase() + arg.name.substring(1)))
        .join();
    return '_$shortName$args';
  }

  @override
  String get classHeader =>
      'class $className$typeParams extends $shortName<$formattedTypeArgs>';

  @override
  String get namedConstructor {
    final constructorArgs = <String>{
      if (['IMap', 'IMapView', 'IVector', 'IVectorView'].contains(shortName))
        'required super.iterableIid',
      if (typeArgs.length == 2) ...[
        if (typeArgs.first.isEnum) 'super.enumKeyCreator',
        if (['IMap', 'IMapView', 'IVector', 'IVectorView']
                .contains(shortName) &&
            typeArgs.first.isInt)
          'super.intType',
        if (typeArgs.last.isInspectable) 'super.creator',
        if (typeArgs.last.isEnum) 'super.enumCreator'
      ] else ...[
        if (['IMap', 'IMapView', 'IVector', 'IVectorView']
                .contains(shortName) &&
            typeArgs.first.isInt)
          'super.intType',
        if (typeArgs.first.isInspectable) 'super.creator',
        if (typeArgs.first.isEnum) 'super.enumCreator'
      ]
    };

    if (constructorArgs.isNotEmpty) {
      final args = constructorArgs.join(', ');
      return '$className.fromPtr(super.ptr, {$args});';
    }

    return '$className.fromPtr(super.ptr);';
  }

  void _handleClassVariableReturn(Method method) {
    final genericParamSequence =
        method.returnType.typeIdentifier.genericParameterSequence!;
    final arg = typeArgs[genericParamSequence];

    if (arg.isEnum || arg.isInspectable) {
      // If the arg is an enum or inspectable, change the name of the
      // TypeIdentifier to the name of the arg so that the TypeProjection can
      // project it accordingly.
      method.returnType.typeIdentifier =
          method.returnType.typeIdentifier.copyWith(name: arg.name);
    } else {
      // Otherwise, replace TypeIdentifier with an appropriate one for arg.
      method.returnType.typeIdentifier = arg.typeIdentifier;
    }
  }

  void _handleClassVariableParam(Parameter param, Method method) {
    final paramIndex =
        method.parameters.indexWhere((p) => p.name == param.name);
    final genericParamSequence = param.typeIdentifier.genericParameterSequence!;
    final arg = typeArgs[genericParamSequence];

    if (arg.isEnum || arg.isInspectable) {
      param.typeIdentifier = param.typeIdentifier.copyWith(name: arg.name);
      method.parameters[paramIndex] = param;
    } else {
      param.typeIdentifier = arg.typeIdentifier;
      method.parameters[paramIndex] = param;
    }
  }

  void _handleSimpleArrayClassVariableParam(Parameter param, Method method) {
    final paramIndex =
        method.parameters.indexWhere((p) => p.name == param.name);
    final genericParamSequence =
        param.typeIdentifier.typeArg!.genericParameterSequence!;
    final arg = typeArgs[genericParamSequence];

    if (arg.isEnum || arg.isInspectable) {
      param.typeIdentifier = param.typeIdentifier.copyWith(
          typeArg: param.typeIdentifier.typeArg!.copyWith(name: arg.name));
      method.parameters[paramIndex] = param;
    } else {
      param.typeIdentifier =
          param.typeIdentifier.copyWith(typeArg: arg.typeIdentifier);
      method.parameters[paramIndex] = param;
    }
  }

  /// The list of methods that need to be overridden in the concrete class.
  List<Method> get methodsToOverride {
    final methods = <Method>[];

    for (final method in typeDef.methods) {
      // TODO: Skip delegates as they are not supported yet
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
        } else if (param.isSimpleArrayType &&
            param.typeIdentifier.typeArg!.isClassVariableType) {
          _handleSimpleArrayClassVariableParam(newParam, newMethod);
          overrideMethod = true;
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
            var methodHeader = method.methodHeader;
            final isGenericGetter = method is GenericEnumGetterProjection ||
                method is GenericObjectGetterProjection;
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
  String toString() => '''
  $classHeader {
  $namedConstructor

  $formattedMethodProjections
}
''';
}
