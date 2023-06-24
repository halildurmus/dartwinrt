// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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
}

/// Method projection for methods that return `String`.
final class StringMethodProjection extends MethodProjection with _StringMixin {
  StringMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `String` getters.
final class StringGetterProjection extends GetterProjection with _StringMixin {
  StringGetterProjection(super.method, super.vtableOffset);
}

/// Method projection for methods that return `List<String>`.
final class StringListMethodProjection extends DefaultListMethodProjection {
  StringListMethodProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<String>';
}

/// Getter projection for `List<String>` getters.
final class StringListGetterProjection extends DefaultListGetterProjection {
  StringListGetterProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<String>';
}

/// Setter projection for `String` setters.
final class StringSetterProjection extends SetterProjection {
  StringSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final hString = value.toHString();

    try {
      ${ffiCall(identifier: 'hString')}
    } finally {
      WindowsDeleteString(hString);
    }
  }
''';
}

/// Parameter projection for `String` parameters.
final class StringParameterProjection extends ParameterProjection {
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
final class StringListParameterProjection
    extends DefaultListParameterProjection {
  StringListParameterProjection(super.parameter);

  @override
  String get type => 'List<String>';

  @override
  String get passArrayPreamble => '''
    final ${paramName}Handles = <int>[];
    final $localIdentifier = calloc<HSTRING>($paramName.length);
    for (var i = 0; i < $paramName.length; i++) {
      $localIdentifier[i] = $paramName.elementAt(i).toHString();
      ${paramName}Handles.add($localIdentifier[i]);
    }''';

  @override
  String get passArrayPostamble => '''
    ${paramName}Handles.forEach(WindowsDeleteString);
    free($localIdentifier);''';
}
