// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../utils.dart';
import '../type.dart';
import '../winrt_get_property.dart';
import '../winrt_method.dart';

mixin _VectorProjection on WinRTMethodProjection {
  /// The type argument of `IVector` and `IVectorView`, as represented in the
  /// [returnType]'s [TypeIdentifier] (e.g. `int`, `String`, `StorageFile`).
  String get vectorTypeArg => typeArguments(returnType.typeIdentifier.name);

  /// The constructor arguments passed to the constructors of `IVector` and
  /// `IVectorView`.
  String get vectorConstructorArgs {
    final typeProjection = TypeProjection(returnType.typeIdentifier.typeArg!);

    // If the type argument is an enum or a WinRT Object (e.g. StorageFile), the
    // constructor of that class must be passed in the 'enumCreator' parameter
    // for enums, 'creator' parameter for WinRT Objects so that the 'IVector'
    // and 'IVectorView' implementations can instantiate the object
    final creator =
        parseArgumentForCreatorParameter(returnType.typeIdentifier.typeArg!);

    // The IID for IIterable<T> must be passed in the 'iterableIid' parameter so
    // that the 'IVector' and 'IVectorView' implementations can use the correct
    // IID when instantiating the IIterable object
    final iterableIid =
        iterableIidFromVectorTypeIdentifier(returnType.typeIdentifier);

    // If the type argument is an enum or int, its native type (e.g. Int32,
    // Uint32) must be passed in the 'intType' parameter so that the 'IVector'
    // and 'IVectorView' implementations can use the appropriate native type
    final intType = typeProjection.isEnum || vectorTypeArg == 'int'
        ? typeProjection.nativeType
        : null;

    final args = <String>["iterableIid: '$iterableIid'"];
    if (typeProjection.isEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
    }
    if (intType != null) {
      args.add('intType: $intType');
    }

    return ', ${args.join(', ')}';
  }
}

/// Method projection for methods that return an `IVector<T>`.
class WinRTVectorMethodProjection extends WinRTMethodProjection
    with _VectorProjection {
  WinRTVectorMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  IVector<$vectorTypeArg> $camelCasedName($methodParams) {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    $parametersPostamble

    return IVector.fromRawPointer(retValuePtr$vectorConstructorArgs);
  }
''';
}

/// Getter projection for `IVector<T>` getters.
class WinRTVectorGetterProjection extends WinRTGetPropertyProjection
    with _VectorProjection {
  WinRTVectorGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  IVector<$vectorTypeArg> get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    return IVector.fromRawPointer(retValuePtr$vectorConstructorArgs);
  }
''';
}

/// Method projection for methods that return an `IVectorView<T>` (exposed as
/// `List<T>`).
class WinRTVectorViewMethodProjection extends WinRTMethodProjection
    with _VectorProjection {
  WinRTVectorViewMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  List<$vectorTypeArg> $camelCasedName($methodParams) {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    final vectorView = IVectorView<$vectorTypeArg>.fromRawPointer
        (retValuePtr$vectorConstructorArgs);
    final list = vectorView.toList();
    vectorView.release();

    $parametersPostamble

    return list;
  }
''';
}

/// Getter projection for `IVectorView<T>` (exposed as `List<T>`) getters.
class WinRTVectorViewGetterProjection extends WinRTGetPropertyProjection
    with _VectorProjection {
  WinRTVectorViewGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  List<$vectorTypeArg> get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    final vectorView = IVectorView<$vectorTypeArg>.fromRawPointer
        (retValuePtr$vectorConstructorArgs);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }
''';
}
