// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../utils.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _ClassProjection on MethodProjection {
  String get methodReturnType {
    final typeIdentifierName = lastComponent(returnType.typeIdentifier.name);

    // Factory interface methods (constructors) cannot return null.
    final factoryInterfacePattern = RegExp(r'^I\w+Factory\d{0,2}$');
    if (factoryInterfacePattern.hasMatch(lastComponent(method.parent.name))) {
      return typeIdentifierName;
    }

    return nullable(typeIdentifierName);
  }

  String get nullCheck {
    if (!methodReturnType.endsWith('?')) return '';
    return '''
    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }
''';
  }

  String get returnStatement {
    final returnType = stripQuestionMarkSuffix(methodReturnType);
    return 'return $returnType.fromRawPointer(retValuePtr);';
  }
}

/// Method projection for methods that return a WinRT class (e.g. `Calendar`).
class ClassMethodProjection extends MethodProjection with _ClassProjection {
  ClassMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $methodReturnType $camelCasedName($methodParams) {
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
  $methodReturnType get $camelCasedName {
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
  set $camelCasedName(${parameters.first.type.exposedType} value) {
    ${ffiCall(params: 'value == null ? nullptr : value.ptr.ref.lpVtbl')}
  }
''';
}

/// Parameter projection for WinRT class parameters.
class ClassParameterProjection extends ParameterProjection {
  ClassParameterProjection(super.parameter);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier {
    if (type.isReferenceType || type.isSimpleArray) return '$identifier.ptr';

    return paramType.endsWith('?')
        ? '$name == null ? nullptr : $name.ptr.ref.lpVtbl'
        : '$name.ptr.ref.lpVtbl';
  }
}
