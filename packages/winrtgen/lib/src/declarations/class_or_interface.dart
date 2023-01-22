// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:win32gen/win32gen.dart';

import '../utils.dart';
import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

mixin _ClassOrInterfaceProjection on WinRTMethodProjection {
  String get methodReturnType {
    // The return types of methods in the IPropertyValueStatics are specified
    // as 'object' in WinMD. However, these methods actually return the
    // IPropertyValue interface (except for the CreateEmpty() and
    // CreateInspectable() methods, which return Pointer<COMObject>).
    final isMethodFromPropertyValueStatics =
        method.parent.name == 'Windows.Foundation.IPropertyValueStatics';
    if (isMethodFromPropertyValueStatics) {
      return ['CreateEmpty', 'CreateInspectable'].contains(method.name)
          ? 'Pointer<COMObject>'
          : 'IPropertyValue';
    }

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
    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }
''';
  }

  String get returnStatement {
    if (methodReturnType == 'Pointer<COMObject>') return 'return retValuePtr;';

    if (methodReturnType == 'Object?') {
      return 'return IPropertyValue.fromRawPointer(retValuePtr).value;';
    }

    return 'return ${stripQuestionMarkSuffix(methodReturnType)}.fromRawPointer(retValuePtr);';
  }
}

class WinRTClassOrInterfaceMethodProjection extends WinRTMethodProjection
    with _ClassOrInterfaceProjection {
  WinRTClassOrInterfaceMethodProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
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

class WinRTClassOrInterfaceGetterProjection extends WinRTGetPropertyProjection
    with _ClassOrInterfaceProjection {
  WinRTClassOrInterfaceGetterProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      $methodReturnType get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall(freeRetValOnFailure: true)}

        $nullCheck

        $returnStatement
      }
''';
}

class WinRTClassOrInterfaceSetterProjection extends WinRTSetPropertyProjection
    with _ClassOrInterfaceProjection {
  WinRTClassOrInterfaceSetterProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(${parameters.first.type.methodParamType} value) {
        ${ffiCall(params: 'value == null ? nullptr : value.ptr.ref.lpVtbl')}
      }
  ''';
}

class WinRTClassOrInterfaceParameterProjection
    extends WinRTParameterProjection {
  WinRTClassOrInterfaceParameterProjection(
      super.method, super.name, super.type);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier {
    if (type.isReferenceType || type.isSimpleArrayType) {
      return paramType == 'Pointer<COMObject>' ? identifier : '$identifier.ptr';
    }

    if (paramType == 'Object?') {
      return '$name == null ? nullptr : boxValue($name).ref.lpVtbl';
    }

    if (type.nativeType == 'LPVTBL') {
      return paramType.endsWith('?')
          ? '$name == null ? nullptr : $name.ptr.ref.lpVtbl'
          : '$name.ptr.ref.lpVtbl';
    }

    return '';
  }
}
