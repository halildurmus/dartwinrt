// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../utils.dart';
import 'parameter.dart';
import 'type.dart';

/// A generic class representing an entry in a COM function vtable.
///
/// This is the base class for a range of WinRT-based objects, including
/// [WinRTMethodProjection], [WinRTGetterProjection], [WinRTSetterProjection].
/// All of these map down to an entry in a COM vtable representing a method.
///
/// Methods have names, a list of parameters, and may return a type.
abstract class MethodProjection {
  /// The retrieved Windows metadata for the method or property.
  final Method method;

  /// Offset into the COM v-table that represents the method or property.
  final int vtableOffset;

  /// The name, incorporating any overloads that may be required.
  final String name;

  /// Projections for the parameters of the method.
  List<ParameterProjection> get parameters;

  /// Projection for the return type.
  TypeProjection get returnType;

  MethodProjection(this.method, this.vtableOffset)
      : name = uniquelyNameMethod(method);

  /// Uniquely name the method.
  ///
  /// Dart doesn't allow overloaded methods, so we have to rename methods that
  /// are duplicated.
  static String uniquelyNameMethod(Method method) {
    // Is it a WinRT method overloaded with a name provided by the metadata?
    final overloadName = method
        .attributeAsString('Windows.Foundation.Metadata.OverloadAttribute');
    if (overloadName.isNotEmpty) return overloadName;

    // If not, we check whether multiple methods exist with the same name. We
    // also need to check up the interface chain, since otherwise overloaded
    // methods may be missed. For example, IDWriteFactory2 contains methods that
    // overload those in IDWriteFactory1.
    final overloads =
        method.parent.methods.where((m) => m.name == method.name).toList();
    var interfaceTypeDef = method.parent;
    // perf optimization to save work on the most common case of IUnknown
    while (interfaceTypeDef.interfaces.isNotEmpty &&
        !(interfaceTypeDef.interfaces.first.name ==
            'Windows.Win32.System.Com.IUnknown')) {
      interfaceTypeDef = interfaceTypeDef.interfaces.first;
      overloads
          .addAll(interfaceTypeDef.methods.where((m) => m.name == method.name));
    }

    // If so, and there is more than one entry with the same name, add a suffix
    // to all but the first.
    if (overloads.length > 1) {
      final reversedOverloads = overloads.reversed.toList();
      final overloadIndex =
          reversedOverloads.indexWhere((m) => m.token == method.token);
      if (overloadIndex > 0) {
        return '${safeIdentifierForString(method.name)}_$overloadIndex';
      }
    }

    // Otherwise the original name is fine.
    return method.name;
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

  /// A shortened version of the method declaration for use in mappers.
  ///   e.g. `void setDateTime(DateTime value)` or `void setToNow()` (method)
  ///   e.g. `int get period` or `int get second` (get property)
  ///   e.g. `set second(int value)` (set property)
  String get shortDeclaration => toString().split('{').first.trim();

  /// A shortened version of the method for use in mappers.
  ///   e.g. `setDateTime(value)` or `setToNow()` (method)
  ///   e.g. `period` or `second` (get property)
  ///   e.g. `second = value` (set property)
  String get shortForm =>
      '$camelCasedName(${parameters.map((param) => param.identifier).join(', ')})';

  String get parametersPreamble =>
      parameters.map((param) => param.preamble).join('\n');

  String get parametersPostamble =>
      parameters.map((param) => param.postamble).join('\n');

  /// The native prototype representing the method.
  String get nativePrototype;

  /// The Dart prototype representing the method.
  String get dartPrototype;

  /// The names of the parameters to be passed through to the underlying WinRT
  /// function.
  String get identifiers;

  String get nativeParams;

  String get dartParams;

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
