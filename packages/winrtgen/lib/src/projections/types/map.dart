// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../extensions/extensions.dart';
import '../../utils.dart';
import '../type.dart';
import '../winrt_get_property.dart';
import '../winrt_method.dart';

mixin _MapProjection on WinRTMethodProjection {
  /// The type arguments of `IMap` and `IMapView`, as represented in the
  /// [returnType]'s [TypeIdentifier] (e.g. `String, Object?`, `String, String?`).
  String get mapTypeArgs => typeArguments(returnType.typeIdentifier.name);

  /// The constructor arguments passed to the constructors of `IMap` and
  /// `IMapView`.
  String get mapConstructorArgs {
    final keyArgTypeProjection =
        TypeProjection(returnType.typeIdentifier.typeArg!);
    final valueArgTypeProjection =
        TypeProjection(returnType.typeIdentifier.typeArg!.typeArg!);

    // If the type argument is an enum, the constructor of that class must be
    // passed in the 'enumKeyCreator' parameter for enum, so that the 'IMap' and
    // 'IMapView' implementations can instantiate the enum.
    final enumKeyCreator = returnType.typeIdentifier.typeArg!.creator;

    // If the type argument is an enum, a WinRT Object (e.g. IJsonValue), the
    // constructor of that class must be passed in the 'enumCreator' parameter
    // for enum, 'creator' parameter for WinRT Object so that the 'IMap' and
    // 'IMapView' implementations can instantiate the object
    final creator = returnType.typeIdentifier.typeArg!.typeArg!.creator;

    // The IID for IIterable<IKeyValuePair<K, V>> must be passed in the
    // 'iterableIid' parameter so that the 'IMap' and 'IMapView' implementations
    // can use the correct IID when instantiating the IIterable object
    final iterableIid =
        iterableIidFromMapTypeIdentifier(returnType.typeIdentifier);

    final args = <String>["iterableIid: '$iterableIid'"];
    if (keyArgTypeProjection.isEnum) {
      args.add('enumKeyCreator: $enumKeyCreator');
    }
    if (valueArgTypeProjection.isEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
    }

    return ', ${args.join(', ')}';
  }
}

/// Method projection for methods that return an `IMap<K, V>`.
class WinRTMapMethodProjection extends WinRTMethodProjection
    with _MapProjection {
  WinRTMapMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  IMap<$mapTypeArgs> $camelCasedName($methodParams) {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    $parametersPostamble

    return IMap.fromRawPointer(retValuePtr$mapConstructorArgs);
  }
''';
}

/// Getter projection for `IMap<K, V>` getters.
class WinRTMapGetterProjection extends WinRTGetPropertyProjection
    with _MapProjection {
  WinRTMapGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  IMap<$mapTypeArgs> get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    return IMap.fromRawPointer(retValuePtr$mapConstructorArgs);
  }
''';
}

/// Method projection for methods that return an `IMapView<K, V>` (exposed as
/// `Map<K, V>`).
class WinRTMapViewMethodProjection extends WinRTMethodProjection
    with _MapProjection {
  WinRTMapViewMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Map<$mapTypeArgs> $camelCasedName($methodParams) {
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
class WinRTMapViewGetterProjection extends WinRTGetPropertyProjection
    with _MapProjection {
  WinRTMapViewGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Map<$mapTypeArgs> get $camelCasedName {
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
