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

mixin _ObjectMixin on MethodProjection {
  bool get isMethodFromPropertyValueStatics =>
      method.parent.name == 'Windows.Foundation.IPropertyValueStatics';

  @override
  String get returnType {
    if (returnTypeProjection.isObjectType) {
      // IPropertyValueStatics' methods return 'IInspectable' in WinMD (i.e.
      // boxed value). Normally we expose them as 'Object?' and return the
      // underlying value they carry (e.g. String, bool). However, since these
      // methods are used when boxing values, we need the 'IPropertyValue'
      // interface to be returned instead of the underlying value (except for
      // 'CreateEmpty' and 'CreateInspectable' methods).
      if (isMethodFromPropertyValueStatics) {
        return ['CreateEmpty', 'CreateInspectable'].contains(method.name)
            ? 'Pointer<COMObject>'
            : 'IPropertyValue';
      }

      return 'Object?';
    }

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
    if (returnTypeProjection.isObjectType) {
      if (isMethodFromPropertyValueStatics) {
        return ['CreateEmpty', 'CreateInspectable'].contains(method.name)
            ? 'return retValuePtr;'
            : 'return IPropertyValue.fromRawPointer(retValuePtr);';
      }

      return 'return IPropertyValue.fromRawPointer(retValuePtr).value;';
    }

    if (returnType == 'Pointer<COMObject>') return 'return retValuePtr;';
    final interfaceName = stripQuestionMarkSuffix(returnType);
    return 'return $interfaceName.fromRawPointer(retValuePtr);';
  }
}

/// Method projection for methods that return a WinRT class (e.g. `Calendar`),
/// interface (e.g. `ICalendar`), or `boxed` value.
class ObjectMethodProjection extends MethodProjection with _ObjectMixin {
  ObjectMethodProjection(super.method, super.vtableOffset);

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

/// Getter projection for WinRT class, interface, or `boxed` value getters.
class ObjectGetterProjection extends GetterProjection with _ObjectMixin {
  ObjectGetterProjection(super.method, super.vtableOffset);

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

/// Setter projection for WinRT class, interface, or `boxed` value setters.
class ObjectSetterProjection extends SetterProjection with _ObjectMixin {
  ObjectSetterProjection(super.method, super.vtableOffset);

  String get identifier {
    if (param.typeProjection.isObjectType) {
      return 'value?.intoBox().ref.lpVtbl ?? nullptr';
    }

    return 'value == null ? nullptr : value.ptr.ref.lpVtbl';
  }

  @override
  String get methodProjection => '''
  set $camelCasedName(${param.type} value) {
    ${ffiCall(params: identifier)}
  }
''';
}

/// Parameter projection for WinRT class, interface, or `boxed` value
/// parameters.
class ObjectParameterProjection extends ParameterProjection {
  ObjectParameterProjection(super.parameter);

  @override
  String get type {
    if (typeProjection.isObjectType) return 'Object?';

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
    if (typeProjection.isObjectType) {
      return '$name?.intoBox().ref.lpVtbl ?? nullptr';
    }

    if (typeProjection.isReferenceType || typeProjection.isSimpleArray) {
      return type == 'Pointer<COMObject>' ? identifier : '$identifier.ptr';
    }

    return type.endsWith('?')
        ? '$name == null ? nullptr : $name.ptr.ref.lpVtbl'
        : '$name.ptr.ref.lpVtbl';
  }
}

/// Parameter projection for `List<T extends IInspectable>` or `List<Object?>`
/// parameters.
class ObjectListParameterProjection extends DefaultListParameterProjection {
  ObjectListParameterProjection(super.parameter);

  String get shortName => typeArgProjection.typeIdentifier.shortName;

  @override
  String get type =>
      typeArgProjection.isObjectType ? 'List<Object?>' : 'List<$shortName>';

  @override
  String get fillArrayPreamble =>
      'final pArray = calloc<COMObject>(valueSize);';

  @override
  String get passArrayPreamble {
    return [
      '''
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {''',
      if (typeArgProjection.isObjectType)
        'pArray[i] = value.elementAt(i)?.intoBox().ref ?? PropertyValue.createEmpty().ref;'
      else
        'pArray[i] = value.elementAt(i).ptr.ref;',
      '}'
    ].join('\n');
  }

  @override
  String get receiveArrayPreamble => '''
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<COMObject>>();''';

  @override
  String get fillArrayPostamble {
    return [
      'if (retValuePtr.value > 0) {',
      if (typeArgProjection.isObjectType)
        '''
      value.addAll(pArray.value
          .toList(IPropertyValue.fromRawPointer, length: pValueSize.value)
          .map((e) => e.value));'''
      else
        '''
      value.addAll(pArray
          .toList($shortName.fromRawPointer, length: valueSize));''',
      '}',
      'free(pArray);',
    ].join('\n');
  }

  @override
  String get receiveArrayPostamble {
    return [
      if (typeArgProjection.isObjectType)
        '''
    value.addAll(pArray.value
        .toList(IPropertyValue.fromRawPointer, length: pValueSize.value)
        .map((e) => e.value));'''
      else
        '''
    value.addAll(pArray.value
        .toList($shortName.fromRawPointer, length: pValueSize.value));''',
      'free(pValueSize);',
      'free(pArray);',
    ].join('\n');
  }
}
