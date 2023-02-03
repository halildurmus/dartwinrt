// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../utils.dart';
import 'interface.dart';

class FactoryConstructorsProjection {
  FactoryConstructorsProjection(this.interface);

  /// The fully qualified type name of a factory interface (e.g.
  /// `Windows.Globalization.ICalendarFactory`).
  final String interface;

  /// The shorter [interface] name (e.g. `ICalendarFactory`).
  String get shortName => lastComponent(interface);

  List<String>? _methods;

  List<String> get methods => _methods ??= _cacheMethods();

  List<String> _cacheMethods() {
    final factoryTypeDef = MetadataStore.getMetadataForType(interface);
    if (factoryTypeDef == null) {
      throw Exception('Factory typedef $interface missing.');
    }

    final interfaceProjection = InterfaceProjection(factoryTypeDef);
    final methods = <String>[];

    for (final method in interfaceProjection.methodProjections) {
      final className = method.shortDeclaration.split(' ').first;
      methods.add('''
  factory $className.${method.camelCasedName}(${method.methodParams}) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_$shortName);
    final object =
        $shortName.fromRawPointer(activationFactoryPtr);

    try {
       return object.${method.shortForm};
    } finally {
      object.release();
    }
  }
''');
    }

    return methods;
  }

  @override
  String toString() => '''
  // $shortName methods
  ${methods.join('\n')}
''';
}
