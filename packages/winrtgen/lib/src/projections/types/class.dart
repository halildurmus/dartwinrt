// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../../utils.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _ClassProjection on MethodProjection {
  @override
  String get returnType {
    final className = returnTypeProjection.typeIdentifier.shortName;

    // Factory interface methods (constructors) cannot return null.
    final factoryInterfacePattern = RegExp(r'^I\w+Factory\d{0,2}$');
    if (factoryInterfacePattern.hasMatch(method.parent.shortName)) {
      return className;
    }

    // Otherwise, the type must be nullable.
    return nullable(className);
  }

  String get nullCheck {
    if (!returnType.endsWith('?')) return '';
    return '''
    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }
''';
  }

  String get returnStatement {
    final className = stripQuestionMarkSuffix(returnType);
    return 'return $className.fromRawPointer(retValuePtr);';
  }
}

/// Method projection for methods that return a WinRT class (e.g. `Calendar`).
class ClassMethodProjection extends MethodProjection with _ClassProjection {
  ClassMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    $parametersPostamble

    $nullCheck

    $returnStatement
  }
''';
}

/// Getter projection for WinRT class getters.
class ClassGetterProjection extends GetterProjection with _ClassProjection {
  ClassGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    $returnStatement
  }
''';
}

/// Setter projection for WinRT class setters.
class ClassSetterProjection extends SetterProjection with _ClassProjection {
  ClassSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameter.type} value) {
    ${ffiCall(params: 'value == null ? nullptr : value.ptr.ref.lpVtbl')}
  }
''';
}

/// Parameter projection for WinRT class parameters.
class ClassParameterProjection extends ParameterProjection {
  ClassParameterProjection(super.parameter);

  @override
  String get type {
    final className = typeProjection.typeIdentifier.shortName;
    // TODO: Reconsider this in the future.
    if (typeProjection.isReferenceType) return className;

    // Parameters of factory interface methods (constructors) cannot be null.
    final factoryInterfacePattern = RegExp(r'^I\w+Factory\d{0,2}$');
    if (factoryInterfacePattern.hasMatch(method.parent.shortName)) {
      return className;
    }

    // Otherwise, the type must be nullable.
    return nullable(className);
  }

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier {
    if (typeProjection.isReferenceType || typeProjection.isSimpleArray) {
      return '$identifier.ptr';
    }

    return type.endsWith('?')
        ? '$name == null ? nullptr : $name.ptr.ref.lpVtbl'
        : '$name.ptr.ref.lpVtbl';
  }
}
