// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../utilities/utilities.dart';
import '../projections.dart';

mixin _DefaultMixin on MethodProjection {
  @override
  String get returnStatement {
    if (returnType == 'void') return '';

    final creator = switch (paramProjection.creator) {
      '' => '$paramIdentifier.value',
      final creator => creator
    };

    if (paramProjection.creatorPreamble.isEmpty) return 'return $creator;';

    return '''
      ${paramProjection.creatorPreamble}
      return $creator;''';
  }
}

/// Default method projection for methods.
final class DefaultMethodProjection extends MethodProjection
    with _DefaultMixin {
  DefaultMethodProjection(super.method, super.vtableOffset);
}

/// Default getter projection for getters.
final class DefaultGetterProjection extends GetterProjection
    with _DefaultMixin {
  DefaultGetterProjection(super.method, super.vtableOffset);
}

/// Default setter projection for setters.
final class DefaultSetterProjection extends SetterProjection {
  DefaultSetterProjection(super.method, super.vtableOffset);
}

/// Default parameter projection for parameters.
final class DefaultParameterProjection extends ParameterProjection {
  DefaultParameterProjection(super.parameter);

  @override
  String get toListInto => '$identifier[i]';

  @override
  String get localIdentifier {
    // Handle the __xxSize identifier specially as simpleArray parameters are
    // projected as List. See the DefaultListParameterProjection class below.
    if (parameter.isSimpleArraySizeParam) {
      // e.g. __valueSize -> value
      final paramName = arrayNameFromSizeParamName(parameter.name);
      final arrayParam =
          method.parameters.firstWhere((p) => p.name == paramName);

      // FillArray style
      if (isInParam && arrayParam.isOutParam) return '${paramName}Size';

      // PassArray style
      if (isInParam && arrayParam.isInParam) return '$paramName.length';

      // ReceiveArray style
      if (isOutParam && parameter.isPointerType) {
        return 'p${paramName.capitalize()}Size';
      }
    }

    return identifier;
  }
}

mixin _DefaultListMixin on MethodProjection {
  ParameterProjection? _typeArgParamProjection;

  ParameterProjection get typeArgParamProjection =>
      _typeArgParamProjection ??= _cacheTypeArgParamProjection();

  ParameterProjection _cacheTypeArgParamProjection() {
    final param = method.returnType.clone();
    param.typeIdentifier = param.typeIdentifier.isReferenceType
        ? dereferenceType(dereferenceType(param.typeIdentifier))
        : dereferenceType(param.typeIdentifier);
    return ParameterProjection.create(param);
  }

  String get typeArg => typeArgParamProjection.type;

  @override
  String get returnType => 'List<$typeArg>';

  String get toListIdentifier =>
      typeArgParamProjection.toListIdentifier.isNotEmpty
          ? typeArgParamProjection.toListIdentifier
          : 'toList';

  String get sizeIdentifier => 'retValueSize';

  @override
  String get returnStatement {
    final buffer = StringBuffer()
      ..write('return $paramIdentifier.value.$toListIdentifier(');
    if (typeArgParamProjection.toListArg.isNotEmpty) {
      buffer.write('${typeArgParamProjection.toListArg}, ');
    }
    buffer.write('length: $sizeIdentifier.value)');
    if (typeArgParamProjection.toListCreator.isNotEmpty) {
      buffer.write(typeArgParamProjection.toListCreator);
    }
    buffer.write(';');
    return buffer.toString();
  }

  @override
  List<String> get preambles => [
        'final $sizeIdentifier = calloc<Uint32>();',
        'final $paramIdentifier = calloc<${typeProjection.nativeType}>();'
      ];

  @override
  List<String> get postambles =>
      ['free($sizeIdentifier);', 'free($paramIdentifier);'];
}

/// Default method projection for methods that return `List`.
base class DefaultListMethodProjection extends MethodProjection
    with _DefaultListMixin {
  DefaultListMethodProjection(super.method, super.vtableOffset);
}

/// Default getter projection for `List` getters.
base class DefaultListGetterProjection extends GetterProjection
    with _DefaultListMixin {
  DefaultListGetterProjection(super.method, super.vtableOffset);
}

/// Default parameter projection for `List<T>` parameters (defined as
/// `simpleArrayType` in WinMD).
base class DefaultListParameterProjection extends ParameterProjection {
  DefaultListParameterProjection(super.parameter)
      : sizeParam = parameter.parent.parameters
            .where((p) => arrayNameFromSizeParamName(p.name) == parameter.name)
            .firstOrNull;

  final Parameter? sizeParam;

  ParameterProjection? _typeArgParamProjection;

  ParameterProjection get typeArgParamProjection =>
      _typeArgParamProjection ??= _cacheTypeArgParamProjection();

  ParameterProjection _cacheTypeArgParamProjection() {
    final param = parameter.clone();
    param.typeIdentifier = param.typeIdentifier.isReferenceType
        ? dereferenceType(dereferenceType(param.typeIdentifier))
        : dereferenceType(param.typeIdentifier);
    return ParameterProjection.create(param);
  }

  // e.g. __dataSize -> dataSize
  String get sizeParamName => stripLeadingUnderscores(sizeParam?.name ?? '');

  String get sizeIdentifier => 'p${identifier.capitalize()}Size';

  String get typeArg => typeArgParamProjection.type;

  @override
  String get type => 'List<${typeArgParamProjection.type}>';

  String get nativeType => typeArgParamProjection.typeProjection.nativeType;

  String get receiveArrayStyleNativeType =>
      TypeProjection(dereferenceType(parameter.typeIdentifier)).nativeType;

  bool get isFillArrayStyleParam =>
      (sizeParam?.isInParam ?? false) && isOutParam;

  bool get isPassArrayStyleParam =>
      (sizeParam?.isInParam ?? false) && isInParam;

  bool get isReceiveArrayStyleParam =>
      (sizeParam?.isOutParam ?? false) && isOutParam;

  /// Whether the method this parameter belongs to returns `void`.
  bool get isVoidMethod =>
      parameter.parent.returnType.typeIdentifier.isVoidType;

  String get toListIdentifier =>
      typeArgParamProjection.toListIdentifier.isNotEmpty
          ? typeArgParamProjection.toListIdentifier
          : 'toList';

  String get toListCreatorIdentifier =>
      isReceiveArrayStyleParam ? '$localIdentifier.value' : localIdentifier;

  String get toListLengthIdentifier =>
      isFillArrayStyleParam ? fillArraySizeVariable : '$sizeIdentifier.value';

  @override
  String get creator {
    final buffer = StringBuffer()
      ..write('$toListCreatorIdentifier.$toListIdentifier(');
    if (typeArgParamProjection.toListArg.isNotEmpty) {
      buffer.write('${typeArgParamProjection.toListArg}, ');
    }
    buffer.write('length: $toListLengthIdentifier)');
    if (typeArgParamProjection.toListCreator.isNotEmpty) {
      buffer.write(typeArgParamProjection.toListCreator);
    }
    return buffer.toString();
  }

  /// Returns the name of the variable to use as the array size.
  ///
  /// On `void` methods (e.g. `DataReader.readBytes`), `xxSize` parameter from
  /// the method is used.
  ///
  /// On non-void methods (e.g. `IVector.getMany`), the number of items that
  /// were retrieved is returned so `retValuePtr.value` is used instead.
  String get fillArraySizeVariable => isVoidMethod
      ? sizeParamName
      // Some getter parameters don't have a name so use 'retValuePtr' instead
      : method.returnType.name.isNotEmpty
          ? '${method.returnType.name}.value'
          : 'retValuePtr.value';

  List<String> get fillArrayPreambles =>
      ['final $localIdentifier = calloc<$nativeType>($sizeParamName);'];

  List<String> get fillArrayPostambles => [
        '''
    if ($fillArraySizeVariable > 0) {
      $identifier.addAll($creator);
    }''',
        'free($localIdentifier);'
      ];

  List<String> get passArrayPreambles => [
        'final $localIdentifier = calloc<$nativeType>($identifier.length);',
        '''
    for (var i = 0; i < $identifier.length; i++) {
      $localIdentifier[i] = ${typeArgParamProjection.toListInto};
    }'''
      ];

  List<String> get passArrayPostambles => ['free($localIdentifier);'];

  List<String> get receiveArrayPreambles => [
        'final $sizeIdentifier = calloc<Uint32>();',
        'final $localIdentifier = calloc<$receiveArrayStyleNativeType>();'
      ];

  List<String> get receiveArrayPostambles => [
        '''
    if ($sizeIdentifier.value > 0) {
      $identifier.addAll($creator);
    }''',
        'free($sizeIdentifier);',
        'free($localIdentifier);'
      ];

  @override
  List<String> get preambles {
    if (isFillArrayStyleParam) return fillArrayPreambles;
    if (isPassArrayStyleParam) return passArrayPreambles;
    return receiveArrayPreambles;
  }

  @override
  List<String> get postambles {
    if (isFillArrayStyleParam) return fillArrayPostambles;
    if (isPassArrayStyleParam) return passArrayPostambles;
    return receiveArrayPostambles;
  }

  @override
  bool get needsAllocation => true;

  // TODO(halildurmus): Remove this
  @override
  String get localIdentifier => !isOutParam && !isInParam
      ? identifier
      : 'p${identifier.capitalize()}Array';
}
