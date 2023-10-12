// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../models/models.dart';
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
base class MethodProjection {
  MethodProjection(this.method, this.vtableOffset)
      : name = method.uniqueName,
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
        ProjectionKind.record => RecordMethodProjection(method, vtableOffset),
        ProjectionKind.pointer ||
        ProjectionKind.reference =>
          throw UnsupportedError('Unsupported ProjectionKind: $projectionKind'),
        _ => MethodProjection(method, vtableOffset),
      };
    } catch (_) {
      print("Failed to project method '$method' from '${method.parent}'.");
      rethrow;
    }
  }

  /// Attempts to create a [MethodProjection] from [type] and [methodName].
  ///
  /// ```dart
  /// final projection = MethodProjection.fromTypeAndMethodName(
  ///     'Windows.Globalization.Calendar', 'GetCalendarSystem');
  /// ```
  ///
  /// It does this by first creating an [InterfaceProjection] from the [type]
  /// and then searching the [MethodProjection] for the [methodName] in it.
  factory MethodProjection.fromTypeAndMethodName(
      String type, String methodName) {
    final interfaceProjection = InterfaceProjection.fromType(type);
    final methodProjection = interfaceProjection.methodProjections
        .where((methodProjection) => methodProjection.name == methodName)
        .firstOrNull;
    if (methodProjection == null) {
      throw StateError("Could not find method '$methodName' in '$type'.");
    }
    return methodProjection;
  }

  /// The method name without uppercased first letter.
  ///
  /// Windows Runtime methods and properties are typically named in TitleCase,
  /// but the Dart idiom is camelCase. This also has the significant advantage
  /// of making it easier to avoid name conflicts.
  String get camelCasedName => name.toCamelCase().toSafeIdentifier();

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

      if (param.isOutParam) continue;

      params.add(param);
    }
    return params;
  }

  /// The parameters exposed by a projected Dart method (e.g., `int age`,
  /// `int index, String value`).
  String get methodParams =>
      exposedParams.map((param) => param.paramProjection).join(', ');

  /// The return type of the method (e.g., `String`).
  String get returnType => paramProjection.type;

  /// Type projection of the return type parameter.
  TypeProjection get typeProjection => paramProjection.typeProjection;

  /// Identifier of the return type parameter.
  String get paramIdentifier => paramProjection.identifier;

  String get paramLocalIdentifier => paramProjection.localIdentifier;

  /// Whether the return type of the method is nullable.
  bool get isNullable => returnType.endsWith('?');

  bool get useTryFinallyBlock => postambles.isNotEmpty;

  List<String> get annotations => [
        if (method.isDeprecated) method.deprecatedAnnotation,
        if (returnType == 'String' && camelCasedName == 'toString') '@override'
      ];

  /// The header of the method.
  ///   e.g., `void setDateTime(DateTime value)` or `void setToNow()` (method)
  ///   e.g., `int get second` (getter)
  ///   e.g., `set second(int value)` (setter)
  String get header => switch (this) {
        GetterProjection _ => '$returnType get $camelCasedName',
        final SetterProjection p =>
          'set $camelCasedName(${p.parameter.type} ${p.parameter.identifier})',
        MethodProjection _ => '$returnType $camelCasedName($methodParams)'
      };

  /// A shortened version of the method for use in factory constructors, static
  /// methods, and method forwarders.
  ///   e.g., `setDateTime(value)` or `setToNow()` (method)
  ///   e.g., `period` or `second` (get property)
  ///   e.g., `second = value` (set property)
  String get shortForm {
    final identifiers = exposedParams.map((p) => p.identifier).join(', ');
    return '$camelCasedName($identifiers)';
  }

  List<String> get preambles => [
        if (parameters
            .whereType<StructParameterProjection>()
            .any((param) => param.needsAllocator))
          'final allocator = Arena();',
        ...paramProjection.preambles
      ];

  List<String> get parametersPreamble => parameters
      .where((param) => param.preambles.isNotEmpty)
      .map((param) => param.preambles)
      .expand((param) => param)
      .toList();

  List<String> get parametersPostamble => [
        ...parameters
            .where((param) => param.postambles.isNotEmpty)
            .map((param) => param.postambles)
            .expand((param) => param)
            .toList(),
        if (parameters
            .whereType<StructParameterProjection>()
            .any((param) => param.needsAllocator))
          'allocator.releaseAll();'
      ];

  String get nativeParams => [
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.ffiProjection),
        if (typeProjection.isSimpleArray)
          'Pointer<Uint32> ${paramIdentifier}Size',
        if (!typeProjection.isVoid)
          '${typeProjection.pointer.nativeType} $paramIdentifier',
      ].join(', ');

  String get dartParams => [
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.dartProjection),
        if (typeProjection.isSimpleArray)
          'Pointer<Uint32> ${paramIdentifier}Size',
        if (!typeProjection.isVoid)
          '${typeProjection.pointer.nativeType} $paramIdentifier',
      ].join(', ');

  // WinRT methods always return an HRESULT
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  String get dartPrototype => 'int Function($dartParams)';

  /// The names of the parameters to be passed through to the underlying WinRT
  /// function.
  String get identifiers => [
        'lpVtbl',
        ...parameters.map((param) => param.localIdentifier),
        if (typeProjection.isSimpleArray) '${paramIdentifier}Size',
        if (!typeProjection.isVoid) paramLocalIdentifier,
      ].join(', ');

  String get ffiCall => '''
    final hr = vtable
        .elementAt($vtableOffset)
        .cast<Pointer<NativeFunction<$nativePrototype>>>()
        .value
        .asFunction<$dartPrototype>()($identifiers);
''';

  bool get freeRetValOnFailure =>
      paramProjection.type != 'void' && !useTryFinallyBlock;

  String get failedCheck {
    if (!freeRetValOnFailure) {
      return 'if (FAILED(hr)) throwWindowsException(hr);';
    }

    final identifier = parameters
            .where((p) => p.isOutParam && !p.needsDeallocation)
            .firstOrNull
            ?.identifier ??
        paramLocalIdentifier;

    return '''
    if (FAILED(hr)) {
      free($identifier);
      throwWindowsException(hr);
    }
''';
  }

  String get nullCheck => paramProjection.nullCheck;

  String get returnStatement {
    if (returnType case '' || 'void') return '';

    final creator = switch (paramProjection.creator) {
      '' => '$paramIdentifier.value',
      final creator => creator
    };

    if (paramProjection.creatorPreamble.isEmpty) return 'return $creator;';

    return '''
      ${paramProjection.creatorPreamble}
      return $creator;''';
  }

  List<String> get postambles => paramProjection.postambles;

  String get methodBody => useTryFinallyBlock
      ? '''
    ${preambles.join('\n')}

    try {
      ${parametersPreamble.join('\n')}

      $ffiCall

      ${parametersPostamble.join('\n')}

      $failedCheck

      $nullCheck

      $returnStatement
    } finally {
      ${postambles.join('\n')}
    }'''
      : '''
    ${preambles.join('\n')}
    ${parametersPreamble.join('\n')}

    $ffiCall

    ${parametersPostamble.join('\n')}

    $failedCheck
    $nullCheck

    $returnStatement''';

  String get projection => [
        if (annotations.isNotEmpty) '  ${annotations.join('\n')}',
        '''
  $header {
    $methodBody
  }
'''
      ].join('\n');

  @override
  String toString() {
    try {
      return projection;
    } catch (_) {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.
      print("Failed to project method '$method' from '${method.parent}'.");
      return '';
    }
  }
}
