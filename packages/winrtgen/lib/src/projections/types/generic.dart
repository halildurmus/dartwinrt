// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../../models/models.dart';
import '../parameter.dart';

/// Parameter projection for `T extends WinRTEnum` parameters.
final class GenericEnumParameterProjection extends ParameterProjection {
  GenericEnumParameterProjection(super.parameter);

  String get genericParamName => method
      .parent.genericParams[parameter.typeIdentifier.genericParamSequence].name;

  @override
  String get type => genericParamName;

  @override
  String get creator => '${type.toCamelCase()}EnumCreator($identifier.value)';

  @override
  String get into => '($identifier as WinRTEnum).value';
}

/// Parameter projection for `T extends IInspectable` parameters.
final class GenericObjectParameterProjection extends ParameterProjection {
  GenericObjectParameterProjection(super.parameter);

  @override
  bool get isNullable =>
      typeProjection.typeIdentifier.name ==
      TypeArgKind.nullableInspectable.name;

  String get genericParamName => method
      .parent.genericParams[parameter.typeIdentifier.genericParamSequence].name;

  @override
  String get type => genericParamName;

  @override
  String get creator => '${type.toCamelCase()}ObjectCreator($identifier)';

  @override
  String get into => '($identifier as IInspectable).lpVtbl';

  // No deallocation is needed as Finalizer will handle it.
  @override
  bool get needsDeallocation => false;

  @override
  String get nullCheck {
    if (!isNullable) return '';
    return '''
    if ($identifier.isNull) {
      free($identifier);
      return null as $type;
    }
''';
  }
}
