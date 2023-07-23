// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../models/models.dart';
import '../../utilities/utilities.dart';
import '../parameter.dart';

/// Parameter projection for `T extends WinRTEnum` parameters.
final class GenericEnumParameterProjection extends ParameterProjection {
  GenericEnumParameterProjection(super.parameter);

  @override
  String get type {
    final genericParamSequence = parameter.typeIdentifier.genericParamSequence;
    return method.parent.genericParams[genericParamSequence].name;
  }

  @override
  String get creator => switch (method.parent.genericParams) {
        [final param, _] when param.name == type =>
          'enumKeyCreator($identifier.value)',
        _ => 'enumCreator($identifier.value)'
      };

  @override
  String get into => '($identifier as WinRTEnum).value';

  @override
  String get toListInto => '$identifier.cast<WinRTEnum>()[i].value';

  @override
  String get toListIdentifier => 'toEnumList';

  @override
  String get toListArg => 'enumCreator';
}

/// Parameter projection for `T extends IInspectable` parameters.
final class GenericObjectParameterProjection extends ParameterProjection {
  GenericObjectParameterProjection(super.parameter);

  @override
  bool get isNullable =>
      typeProjection.typeIdentifier.name ==
      TypeArgKind.nullableInspectable.name;

  @override
  String get type {
    final genericParamSequence = parameter.typeIdentifier.genericParamSequence;
    return method.parent.genericParams[genericParamSequence].name;
  }

  @override
  String get creator => 'creator($identifier)';

  @override
  String get into => '($identifier as IInspectable).lpVtbl';

  @override
  String get toListInto => '$identifier.cast<IInspectable>()[i].lpVtbl';

  @override
  String get toListArg => 'creator';

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
