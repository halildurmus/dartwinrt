// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../parameter.dart';

/// Parameter projection for WinRT class, interface, or `boxed` value
/// parameters.
final class ObjectParameterProjection extends ParameterProjection {
  ObjectParameterProjection(super.parameter);

  bool get isMethodFromPropertyValueStatics =>
      method.parent.name == 'Windows.Foundation.IPropertyValueStatics';

  bool get isObjectType => typeProjection.isObjectType;

  @override
  bool get isNullable {
    final parent = method.parent;

    // The key type arguments of IKeyValuePair<Object, V>, IMap<Object, V>,
    // and IMapView<Object, V> cannot be null.
    if (parent.genericParams.length == 2 &&
        (parent.name.endsWith('IKeyValuePair`2') ||
            parent.isCollectionObject)) {
      return switch (parameter.typeIdentifier.genericParameterSequence) {
        0 => false,
        _ => true
      };
    }

    if (isReturnParam) {
      // Constructors cannot return null.
      if (parent.isFactoryInterface) return false;

      // Methods that return collection interfaces cannot return null.
      if (!method.isGetProperty &&
          parameter.typeIdentifier.isCollectionObject) {
        return false;
      }

      // IIterable.First() cannot return null.
      if (method.name == 'First' && parent.isCollectionObject) {
        return false;
      }

      if (isObjectType && isMethodFromPropertyValueStatics) return false;
    }

    // Treat everything else as nullable.
    return true;
  }

  @override
  String get type {
    if (isObjectType) {
      if (!isInParam && !isOutParam && isMethodFromPropertyValueStatics) {
        return switch (method.name) {
          'CreateEmpty' || 'CreateInspectable' => 'Pointer<COMObject>',
          _ => 'IPropertyValue'
        };
      }
    }

    return isNullable ? shortTypeName.nullable() : shortTypeName;
  }

  @override
  String get creator {
    if (isObjectType) {
      // IPropertyValueStatics' methods return 'IInspectable' in WinMD (i.e.
      // boxed value). Normally we expose them as 'Object?' and return the
      // underlying value they carry (e.g., String, bool). However, since these
      // methods are used when boxing values, we need the 'IPropertyValue'
      // interface to be returned instead of the underlying value (except for
      // 'CreateEmpty' and 'CreateInspectable' methods).
      if (isMethodFromPropertyValueStatics) {
        return switch (method.name) {
          'CreateEmpty' || 'CreateInspectable' => identifier,
          _ => 'IPropertyValue.fromPtr($identifier)'
        };
      }

      final cast = isNullable ? '' : ' as Object';
      return 'IPropertyValue.fromPtr($identifier).value$cast';
    }

    if (type == 'Pointer<COMObject>') return identifier;
    final interfaceName = type.stripQuestionMarkSuffix();
    return '$interfaceName.fromPtr($identifier)';
  }

  // No deallocation is needed as Finalizer will handle it.
  @override
  bool get needsDeallocation => false;

  @override
  String get nullCheck {
    if (!isNullable) return '';
    return '''
    if ($identifier.isNull) {
      free($identifier);
      return null;
    }
''';
  }

  @override
  String get localIdentifier {
    if (isInParam) {
      if (typeProjection.isObjectType) {
        return isNullable
            ? '$identifier?.boxValue().lpVtbl ?? nullptr'
            : '$identifier.boxValue().lpVtbl';
      }

      if (!typeProjection.isReferenceType) return '$identifier.lpVtbl';
    }

    return identifier;
  }
}
