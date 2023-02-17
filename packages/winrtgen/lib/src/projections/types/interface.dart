// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../../utils.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _InterfaceProjection on MethodProjection {
  @override
  String get returnType {
    final interfaceName = returnTypeProjection.typeIdentifier.shortName;
    // TODO: Remove this once methods that return IAsyncActionWithProgress and
    // IAsyncOperationWithProgress delegates are supported.
    if (interfaceName.startsWith('IAsync')) return 'Pointer<COMObject>';

    // Factory interface methods (constructors) cannot return null.
    final factoryInterfacePattern = RegExp(r'^I\w+Factory\d{0,2}$');
    if (factoryInterfacePattern.hasMatch(method.parent.shortName)) {
      return interfaceName;
    }

    // IIterable.First() cannot return null.
    if (method.name == 'First' &&
        (method.parent.interfaces.any((element) =>
            element.typeSpec?.name.endsWith('IIterable`1') ?? false))) {
      return interfaceName;
    }

    // IVector(View).GetAt() cannot return null.
    if (method.name == 'GetAt' &&
        (method.parent.interfaces.any((element) =>
            (element.typeSpec?.name.endsWith('IVector`1') ?? false) ||
            (element.typeSpec?.name.endsWith('IVectorView`1') ?? false)))) {
      return interfaceName;
    }

    return nullable(interfaceName);
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
    if (returnType == 'Pointer<COMObject>') return 'return retValuePtr;';
    final interfaceName = stripQuestionMarkSuffix(returnType);
    return 'return $interfaceName.fromRawPointer(retValuePtr);';
  }
}

/// Method projection for methods that return a WinRT interface (e.g.
/// `ICalendar`).
class InterfaceMethodProjection extends MethodProjection
    with _InterfaceProjection {
  InterfaceMethodProjection(super.method, super.vtableOffset);

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

/// Getter projection for WinRT interface getters.
class InterfaceGetterProjection extends GetterProjection
    with _InterfaceProjection {
  InterfaceGetterProjection(super.method, super.vtableOffset);

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

/// Setter projection for WinRT interface setters.
class InterfaceSetterProjection extends SetterProjection
    with _InterfaceProjection {
  InterfaceSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameter.type} value) {
    ${ffiCall(params: 'value == null ? nullptr : value.ptr.ref.lpVtbl')}
  }
''';
}

/// Parameter projection for WinRT interface parameters.
class InterfaceParameterProjection extends ParameterProjection {
  InterfaceParameterProjection(super.parameter);

  @override
  String get type {
    final shortName = typeProjection.typeIdentifier.shortName;
    // TODO: Reconsider this in the future.
    if (typeProjection.isReferenceType) return shortName;

    // Parameters of factory interface methods (constructors) cannot be null.
    final factoryInterfacePattern = RegExp(r'^I\w+Factory\d{0,2}$');
    if (factoryInterfacePattern.hasMatch(method.parent.shortName)) {
      return shortName;
    }

    // Otherwise, the parameter must be nullable.
    return nullable(shortName);
  }

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier {
    if (typeProjection.isReferenceType || typeProjection.isSimpleArray) {
      return type == 'Pointer<COMObject>' ? identifier : '$identifier.ptr';
    }

    return type.endsWith('?')
        ? '$name == null ? nullptr : $name.ptr.ref.lpVtbl'
        : '$name.ptr.ref.lpVtbl';
  }
}

/// Parameter projection for `List<T extends IInspectable>` parameters.
class InterfaceListParameterProjection extends DefaultListParameterProjection {
  InterfaceListParameterProjection(super.parameter);

  String get shortName => typeArgProjection.typeIdentifier.shortName;

  @override
  String get type => 'List<$shortName>';

  @override
  String get passArrayPreamble => '''
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i).ptr.ref;
    }
''';

  @override
  String get receiveArrayPreamble => '''
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<COMObject>>();
''';

  @override
  String get fillArrayPostamble => '''
    value.addAll(pArray
        .toList($shortName.fromRawPointer, length: valueSize));
    free(pArray);
''';

  @override
  String get receiveArrayPostamble => '''
    value.addAll(pArray.value
        .toList($shortName.fromRawPointer, length: pValueSize.value));
    free(pValueSize);
    free(pArray);
''';
}
