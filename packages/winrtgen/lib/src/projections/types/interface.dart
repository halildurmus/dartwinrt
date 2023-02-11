// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../utils.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _InterfaceProjection on MethodProjection {
  String get methodReturnType {
    final typeIdentifierName = lastComponent(returnType.typeIdentifier.name);
    // TODO: Remove this once methods that return IAsyncActionWithProgress and
    // IAsyncOperationWithProgress delegates are supported.
    if (typeIdentifierName.startsWith('IAsync')) return 'Pointer<COMObject>';

    // Factory interface methods (constructors) cannot return null.
    final factoryInterfacePattern = RegExp(r'^I\w+Factory\d{0,2}$');
    if (factoryInterfacePattern.hasMatch(lastComponent(method.parent.name))) {
      return typeIdentifierName;
    }

    // IIterable.First() cannot return null.
    if (method.name == 'First' &&
        (method.parent.interfaces.any((element) =>
            element.typeSpec?.name.endsWith('IIterable`1') ?? false))) {
      return typeIdentifierName;
    }

    // IVector(View).GetAt() cannot return null.
    if (method.name == 'GetAt' &&
        (method.parent.interfaces.any((element) =>
            (element.typeSpec?.name.endsWith('IVector`1') ?? false) ||
            (element.typeSpec?.name.endsWith('IVectorView`1') ?? false)))) {
      return typeIdentifierName;
    }

    return nullable(typeIdentifierName);
  }

  String get nullCheck {
    if (!methodReturnType.endsWith('?')) return '';
    return '''
    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }
''';
  }

  String get returnStatement {
    if (methodReturnType == 'Pointer<COMObject>') return 'return retValuePtr;';
    final returnType = stripQuestionMarkSuffix(methodReturnType);
    return 'return $returnType.fromRawPointer(retValuePtr);';
  }
}

/// Method projection for methods that return a WinRT interface (e.g.
/// `ICalendar`).
class InterfaceMethodProjection extends MethodProjection
    with _InterfaceProjection {
  InterfaceMethodProjection(super.method, super.vtableOffset);

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

/// Getter projection for WinRT interface getters.
class InterfaceGetterProjection extends GetterProjection
    with _InterfaceProjection {
  InterfaceGetterProjection(super.method, super.vtableOffset);

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

/// Setter projection for WinRT interface setters.
class InterfaceSetterProjection extends SetterProjection
    with _InterfaceProjection {
  InterfaceSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameter.type.exposedType} value) {
    ${ffiCall(params: 'value == null ? nullptr : value.ptr.ref.lpVtbl')}
  }
''';
}

/// Parameter projection for WinRT interface parameters.
class InterfaceParameterProjection extends ParameterProjection {
  InterfaceParameterProjection(super.parameter);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier {
    if (type.isReferenceType || type.isSimpleArray) {
      return paramType == 'Pointer<COMObject>' ? identifier : '$identifier.ptr';
    }

    return paramType.endsWith('?')
        ? '$name == null ? nullptr : $name.ptr.ref.lpVtbl'
        : '$name.ptr.ref.lpVtbl';
  }
}
