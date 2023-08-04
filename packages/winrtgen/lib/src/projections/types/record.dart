// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../method.dart';
import '../parameter.dart';

/// Method projection for methods that return `Record`.
final class RecordMethodProjection extends MethodProjection {
  RecordMethodProjection(super.method, super.vtableOffset);

  List<ParameterProjection> get outParams => parameters
      .where((p) => p.isOutParam && !p.parameter.isSimpleArraySizeParam)
      .toList();

  @override
  bool get useTryFinallyBlock => true;

  @override
  bool get freeRetValOnFailure => outParams.any((p) => !p.needsDeallocation);

  String get recordType =>
      outParams.map((p) => '${p.type} ${p.identifier}').join(', ');

  @override
  String get returnType {
    if (typeProjection.isVoid) {
      // If there is only one out parameter, use its type as a return type.
      if (outParams case [final outParam]) return outParam.type;
      // Otherwise, return a tuple of the out parameters' types.
      return '({$recordType})';
    }

    // If the method returns a value, return a tuple of the return type and the
    // out parameters' types.
    return '(${super.returnType}, {$recordType})';
  }

  @override
  String get nullCheck {
    if (typeProjection.isVoid && outParams.length == 1) {
      return outParams.first.nullCheck;
    }

    final buffer = StringBuffer();

    for (final param in outParams.where((p) => p.isNullable)) {
      final identifier = param.identifier;
      buffer.writeln('''
      var ${identifier}IsNull = false;
      if ($identifier.isNull) {
        free($identifier);
        ${identifier}IsNull = true;
      }
''');
    }

    return buffer.toString();
  }

  List<String> get outParamsArgs => outParams.map((p) {
        final expression = p.isNullable
            ? '${p.identifier}IsNull ? null : ${p.creator}'
            : p.creator;
        return '${p.identifier}: $expression';
      }).toList();

  @override
  String get returnStatement {
    if (typeProjection.isVoid) {
      if (outParams case [final outParam]) return 'return ${outParam.creator};';
      return 'return (${outParamsArgs.join(', ')});';
    }

    return 'return (${paramProjection.creator}, ${outParamsArgs.join(', ')});';
  }

  @override
  String get methodBody => '''
    ${preambles.join('\n')}
    ${parametersPreamble.join('\n')}

    try {
      $ffiCall

      $failedCheck

      $nullCheck

      $returnStatement
    } finally {
      ${parametersPostamble.join('\n')}
      ${postambles.join('\n')}
    }
''';
}
