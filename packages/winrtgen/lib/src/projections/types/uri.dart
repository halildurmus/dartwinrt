// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _UriProjection on MethodProjection {
  String get nullCheck => '''
    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }
''';
}

/// Method projection for methods that return an `Uri`.
class UriMethodProjection extends MethodProjection with _UriProjection {
  UriMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Uri? $camelCasedName($methodParams) {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
    final uriAsString = winrtUri.toString();
    winrtUri.release();

    $parametersPostamble

    return Uri.parse(uriAsString);
  }
''';
}

/// Getter projection for `Uri` getters.
class UriGetterProjection extends GetterProjection with _UriProjection {
  UriGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Uri? get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
    final uriAsString = winrtUri.toString();
    winrtUri.release();

    return Uri.parse(uriAsString);
  }
''';
}

/// Setter projection for `Uri` setters.
class UriSetterProjection extends SetterProjection {
  UriSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(Uri? value) {
    final winrtUri =
        value == null ? null : winrt_uri.Uri.createUri(value.toString());

    try {
      ${ffiCall(params: 'winrtUri == null ? nullptr : winrtUri.ptr.ref.lpVtbl')}
    } finally {
      winrtUri?.release();
    }
  }
''';
}

/// Parameter projection for `Uri` parameters.
class UriParameterProjection extends ParameterProjection {
  UriParameterProjection(super.parameter);

  @override
  String get preamble => 'final ${name}Uri = $name == null ? null : '
      'winrt_uri.Uri.createUri($name.toString());';

  @override
  String get postamble => '${name}Uri?.release();';

  @override
  String get localIdentifier =>
      '${name}Uri == null ? nullptr : ${name}Uri.ptr.ref.lpVtbl';
}
