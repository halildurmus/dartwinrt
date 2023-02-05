// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../models/models.dart';
import '../utils.dart';
import 'parameter.dart';
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
        parameters = method.parameters.map(ParameterProjection.create).toList(),
        returnType = TypeProjection(method.returnType.typeIdentifier);

  /// The retrieved Windows metadata for the method or property.
  final Method method;

  /// Offset into the COM v-table that represents the method or property.
  final int vtableOffset;

  /// The name, incorporating any overloads that may be required.
  final String name;

  /// Projections for the parameters of the method.
  final List<ParameterProjection> parameters;

  /// Projection for the return type.
  final TypeProjection returnType;

  /// Returns the appropriate method projection for the [method] based on the
  /// return type.
  factory MethodProjection.create(Method method, int vtableOffset) {
    final projectedType =
        TypeProjection(method.returnType.typeIdentifier).projectionType;
    if (projectedType == ProjectionType.uri &&
        methodBelongsToUriRuntimeClass(method)) {
      return InterfaceMethodProjection(method, vtableOffset);
    }

    switch (projectedType) {
      case ProjectionType.asyncAction:
        return AsyncActionMethodProjection(method, vtableOffset);
      case ProjectionType.asyncOperation:
        return AsyncOperationMethodProjection(method, vtableOffset);
      case ProjectionType.class_:
        return ClassMethodProjection(method, vtableOffset);
      case ProjectionType.asyncActionWithProgress:
      case ProjectionType.asyncOperationWithProgress:
      case ProjectionType.interface:
        return InterfaceMethodProjection(method, vtableOffset);
      case ProjectionType.dateTime:
        return DateTimeMethodProjection(method, vtableOffset);
      case ProjectionType.delegate:
        return DelegateMethodProjection(method, vtableOffset);
      case ProjectionType.duration:
        return DurationMethodProjection(method, vtableOffset);
      case ProjectionType.enum_:
        return EnumMethodProjection(method, vtableOffset);
      case ProjectionType.guid:
        return GuidMethodProjection(method, vtableOffset);
      case ProjectionType.map:
        return MapMethodProjection(method, vtableOffset);
      case ProjectionType.mapView:
        return MapViewMethodProjection(method, vtableOffset);
      case ProjectionType.object:
        return ObjectMethodProjection(method, vtableOffset);
      case ProjectionType.reference:
        return ReferenceMethodProjection(method, vtableOffset);
      case ProjectionType.string:
        return StringMethodProjection(method, vtableOffset);
      case ProjectionType.struct:
        return StructMethodProjection(method, vtableOffset);
      case ProjectionType.uri:
        return UriMethodProjection(method, vtableOffset);
      case ProjectionType.vector:
        return VectorMethodProjection(method, vtableOffset);
      case ProjectionType.vectorView:
        return VectorViewMethodProjection(method, vtableOffset);
      case ProjectionType.void_:
        return VoidMethodProjection(method, vtableOffset);
      case ProjectionType.dartPrimitive:
        return DefaultMethodProjection(method, vtableOffset);
      default:
        throw UnsupportedError('Unsupported method type: $projectedType');
    }
  }

  /// The method name without uppercased first letter.
  ///
  /// Windows Runtime methods and properties are typically named in TitleCase,
  /// but the Dart idiom is camelCase. This also has the significant advantage
  /// of making it easier to avoid name conflicts.
  String get camelCasedName => safeIdentifierForString(name.toCamelCase());

  /// The parameters exposed by a projected Dart method.
  String get methodParams =>
      parameters.map((param) => param.paramProjection).join(', ');

  /// A shortened version of the method declaration for use in factory
  /// constructors, static methods, and method forwarders.
  ///   e.g. `void setDateTime(DateTime value)` or `void setToNow()` (method)
  ///   e.g. `int get period` or `int get second` (get property)
  ///   e.g. `set second(int value)` (set property)
  String get shortDeclaration => toString().split('{').first.trim();

  /// A shortened version of the method for use in factory constructors, static
  /// methods, and method forwarders.
  ///   e.g. `setDateTime(value)` or `setToNow()` (method)
  ///   e.g. `period` or `second` (get property)
  ///   e.g. `second = value` (set property)
  String get shortForm =>
      '$camelCasedName(${parameters.map((param) => param.identifier).join(', ')})';

  String get parametersPreamble =>
      parameters.map((param) => param.preamble).join('\n');

  String get parametersPostamble =>
      parameters.map((param) => param.postamble).join('\n');

  // WinRT methods always return an HRESULT
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  String get dartPrototype => 'int Function($dartParams)';

  /// The names of the parameters to be passed through to the underlying WinRT
  /// function.
  String get identifiers => [
        'ptr.ref.lpVtbl',
        ...parameters.map((param) => param.localIdentifier),
        if (!returnType.isVoid) 'retValuePtr',
      ].join(', ');

  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
        if (!returnType.isVoid)
          returnType.dartType == 'Pointer<COMObject>'
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].join(', ');

  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
        if (!returnType.isVoid)
          returnType.dartType == 'Pointer<COMObject>'
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].join(', ');

  String ffiCall({String params = '', bool freeRetValOnFailure = false}) {
    final identifiers =
        params.isNotEmpty ? 'ptr.ref.lpVtbl, $params' : this.identifiers;
    return [
      '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()($identifiers);
''',
      if (freeRetValOnFailure)
        'if (FAILED(hr)) { free(retValuePtr); throw WindowsException(hr); }'
      else
        'if (FAILED(hr)) throw WindowsException(hr);'
    ].join('\n');
  }

  /// The projection for the method.
  String get methodProjection;

  @override
  String toString() {
    try {
      return methodProjection.toString();
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project WinRT method: ${method.name}');
      return '';
    }
  }
}
