// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../exception/exception.dart';
import '../models/models.dart';
import '../utilities/utilities.dart';
import 'getter.dart';
import 'interface.dart';
import 'parameter.dart';
import 'setter.dart';
import 'type.dart';
import 'types/types.dart';

/// A generic class representing an entry in a COM function vtable.
///
/// This is the base class for a range of WinRT-based objects, including
/// `GetterProjection`, `SetterProjection`.
/// All of these map down to an entry in a COM vtable representing a method.
///
/// Methods have names, a list of parameters, and may return a type.
abstract class MethodProjection {
  MethodProjection(this.method, this.vtableOffset)
      : name = uniquelyNameMethod(method),
        parameters = method.isGetProperty
            ? const []
            : method.parameters.map(ParameterProjection.create).toList(),
        paramProjection = ParameterProjection.create(method.returnType);

  /// The retrieved Windows metadata for the method or property.
  final Method method;

  /// Offset into the COM v-table that represents the method or property.
  final int vtableOffset;

  /// The name, incorporating any overloads that may be required.
  final String name;

  /// Projections for the parameters of the method.
  final List<ParameterProjection> parameters;

  /// Parameter projection of the return type parameter.
  final ParameterProjection paramProjection;

  /// Returns the appropriate method projection for the [method] based on the
  /// [ProjectionKind] of the method.
  factory MethodProjection.create(Method method, int vtableOffset) {
    try {
      final projectionKind = method.projectionKind;
      return switch (projectionKind) {
        ProjectionKind.asyncAction ||
        ProjectionKind.asyncActionWithProgress ||
        ProjectionKind.asyncOperation ||
        ProjectionKind.asyncOperationWithProgress ||
        ProjectionKind.dartPrimitive ||
        ProjectionKind.dateTime ||
        ProjectionKind.delegate ||
        ProjectionKind.duration ||
        ProjectionKind.enum_ ||
        ProjectionKind.genericEnum ||
        ProjectionKind.genericObject ||
        ProjectionKind.guid ||
        ProjectionKind.map ||
        ProjectionKind.mapView ||
        ProjectionKind.object ||
        ProjectionKind.reference ||
        ProjectionKind.string ||
        ProjectionKind.struct ||
        ProjectionKind.uri ||
        ProjectionKind.vector ||
        ProjectionKind.vectorView =>
          DefaultMethodProjection(method, vtableOffset),
        ProjectionKind.dartPrimitiveList ||
        ProjectionKind.dateTimeList ||
        ProjectionKind.durationList ||
        ProjectionKind.enumList ||
        ProjectionKind.guidList ||
        ProjectionKind.objectList ||
        ProjectionKind.stringList ||
        ProjectionKind.structList ||
        ProjectionKind.uriList =>
          DefaultListMethodProjection(method, vtableOffset),
        ProjectionKind.void_ => DefaultMethodProjection(method, vtableOffset),
        _ => throw WinRTGenException(
            'Unsupported projection kind: $projectionKind'),
      };
    } catch (_) {
      print("Failed to project method '$method' from '${method.parent}'.");
      rethrow;
    }
  }

  /// Attempts to create a [MethodProjection] from [fullyQualifiedType] and
  /// [methodName].
  ///
  /// ```dart
  /// final projection = MethodProjection.fromTypeAndMethodName(
  ///     'Windows.Globalization.Calendar', 'GetCalendarSystem');
  /// ```
  ///
  /// It does this by first creating an [InterfaceProjection] from the
  /// [fullyQualifiedType] and then searching the [MethodProjection] for the
  /// [methodName] in it.
  ///
  /// Throws an [Exception] if no [MethodProjection] matching [methodName] is
  /// found.
  factory MethodProjection.fromTypeAndMethodName(
      String fullyQualifiedType, String methodName) {
    final interfaceProjection = InterfaceProjection.from(fullyQualifiedType);
    final methodProjections = interfaceProjection.methodProjections
        .where((methodProjection) => methodProjection.name == methodName);
    if (methodProjections.isEmpty) {
      throw WinRTGenException("Can't find $methodName");
    }
    return methodProjections.first;
  }

  /// The method name without uppercased first letter.
  ///
  /// Windows Runtime methods and properties are typically named in TitleCase,
  /// but the Dart idiom is camelCase. This also has the significant advantage
  /// of making it easier to avoid name conflicts.
  String get camelCasedName => safeIdentifierForString(name.toCamelCase());

  List<ParameterProjection>? _exposedParams;

  /// The parameters, with the exception of some `__xxSize` parameters.
  List<ParameterProjection> get exposedParams =>
      _exposedParams ??= _cacheExposedParams();

  List<ParameterProjection> _cacheExposedParams() {
    final params = <ParameterProjection>[];
    for (final (i, param) in parameters.indexed) {
      // Don't expose the __xxSize parameters on PassArray and ReceiveArray
      // styles as simpleArray parameters are projected as List.
      // See the DefaultListParameterProjection class.
      if (param.parameter.isSimpleArraySizeParam) {
        // PassArray style
        if (param.isInParam && parameters[i + 1].isInParam) continue;
        // ReceiveArray style
        if (param.isOutParam && param.parameter.isPointerType) continue;
      }
      params.add(param);
    }
    return params;
  }

  /// The parameters exposed by a projected Dart method (e.g. `int age`,
  /// `int index, String value`).
  String get methodParams =>
      exposedParams.map((param) => param.paramProjection).join(', ');

  /// The return type of the method (e.g. `String`).
  String get returnType => paramProjection.type;

  /// Type projection of the return type parameter.
  TypeProjection get typeProjection => paramProjection.typeProjection;

  /// Identifier of the return type parameter.
  String get paramIdentifier => paramProjection.identifier;

  /// Whether the return type of the method is nullable.
  bool get isNullable => returnType.endsWith('?');

  /// The header of the method.
  ///   e.g. `void setDateTime(DateTime value)` or `void setToNow()` (method)
  ///   e.g. `int get second` (getter)
  ///   e.g. `set second(int value)` (setter)
  String get header => switch (this) {
        GetterProjection _ => '$returnType get $camelCasedName',
        final SetterProjection p =>
          'set $camelCasedName(${p.parameter.type} ${p.parameter.identifier})',
        MethodProjection _ => '$returnType $camelCasedName($methodParams)'
      };

  /// A shortened version of the method for use in factory constructors, static
  /// methods, and method forwarders.
  ///   e.g. `setDateTime(value)` or `setToNow()` (method)
  ///   e.g. `period` or `second` (get property)
  ///   e.g. `second = value` (set property)
  String get shortForm {
    final identifiers =
        exposedParams.map((param) => param.identifier).join(', ');
    return '$camelCasedName($identifiers)';
  }

  List<String> get parametersPreamble => parameters
      .where((param) => param.preambles.isNotEmpty)
      .map((param) => param.preambles)
      .expand((param) => param)
      .toList();

  List<String> get parametersPostamble => parameters
      .where((param) => param.postambles.isNotEmpty)
      .map((param) => param.postambles)
      .expand((param) => param)
      .toList();

  // WinRT methods always return an HRESULT
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  String get dartPrototype => 'int Function($dartParams)';

  /// The names of the parameters to be passed through to the underlying WinRT
  /// function.
  String get identifiers => [
        'ptr.ref.lpVtbl',
        ...parameters.map((param) => param.localIdentifier),
        if (typeProjection.isSimpleArray) 'retValueSize',
        if (!typeProjection.isVoid) paramProjection.localIdentifier,
      ].join(', ');

  String get nativeParams => [
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.ffiProjection),
        if (typeProjection.isSimpleArray) 'Pointer<Uint32> retValueSize',
        if (!typeProjection.isVoid)
          '${typeProjection.pointer.nativeType} ${paramProjection.identifier}',
      ].join(', ');

  String get dartParams => [
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.dartProjection),
        if (typeProjection.isSimpleArray) 'Pointer<Uint32> retValueSize',
        if (!typeProjection.isVoid)
          '${typeProjection.pointer.nativeType} ${paramProjection.identifier}',
      ].join(', ');

  String get failedCheck {
    if (!freeRetValOnFailure) {
      return 'if (FAILED(hr)) throwWindowsException(hr);';
    }

    return '''
    if (FAILED(hr)) {
      free(${paramProjection.localIdentifier});
      throwWindowsException(hr);
    }
''';
  }

  String get ffiCall => [
        parametersPreamble.join('\n'),
        '',
        '''
    final hr = ptr.ref.vtable
        .elementAt($vtableOffset)
        .cast<Pointer<NativeFunction<$nativePrototype>>>()
        .value
        .asFunction<$dartPrototype>()($identifiers);
''',
        parametersPostamble.join('\n'),
        '',
        failedCheck
      ].join('\n');

  List<String> get annotations => [
        if (method.isDeprecated) method.deprecatedAnnotation,
        if (returnType == 'String' && camelCasedName == 'toString') '@override'
      ];

  bool get useTryFinallyBlock => postambles.isNotEmpty;

  List<String> get preambles => paramProjection.preambles;

  bool get freeRetValOnFailure =>
      paramProjection.type != 'void' && !useTryFinallyBlock;

  String get nullCheck => paramProjection.nullCheck;

  String get returnStatement => '';

  List<String> get postambles => paramProjection.postambles;

  String get methodBody => useTryFinallyBlock
      ? '''
    ${preambles.join('\n')}

    try {
      $ffiCall

      $nullCheck

      $returnStatement
    } finally {
      ${postambles.join('\n')}
    }
'''
      : '''
    ${preambles.join('\n')}
    $ffiCall

    $nullCheck

    $returnStatement
''';

  String get projection => '''
  ${annotations.join('\n')}
  $header {
    $methodBody
  }
''';

  @override
  String toString() {
    try {
      return projection;
    } catch (e) {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.
      print("Failed to project method '$method' from '${method.parent}'.");
      print(e);
      return '';
    }
  }
}
