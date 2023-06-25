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
        returnTypeProjection = TypeProjection(method.returnType.typeIdentifier);

  /// The retrieved Windows metadata for the method or property.
  final Method method;

  /// Offset into the COM v-table that represents the method or property.
  final int vtableOffset;

  /// The name, incorporating any overloads that may be required.
  final String name;

  /// Projections for the parameters of the method.
  final List<ParameterProjection> parameters;

  /// Type projection of the return type.
  final TypeProjection returnTypeProjection;

  /// Returns the appropriate method projection for the [method] based on the
  /// return type.
  factory MethodProjection.create(Method method, int vtableOffset) {
    try {
      final projectionType = method.projectionType;
      return switch (projectionType) {
        ProjectionType.asyncAction =>
          AsyncActionMethodProjection(method, vtableOffset),
        ProjectionType.asyncActionWithProgress =>
          ObjectMethodProjection(method, vtableOffset),
        ProjectionType.asyncOperation =>
          AsyncOperationMethodProjection(method, vtableOffset),
        ProjectionType.asyncOperationWithProgress =>
          ObjectMethodProjection(method, vtableOffset),
        ProjectionType.dartPrimitive =>
          DefaultMethodProjection(method, vtableOffset),
        ProjectionType.dartPrimitiveList =>
          DefaultListMethodProjection(method, vtableOffset),
        ProjectionType.dateTime =>
          DateTimeMethodProjection(method, vtableOffset),
        ProjectionType.dateTimeList =>
          DateTimeListMethodProjection(method, vtableOffset),
        ProjectionType.delegate =>
          DelegateMethodProjection(method, vtableOffset),
        ProjectionType.duration =>
          DurationMethodProjection(method, vtableOffset),
        ProjectionType.durationList =>
          DurationListMethodProjection(method, vtableOffset),
        ProjectionType.enum_ => EnumMethodProjection(method, vtableOffset),
        ProjectionType.enumList =>
          EnumListMethodProjection(method, vtableOffset),
        ProjectionType.genericEnum =>
          GenericEnumMethodProjection(method, vtableOffset),
        ProjectionType.genericObject =>
          GenericObjectMethodProjection(method, vtableOffset),
        ProjectionType.guid => GuidMethodProjection(method, vtableOffset),
        ProjectionType.guidList =>
          GuidListMethodProjection(method, vtableOffset),
        ProjectionType.map => MapMethodProjection(method, vtableOffset),
        ProjectionType.mapView => MapViewMethodProjection(method, vtableOffset),
        ProjectionType.object => ObjectMethodProjection(method, vtableOffset),
        ProjectionType.objectList =>
          ObjectListMethodProjection(method, vtableOffset),
        ProjectionType.reference =>
          ReferenceMethodProjection(method, vtableOffset),
        ProjectionType.string => StringMethodProjection(method, vtableOffset),
        ProjectionType.stringList =>
          StringListMethodProjection(method, vtableOffset),
        ProjectionType.struct => StructMethodProjection(method, vtableOffset),
        ProjectionType.structList =>
          StructListMethodProjection(method, vtableOffset),
        ProjectionType.uri => UriMethodProjection(method, vtableOffset),
        ProjectionType.uriList => UriListMethodProjection(method, vtableOffset),
        ProjectionType.vector => VectorMethodProjection(method, vtableOffset),
        ProjectionType.vectorView =>
          VectorViewMethodProjection(method, vtableOffset),
        ProjectionType.void_ => VoidMethodProjection(method, vtableOffset),
        _ => throw WinRTGenException(
            'Unsupported projection type: $projectionType'),
      };
    } catch (_) {
      print('Failed to project method "$method" from "${method.parent}".');
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

  /// The parameters, with the exception of some `__xxSize` parameters.
  Iterable<ParameterProjection> get _params {
    return parameters.where((param) {
      // Exclude the __xxSize parameter on FillArray and PassArray styles as
      // simpleArray params are projected as List. See the
      // DefaultListParameterProjection class.
      if (isSimpleArraySizeIdentifier(param.parameter.name)) {
        if (param.parameter.isInParam ||
            (param.parameter.isOutParam &&
                param.parameter.typeIdentifier.baseType ==
                    BaseType.pointerTypeModifier)) {
          return false;
        }
      }

      return true;
    });
  }

  /// The parameters exposed by a projected Dart method (e.g. `int age`,
  /// `int index, String value`).
  String get methodParams =>
      _params.map((param) => param.paramProjection).join(', ');

  /// The return type of the method (e.g. `String`).
  String get returnType => returnTypeProjection.dartType;

  /// Whether the return type of the method is nullable.
  bool get isNullable => returnType.endsWith('?');

  /// The header of the method.
  ///   e.g. `void setDateTime(DateTime value)` or `void setToNow()` (method)
  ///   e.g. `int get second` (getter)
  ///   e.g. `set second(int value)` (setter)
  String get methodHeader => switch (this) {
        GetterProjection _ => '$returnType get $camelCasedName',
        final SetterProjection p =>
          'set $camelCasedName(${p.param.type} value)',
        MethodProjection _ => '$returnType $camelCasedName($methodParams)'
      };

  /// A shortened version of the method for use in factory constructors, static
  /// methods, and method forwarders.
  ///   e.g. `setDateTime(value)` or `setToNow()` (method)
  ///   e.g. `period` or `second` (get property)
  ///   e.g. `second = value` (set property)
  String get shortForm {
    final identifiers = _params.map((param) => param.identifier).join(', ');
    return '$camelCasedName($identifiers)';
  }

  String get parametersPreamble => switch (this) {
        GetterProjection _ || SetterProjection _ => '',
        MethodProjection _ => parameters
            .where((param) => param.preamble.isNotEmpty)
            .map((param) => param.preamble)
            .join('\n'),
      };

  String get parametersPostamble => switch (this) {
        GetterProjection _ || SetterProjection _ => '',
        MethodProjection _ => parameters
            .where((param) => param.postamble.isNotEmpty)
            .map((param) => param.postamble)
            .join('\n'),
      };

  // WinRT methods always return an HRESULT
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  String get dartPrototype => 'int Function($dartParams)';

  /// The names of the parameters to be passed through to the underlying WinRT
  /// function.
  String get identifiers => [
        'ptr.ref.lpVtbl',
        ...parameters.map((param) => param.localIdentifier),
        if (returnTypeProjection.isSimpleArray) 'pRetValueSize',
        if (!returnTypeProjection.isVoid) 'retValuePtr',
      ].join(', ');

  String get nativeParams => [
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.ffiProjection),
        if (returnTypeProjection.isSimpleArray) 'Pointer<Uint32> retValueSize',
        if (!returnTypeProjection.isVoid)
          '${returnTypeProjection.retValuePtr} retValuePtr',
      ].join(', ');

  String get dartParams => [
        'VTablePointer lpVtbl',
        ...parameters.map((param) => param.dartProjection),
        if (returnTypeProjection.isSimpleArray) 'Pointer<Uint32> retValueSize',
        if (!returnTypeProjection.isVoid)
          '${returnTypeProjection.retValuePtr} retValuePtr',
      ].join(', ');

  String ffiCall({String identifier = '', bool freeRetValOnFailure = false}) {
    final identifiers_ =
        identifier.isNotEmpty ? 'ptr.ref.lpVtbl, $identifier' : identifiers;
    return [
      parametersPreamble,
      '',
      '''
    final hr = ptr.ref.vtable
        .elementAt($vtableOffset)
        .cast<Pointer<NativeFunction<$nativePrototype>>>()
        .value
        .asFunction<$dartPrototype>()($identifiers_);
''',
      parametersPostamble,
      '',
      if (freeRetValOnFailure)
        'if (FAILED(hr)) { free(retValuePtr); throw WindowsException(hr); }'
      else
        'if (FAILED(hr)) throw WindowsException(hr);'
    ].join('\n');
  }

  String get methodDeclaration;

  @override
  String toString() {
    try {
      return [
        if (method.isDeprecated) method.deprecatedAnnotation,
        methodDeclaration
      ].join('\n');
    } catch (_) {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.
      print('Unable to project method "$method" from "${method.parent}".');
      return '';
    }
  }
}
