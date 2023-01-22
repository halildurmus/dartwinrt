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

class WinRTUriMethodProjection extends WinRTMethodProjection
    with _UriProjection {
  WinRTUriMethodProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
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

class WinRTUriGetterProjection extends WinRTGetPropertyProjection
    with _UriProjection {
  WinRTUriGetterProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
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

class WinRTUriSetterProjection extends WinRTSetPropertyProjection {
  WinRTUriSetterProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(Uri? value) {
        final winrtUri = value == null ? null : winrt_uri.Uri.createUri(value.toString());

        try {
          ${ffiCall(params: 'winrtUri == null ? nullptr : winrtUri.ptr.ref.lpVtbl')}
        } finally {
          winrtUri?.release();
        }
      }
''';
}

class WinRTUriParameterProjection extends WinRTParameterProjection {
  WinRTUriParameterProjection(super.method, super.name, super.type);

  /// Whether the method belongs to `IUriRuntimeClass` or
  /// `IUriRuntimeClassFactory`.
  ///
  /// Used to determine whether the parameter should be exposed as WinRT `Uri`
  /// or dart:core's `Uri`.
  bool get methodBelongsToUriRuntimeClass => [
        'Windows.Foundation.IUriRuntimeClass',
        'Windows.Foundation.IUriRuntimeClassFactory'
      ].contains(method.parent.name);

  @override
  String get preamble => !methodBelongsToUriRuntimeClass
      ? 'final ${name}Uri = $name == null ? null : winrt_uri.Uri.createUri($name.toString());'
      : '';

  @override
  String get postamble =>
      !methodBelongsToUriRuntimeClass ? '${name}Uri?.release();' : '';

  @override
  String get localIdentifier => !methodBelongsToUriRuntimeClass
      ? '${name}Uri == null ? nullptr : ${name}Uri.ptr.cast<Pointer<COMObject>>().value'
      : '$name == null ? nullptr : $name.ptr.cast<Pointer<COMObject>>().value';
}
