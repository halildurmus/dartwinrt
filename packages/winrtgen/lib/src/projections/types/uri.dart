// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _UriProjection on MethodProjection {
  @override
  String get returnType => 'Uri?';

  String get nullCheck => '''
    if (retValuePtr.ref.isNull) {
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
  $returnType $camelCasedName($methodParams) {
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
  $returnType get $camelCasedName {
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
  set $camelCasedName(${parameter.type} value) {
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
  String get type => 'Uri?';

  @override
  String get preamble => 'final ${name}Uri = $name == null ? null : '
      'winrt_uri.Uri.createUri($name.toString());';

  @override
  String get postamble => '${name}Uri?.release();';

  @override
  String get localIdentifier =>
      '${name}Uri == null ? nullptr : ${name}Uri.ptr.ref.lpVtbl';
}

/// Parameter projection for `List<Uri>` parameters.
class UriListParameterProjection extends DefaultListParameterProjection {
  UriListParameterProjection(super.parameter);

  @override
  String get type => 'List<Uri>';

  @override
  String get passArrayPreamble => '''
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      final winrtUri = winrt_uri.Uri.createUri(value.elementAt(i).toString());
      pArray[i] = winrtUri.ptr.ref;
    }
''';

  @override
  String get receiveArrayPreamble => '''
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<COMObject>>();
''';

  @override
  String get fillArrayPostamble => '''
    value.addAll(pArray
        .toList(winrt_uri.Uri.fromRawPointer, length: valueSize)
        .map((winrtUri) => Uri.parse(winrtUri.toString())));
    free(pArray);
''';

  @override
  String get receiveArrayPostamble => '''
    value.addAll(pArray.value
        .toList(winrt_uri.Uri.fromRawPointer, length: pValueSize.value)
        .map((winrtUri) => Uri.parse(winrtUri.toString())));
    free(pValueSize);
    free(pArray);
''';
}
