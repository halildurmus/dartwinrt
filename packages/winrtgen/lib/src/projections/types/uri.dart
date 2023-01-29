// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

mixin _UriProjection on WinRTMethodProjection {
  String get nullCheck => '''
    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }
''';
}

/// Method projection for methods that return an `Uri`.
class WinRTUriMethodProjection extends WinRTMethodProjection
    with _UriProjection {
  WinRTUriMethodProjection(super.method, super.vtableOffset);

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
class WinRTUriGetterProjection extends WinRTGetPropertyProjection
    with _UriProjection {
  WinRTUriGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Uri? get $exposedMethodName {
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
class WinRTUriSetterProjection extends WinRTSetPropertyProjection {
  WinRTUriSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $exposedMethodName(Uri? value) {
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
class WinRTUriParameterProjection extends WinRTParameterProjection {
  WinRTUriParameterProjection(super.method, super.name, super.type);

  @override
  String get preamble => 'final ${name}Uri = $name == null ? null : '
      'winrt_uri.Uri.createUri($name.toString());';

  @override
  String get postamble => '${name}Uri?.release();';

  @override
  String get localIdentifier =>
      '${name}Uri == null ? nullptr : ${name}Uri.ptr.ref.lpVtbl';
}
