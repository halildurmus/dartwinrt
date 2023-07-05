// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../exception/exception.dart';
import '../../utilities/utilities.dart';
import '../parameter.dart';

/// Parameter projection for WinRT enum parameters.
final class EnumParameterProjection extends ParameterProjection {
  EnumParameterProjection(super.parameter);

  @override
  String get type {
    if (parameter.typeIdentifier.type case final type?) return type.shortName;
    throw WinRTGenException('Type ${parameter.typeIdentifier} has no TypeDef.');
  }

  @override
  String get creator => '$type.from($identifier.value)';

  @override
  String get into => '$identifier.value';

  @override
  String get toListCreator => '.map($type.from).toList()';

  @override
  String get toListInto => '$identifier[i].value';
}
