// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../utilities/utilities.dart';
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
final class ObjectMethodProjection extends MethodProjection with _ObjectMixin {
  ObjectMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for WinRT class, interface, or `boxed` value getters.
final class ObjectGetterProjection extends GetterProjection with _ObjectMixin {
  ObjectGetterProjection(super.method, super.vtableOffset);
}

/// Method projection for methods that return `List` of WinRT class,
/// interface, or `boxed` value.
final class ObjectListMethodProjection extends DefaultListMethodProjection {
  ObjectListMethodProjection(super.method, super.vtableOffset);

  @override
  String get returnType => typeArgProjection.isObjectType
      ? 'List<Object?>'
      : 'List<$typeArgShortName>';

  @override
  String get returnStatement {
    if (typeArgProjection.isObjectType) {
      return 'return retValuePtr.value.toObjectList(length: $sizeIdentifier.value);';
    }

    return '''
return retValuePtr.value
  .toList($typeArgShortName.fromPtr, length: $sizeIdentifier.value);''';
  }
}

/// Getter projection for getters that return a `List` of WinRT class,
/// interface, or `boxed` value.
final class ObjectListGetterProjection extends DefaultListGetterProjection {
  ObjectListGetterProjection(super.method, super.vtableOffset);

  @override
  String get returnType => typeArgProjection.isObjectType
      ? 'List<Object?>'
      : 'List<$typeArgShortName>';

  @override
  String get returnStatement {
    if (typeArgProjection.isObjectType) {
      return 'return retValuePtr.value.toObjectList(length: $sizeIdentifier.value);';
    }

    return '''
return retValuePtr.value
  .toList($typeArgShortName.fromPtr, length: $sizeIdentifier.value);''';
  }
}

/// Setter projection for WinRT class, interface, or `boxed` value setters.
final class ObjectSetterProjection extends SetterProjection with _ObjectMixin {
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
final class ObjectParameterProjection extends ParameterProjection {
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
final class ObjectListParameterProjection
    extends DefaultListParameterProjection {
  ObjectListParameterProjection(super.parameter);

  @override
  String get type => typeArgProjection.isObjectType
      ? 'List<Object?>'
      : 'List<$typeArgShortName>';

  @override
  String get fillArrayPreamble =>
      'final $localIdentifier = calloc<COMObject>($sizeParamName);';

  @override
  String get passArrayPreamble {
    return [
      '''
    final $localIdentifier = calloc<COMObject>($paramName.length);
    for (var i = 0; i < $paramName.length; i++) {''',
      if (typeArgProjection.isObjectType)
        '''
    final element = $paramName.elementAt(i);
    if (element == null) continue;
    $localIdentifier[i] = element.intoBox().ptr.ref;'''
      else
        '$localIdentifier[i] = $paramName.elementAt(i).ptr.ref;',
      '}'
    ].join('\n');
  }

  @override
  String get receiveArrayPreamble => '''
    final $sizeIdentifier = calloc<Uint32>();
    final $localIdentifier = calloc<${typeArgProjection.nativeType}>();''';

  @override
  String get fillArrayPostamble {
    final addAll = typeArgProjection.isObjectType
        ? '$paramName.addAll($localIdentifier.toObjectList(length: $fillArraySizeVariable));'
        : '$paramName.addAll($localIdentifier.toList($typeArgShortName.fromPtr, length: $fillArraySizeVariable));';
    return '''
    if ($fillArraySizeVariable > 0) {
      $addAll
    }
    free($localIdentifier);''';
  }

  @override
  String get receiveArrayPostamble {
    return [
      'if ($sizeIdentifier.value > 0) {',
      if (typeArgProjection.isObjectType)
        '$paramName.addAll($localIdentifier.value.toObjectList(length: $sizeIdentifier.value));'
      else
        '''
    $paramName.addAll($localIdentifier.value
        .toList($typeArgShortName.fromPtr, length: $sizeIdentifier.value));''',
      '}',
      'free($sizeIdentifier);',
      'free($localIdentifier);',
    ].join('\n');
  }
}
