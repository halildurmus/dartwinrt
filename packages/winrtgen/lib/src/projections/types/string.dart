// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

/// Method projection for methods that return a `String`.
class StringMethodProjection extends MethodProjection {
  StringMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection {
    final overrideAnnotation = camelCasedName == 'toString' ? '@override' : '';
    return '''
  $overrideAnnotation
  String $camelCasedName($methodParams) {
    final retValuePtr = calloc<HSTRING>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return retValuePtr.toDartString();
    } finally {
      $parametersPostamble
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
''';
  }
}

/// Getter projection for `String` getters.
class StringGetterProjection extends GetterProjection {
  StringGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  String get $camelCasedName {
    final retValuePtr = calloc<HSTRING>();

    try {
      ${ffiCall()}

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
''';
}

/// Setter projection for `String` setters.
class StringSetterProjection extends SetterProjection {
  StringSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(String value) {
    final hstr = convertToHString(value);

    try {
      ${ffiCall(params: 'hstr')}
    } finally {
      WindowsDeleteString(hstr);
    }
  }
''';
}

/// Parameter projection for `String` parameters.
class StringParameterProjection extends ParameterProjection {
  StringParameterProjection(super.parameter);

  @override
  String get preamble => 'final ${name}HString = convertToHString($name);';

  @override
  String get postamble => 'WindowsDeleteString(${name}HString);';

  @override
  String get localIdentifier => '${name}HString';
}
