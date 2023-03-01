// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _StringMixin on MethodProjection {
  @override
  String get returnType => 'String';

  @override
  String get methodDeclaration {
    final overrideAnnotation = camelCasedName == 'toString' ? '@override' : '';
    return '''
  $overrideAnnotation
  $methodHeader {
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

/// Method projection for methods that return `String`.
class StringMethodProjection extends MethodProjection with _StringMixin {
  StringMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `String` getters.
class StringGetterProjection extends GetterProjection with _StringMixin {
  StringGetterProjection(super.method, super.vtableOffset);
}

mixin _StringListMixin on MethodProjection {
  @override
  String get returnType => 'List<String>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final pValueSize = calloc<Uint32>();
    final retValuePtr = calloc<Pointer<HSTRING>>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return retValuePtr.value.toList(length: pValueSize.value);
    } finally {
      $parametersPostamble
      free(pValueSize);
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return `List<String>`.
class StringListMethodProjection extends MethodProjection
    with _StringListMixin {
  StringListMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `List<String>` getters.
class StringListGetterProjection extends GetterProjection
    with _StringListMixin {
  StringListGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for `String` setters.
class StringSetterProjection extends SetterProjection {
  StringSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final hString = value.toHString();

    try {
      ${ffiCall(params: 'hString')}
    } finally {
      WindowsDeleteString(hString);
    }
  }
''';
}

/// Parameter projection for `String` parameters.
class StringParameterProjection extends ParameterProjection {
  StringParameterProjection(super.parameter);

  @override
  String get type => 'String';

  @override
  String get preamble => 'final ${name}HString = $identifier.toHString();';

  @override
  String get postamble => 'WindowsDeleteString(${name}HString);';

  @override
  String get localIdentifier => '${name}HString';
}

/// Parameter projection for `List<String>` parameters.
class StringListParameterProjection extends DefaultListParameterProjection {
  StringListParameterProjection(super.parameter);

  @override
  String get type => 'List<String>';

  @override
  String get passArrayPreamble => '''
    final handles = <int>[];
    final pArray = calloc<HSTRING>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i).toHString();
      handles.add(pArray[i]);
    }''';

  @override
  String get passArrayPostamble => '''
    handles.forEach(WindowsDeleteString);
    free(pArray);''';
}
