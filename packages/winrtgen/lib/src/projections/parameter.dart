// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../utils.dart';
import 'type.dart';

/// A parameter.
///
/// Parameters are a tuple of a type and a name.
abstract class ParameterProjection {
  const ParameterProjection(this.method, this.name, this.type);

  /// The method that this parameter is a part of.
  final Method method;

  /// The name of the parameter.
  final String name;

  /// The type of the parameter.
  final TypeProjection type;

  String get ffiProjection => '${type.nativeType} $identifier';

  String get dartProjection => '${type.dartType} $identifier';

  String get paramProjection => '${type.methodParamType} $identifier';

  /// The name of the parameter that is safe to use as a Dart identifier.
  String get identifier => safeIdentifierForString(name);

  /// Code to be inserted prior to the function call to set up the variable
  /// conversion.
  ///
  /// Any preamble that allocates memory should have a matching postamble that
  /// frees the memory.
  String get preamble;

  /// Code to be inserted prior to the function call to tear down allocated
  /// memory.
  String get postamble;

  /// The name of the converted variable that should be passed inside the method
  /// call (e.g. `today` -> `todayDateTime`)
  String get localIdentifier;

  @override
  String toString() => '$name (${type.nativeType})';
}
