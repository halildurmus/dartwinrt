// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _ObjectProjection on MethodProjection {
  bool get isMethodFromPropertyValueStatics =>
      method.parent.name == 'Windows.Foundation.IPropertyValueStatics';

  String get methodReturnType {
    // IPropertyValueStatics' methods return 'IInspectable' in WinMD. Normally
    // we expose them as 'Object?' and return the underlying value they carry
    // (e.g. String, bool). However, since these methods are used to box values,
    // we need the 'IPropertyValue' interface to be returned instead of the
    // underlying value (except 'CreateEmpty' and 'CreateInspectable' methods).
    if (isMethodFromPropertyValueStatics) {
      return ['CreateEmpty', 'CreateInspectable'].contains(method.name)
          ? 'Pointer<COMObject>'
          : 'IPropertyValue';
    }

    return 'Object?';
  }

  String get nullCheck => isMethodFromPropertyValueStatics
      ? ''
      : '''
    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }''';

  String get returnStatement {
    if (isMethodFromPropertyValueStatics) {
      return ['CreateEmpty', 'CreateInspectable'].contains(method.name)
          ? 'return retValuePtr;'
          : 'return IPropertyValue.fromRawPointer(retValuePtr);';
    }

    return 'return IPropertyValue.fromRawPointer(retValuePtr).value;';
  }
}

/// Method projection for methods that return an `Object`.
class ObjectMethodProjection extends MethodProjection with _ObjectProjection {
  ObjectMethodProjection(super.method, super.vtableOffset);

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

/// Getter projection for `Object` getters.
class ObjectGetterProjection extends GetterProjection with _ObjectProjection {
  ObjectGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Object? get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    $returnStatement
  }
''';
}

/// Setter projection for `Object` setters.
class ObjectSetterProjection extends SetterProjection with _ObjectProjection {
  ObjectSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(Object? value) {
    ${ffiCall(params: 'value == null ? nullptr : boxValue(value).ref.lpVtbl')}
  }
''';
}

/// Parameter projection for `Object` parameters.
class ObjectParameterProjection extends ParameterProjection {
  ObjectParameterProjection(super.parameter);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier =>
      '$name == null ? nullptr : boxValue($name).ref.lpVtbl';
}
