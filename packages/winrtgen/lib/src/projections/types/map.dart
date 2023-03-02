// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../extensions/extensions.dart';
import '../../utils.dart';
import '../getter.dart';
import '../method.dart';
import '../type.dart';

mixin _MapMixin on MethodProjection {
  /// The type arguments of `IMap` and `IMapView`, as represented in the
  /// [returnTypeProjection]'s [TypeIdentifier] (e.g. `String, Object?`,
  /// `String, String?`).
  String get mapTypeArgs =>
      typeArguments(returnTypeProjection.typeIdentifier.name);

  /// The constructor arguments passed to the constructors of `IMap` and
  /// `IMapView`.
  String get mapConstructorArgs {
    final keyArgTypeProjection =
        TypeProjection(returnTypeProjection.typeIdentifier.typeArg!);
    final valueArgTypeProjection =
        TypeProjection(returnTypeProjection.typeIdentifier.typeArg!.typeArg!);

    // If the type argument is an enum, the constructor of that class must be
    // passed in the 'enumKeyCreator' parameter for enum, so that the 'IMap' and
    // 'IMapView' implementations can instantiate the enum.
    final enumKeyCreator = returnTypeProjection.typeIdentifier.typeArg!.creator;

    // If the type argument is an enum, a WinRT object (e.g. IJsonValue), the
    // constructor of that class must be passed in the 'enumCreator' parameter
    // for enum, 'creator' parameter for WinRT object so that the 'IMap' and
    // 'IMapView' implementations can instantiate the object
    final creator =
        returnTypeProjection.typeIdentifier.typeArg!.typeArg!.creator;

    // If the key type argument is an int, 'intType' parameter must be specified
    // so that the IMap and IMapView implementations can use the appropriate
    // native integer type
    final intType = mapTypeArgs.split(', ')[0] == 'int'
        ? 'IntType.${keyArgTypeProjection.nativeType.toLowerCase()}'
        : null;

    // The IID for IIterable<IKeyValuePair<K, V>> must be passed in the
    // 'iterableIid' parameter so that the 'IMap' and 'IMapView' implementations
    // can use the correct IID when instantiating the IIterable object
    final iterableIid =
        iterableIidFromMapType(returnTypeProjection.typeIdentifier);

    final args = <String>["iterableIid: ${quote(iterableIid)}"];
    if (keyArgTypeProjection.isWinRTEnum) {
      args.add('enumKeyCreator: $enumKeyCreator');
    }
    if (valueArgTypeProjection.isWinRTEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
    }
    if (intType != null) {
      args.add('intType: $intType');
    }

    return ', ${args.join(', ')}';
  }

  @override
  String get returnType => 'IMap<$mapTypeArgs>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    $parametersPostamble

    return IMap.fromRawPointer(retValuePtr$mapConstructorArgs);
  }
''';
}

/// Method projection for methods that return `IMap<K, V>`.
class MapMethodProjection extends MethodProjection with _MapMixin {
  MapMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `IMap<K, V>` getters.
class MapGetterProjection extends GetterProjection with _MapMixin {
  MapGetterProjection(super.method, super.vtableOffset);
}

/// Method projection for methods that return `IMapView<K, V>` (exposed as
/// `Map<K, V>`).
class MapViewMethodProjection extends MethodProjection with _MapMixin {
  MapViewMethodProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'Map<$mapTypeArgs>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    final mapView = IMapView<$mapTypeArgs>.fromRawPointer
        (retValuePtr$mapConstructorArgs);
    final map = mapView.toMap();
    mapView.release();

    $parametersPostamble

    return map;
  }
''';
}

/// Getter projection for `IMapView<K, V>` (exposed as `Map<K, V>`) getters.
class MapViewGetterProjection extends GetterProjection with _MapMixin {
  MapViewGetterProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'Map<$mapTypeArgs>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    final mapView = IMapView<$mapTypeArgs>.fromRawPointer
        (retValuePtr$mapConstructorArgs);
    final map = mapView.toMap();
    mapView.release();

    return map;
  }
''';
}
