// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../utilities/utilities.dart';
import '../parameter.dart';
import '../type.dart';

final class MapParameterProjection extends ParameterProjection {
  MapParameterProjection(super.parameter);

  TypeIdentifier get typeIdentifier => typeProjection.isReferenceType
      ? dereferenceType(typeProjection.typeIdentifier)
      : typeProjection.typeIdentifier;

  /// The type arguments of `IMap` and `IMapView`, as represented in the
  /// [typeProjection]'s [TypeIdentifier] (e.g. `String, Object?`,
  /// `String, String?`).
  String get mapTypeArgs =>
      typeArguments(typeProjection.typeIdentifier.shortName);

  /// The constructor arguments passed to the constructors of `IMap` and
  /// `IMapView`.
  String get mapConstructorArgs {
    final typeArgs = typeIdentifier.typeArgs;
    final keyArgTypeProjection = TypeProjection(typeArgs.first);
    final valueArgTypeProjection = TypeProjection(typeArgs.last);

    // If the type argument is an enum, the constructor of that class must be
    // passed in the 'enumKeyCreator' parameter for enum, so that the 'IMap' and
    // 'IMapView' implementations can instantiate the enum.
    final enumKeyCreator = typeArgs.first.creator;

    // If the type argument is an enum, a WinRT object (e.g. IJsonValue), the
    // constructor of that class must be passed in the 'enumCreator' parameter
    // for enum, 'creator' parameter for WinRT object so that the 'IMap' and
    // 'IMapView' implementations can instantiate the object
    final creator = typeArgs.last.creator;

    // If the key type argument is an int, 'intType' parameter must be specified
    // so that the IMap and IMapView implementations can use the appropriate
    // native integer type
    final intType = mapTypeArgs.split(', ')[0] == 'int'
        ? 'IntType.${keyArgTypeProjection.nativeType.toLowerCase()}'
        : null;

    // The IID for IIterable<IKeyValuePair<K, V>> must be passed in the
    // 'iterableIid' parameter so that the 'IMap' and 'IMapView' implementations
    // can use the correct IID when instantiating the IIterable object
    final iterableIid = iterableIidFromMapType(typeIdentifier);

    final args = <String>['iterableIid: ${quote(iterableIid)}'];
    if (keyArgTypeProjection.isWinRTEnum) {
      args.add('enumKeyCreator: $enumKeyCreator');
    }
    if (valueArgTypeProjection.isWinRTEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
    }
    if (intType != null) args.add('intType: $intType');
    return ', ${args.join(', ')}';
  }

  @override
  String get type => 'IMap<$mapTypeArgs>';

  @override
  String get creator => 'IMap.fromPtr($identifier$mapConstructorArgs)';

  @override
  String get into => typeProjection.isReferenceType
      ? '$identifier.ptr'
      : '$identifier.ptr.ref.lpVtbl';

  // No deallocation is needed as NativeFinalizer will handle it.
  @override
  bool get needsDeallocation => false;
}

final class MapViewParameterProjection extends MapParameterProjection {
  MapViewParameterProjection(super.parameter);

  @override
  String get type => isInParam || isOutParam
      ? typeProjection.typeIdentifier.shortName
      : 'Map<$mapTypeArgs>';

  @override
  String get creator =>
      'IMapView<$mapTypeArgs>.fromPtr($localIdentifier$mapConstructorArgs).toMap()';
}
