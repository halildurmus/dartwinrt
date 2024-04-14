// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../extensions/extensions.dart';
import '../parameter.dart';
import '../type.dart';

final class MapParameterProjection extends ParameterProjection {
  MapParameterProjection(super.parameter);

  TypeIdentifier get typeIdentifier => typeProjection.isReferenceType
      ? typeProjection.typeIdentifier.dereference()
      : typeProjection.typeIdentifier;

  /// The type arguments of `IMap` and `IMapView`, as represented in the
  /// [typeProjection]'s [TypeIdentifier] (e.g., `String, Object?`,
  /// `String, String?`).
  String get mapTypeArgs => shortTypeName.typeArguments;

  /// The constructor arguments passed to the constructors of `IMap` and
  /// `IMapView`.
  String get mapConstructorArgs {
    final [typeArg1, typeArg2] = typeIdentifier.typeArgs;
    final keyArgTypeProjection = TypeProjection(typeArg1);
    final keyArgNativeType = keyArgTypeProjection.nativeType.toLowerCase();
    final valueArgTypeProjection = TypeProjection(typeArg2);
    final valueArgNativeType = valueArgTypeProjection.nativeType.toLowerCase();

    // The IID for IIterable<IKeyValuePair<K, V>> must be passed in the
    // 'iterableIid' parameter so that the 'IMap' and 'IMapView' implementations
    // can use the correct IID when instantiating the IIterable object
    final iterableIid = typeIdentifier.iterableIID;

    final args = <String>{
      'iterableIid: ${iterableIid.quote()}',
      if (typeArg1.isWinRTEnum)
        'kEnumCreator: ${typeArg1.creator}'
      else if (typeArg1.creator case final creator?)
        'kObjectCreator: $creator'
      else if (keyArgTypeProjection.isDouble)
        'kDoubleType: DoubleType.$keyArgNativeType'
      else if (keyArgTypeProjection.isInteger)
        'kIntType: IntType.$keyArgNativeType',
      if (typeArg2.isWinRTEnum)
        'vEnumCreator: ${typeArg2.creator}'
      else if (typeArg2.creator case final creator?)
        'vObjectCreator: $creator'
      else if (valueArgTypeProjection.isDouble)
        'vDoubleType: DoubleType.$valueArgNativeType'
      else if (valueArgTypeProjection.isInteger)
        'vIntType: IntType.$valueArgNativeType'
    };

    return ', ${args.join(', ')}';
  }

  @override
  bool get isNullable =>
      // Methods that return collection interfaces cannot return null.
      !(isReturnParam && !method.isGetProperty);

  @override
  String get type => isNullable ? shortTypeName.nullable() : shortTypeName;

  @override
  String get creator => 'IMap.fromPtr($identifier$mapConstructorArgs)';

  String get into => '$identifier.lpVtbl';

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
}

final class MapViewParameterProjection extends MapParameterProjection {
  MapViewParameterProjection(super.parameter);

  @override
  String get type {
    if (isReturnParam) {
      if (method.isGetProperty) return 'Map<$mapTypeArgs>?';
      return 'Map<$mapTypeArgs>';
    }

    return isNullable ? shortTypeName.nullable() : shortTypeName;
  }

  @override
  String get creator =>
      'IMapView<$mapTypeArgs>.fromPtr($identifier$mapConstructorArgs).toMap()';
}
