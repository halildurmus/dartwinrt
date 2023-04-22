// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../../utils.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import '../type.dart';
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
        return switch (method.name) {
          'CreateEmpty' || 'CreateInspectable' => 'Pointer<COMObject>',
          _ => 'IPropertyValue'
        };
      }

      return 'Object?';
    }

    final shortName = returnTypeProjection.typeIdentifier.shortName;
    // TODO: Remove this once methods that return IAsyncActionWithProgress and
    // IAsyncOperationWithProgress delegates are supported.
    if (shortName.startsWith('IAsync')) return 'Pointer<COMObject>';

    // Factory interface methods (constructors) cannot return null.
    if (method.parent.isFactoryInterface) return shortName;

    // Methods that return collection interfaces cannot return null.
    if (method.returnType.typeIdentifier.type?.isCollectionObject ?? false) {
      return shortName;
    }

    // IIterable.First() cannot return null.
    if (method.name == 'First' && method.parent.isCollectionObject) {
      return shortName;
    }

    // IVector(View).GetAt() cannot return null.
    if (method.name == 'GetAt' &&
        (method.parent.interfaces.any((interface) =>
            (interface.typeSpec?.name.endsWith('IVector`1') ?? false) ||
            (interface.typeSpec?.name.endsWith('IVectorView`1') ?? false)))) {
      return shortName;
    }

    return nullable(shortName);
  }

  String get nullCheck {
    if (!isNullable) return '';
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
        return switch (method.name) {
          'CreateEmpty' || 'CreateInspectable' => 'return retValuePtr;',
          _ => 'return IPropertyValue.fromPtr(retValuePtr);'
        };
      }

      return 'return IPropertyValue.fromPtr(retValuePtr).value;';
    }

    if (returnType == 'Pointer<COMObject>') return 'return retValuePtr;';
    final interfaceName = stripQuestionMarkSuffix(returnType);
    return 'return $interfaceName.fromPtr(retValuePtr);';
  }

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    $returnStatement
  }
''';
}

/// Method projection for methods that return WinRT class (e.g. `Calendar`),
/// interface (e.g. `ICalendar`), or `boxed` value.
class ObjectMethodProjection extends MethodProjection with _ObjectMixin {
  ObjectMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for WinRT class, interface, or `boxed` value getters.
class ObjectGetterProjection extends GetterProjection with _ObjectMixin {
  ObjectGetterProjection(super.method, super.vtableOffset);
}

mixin _ObjectListMixin on MethodProjection {
  TypeProjection get typeArgProjection =>
      TypeProjection(method.returnType.typeIdentifier.isReferenceType
          ? method.returnType.typeIdentifier.typeArg!.typeArg!
          : method.returnType.typeIdentifier.typeArg!);

  String get shortName => typeArgProjection.typeIdentifier.shortName;

  @override
  String get returnType =>
      typeArgProjection.isObjectType ? 'List<Object?>' : 'List<$shortName>';

  String get returnStatement {
    if (typeArgProjection.isObjectType) {
      return 'return retValuePtr.value.toObjectList(length: pValueSize.value);';
    }

    return '''
      return retValuePtr.value
          .toList($shortName.fromPtr, length: pValueSize.value);''';
  }

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final pValueSize = calloc<Uint32>();
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      ${ffiCall()}

      $returnStatement
    } finally {
      free(pValueSize);
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return `List` of WinRT class,
/// interface, or `boxed` value.
class ObjectListMethodProjection extends MethodProjection
    with _ObjectListMixin {
  ObjectListMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for getters that return a `List` of WinRT class,
/// interface, or `boxed` value.
class ObjectListGetterProjection extends GetterProjection
    with _ObjectListMixin {
  ObjectListGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for WinRT class, interface, or `boxed` value setters.
class ObjectSetterProjection extends SetterProjection with _ObjectMixin {
  ObjectSetterProjection(super.method, super.vtableOffset);

  String get identifier => param.typeProjection.isObjectType
      ? 'value?.intoBox().ptr.ref.lpVtbl ?? nullptr'
      : 'value == null ? nullptr : value.ptr.ref.lpVtbl';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(identifier: identifier)}
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
    if (method.parent.isFactoryInterface) return shortName;

    // Collection interface parameters cannot be null.
    if (typeProjection.typeIdentifier.type?.isCollectionObject ?? false) {
      return shortName;
    }

    // Otherwise, the parameter must be nullable.
    return nullable(shortName);
  }

  @override
  String get preamble {
    if (typeProjection.isReferenceType || typeProjection.isSimpleArray) {
      return '';
    }

    final String expression;
    if (typeProjection.isObjectType) {
      expression = '$identifier?.intoBox().ptr.ref.lpVtbl ?? nullptr';
    } else if (type.startsWith('IIterable<')) {
      final iid = typeProjection.typeIdentifier.iid;
      final nullCheck = isNullable ? '$identifier == null ? nullptr : ' : '';
      expression =
          '${nullCheck}IInspectable($identifier.toInterface(${quote(iid)})).ptr.ref.lpVtbl';
    } else {
      expression = isNullable
          ? '$identifier == null ? nullptr : $identifier.ptr.ref.lpVtbl'
          : '$identifier.ptr.ref.lpVtbl';
    }

    return 'final ${name}Ptr = $expression;';
  }

  @override
  String get localIdentifier {
    if (typeProjection.isReferenceType || typeProjection.isSimpleArray) {
      return type == 'Pointer<COMObject>' ? identifier : '$identifier.ptr';
    }

    return '${name}Ptr';
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
        '''
    final element = value.elementAt(i);
    if (element == null) continue;
    pArray[i] = element.intoBox().ptr.ref;'''
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
    final addAll = typeArgProjection.isObjectType
        ? 'value.addAll(pArray.toObjectList(length: $fillArraySizeVariable));'
        : 'value.addAll(pArray.toList($shortName.fromPtr, length: $fillArraySizeVariable));';
    return '''
    if ($fillArraySizeVariable > 0) {
      $addAll
    }
    free(pArray);''';
  }

  @override
  String get receiveArrayPostamble {
    return [
      'if (pValueSize.value > 0) {',
      if (typeArgProjection.isObjectType)
        'value.addAll(pArray.value.toObjectList(length: pValueSize.value));'
      else
        '''
    value.addAll(pArray.value
        .toList($shortName.fromPtr, length: pValueSize.value));''',
      '}',
      'free(pValueSize);',
      'free(pArray);',
    ].join('\n');
  }
}
