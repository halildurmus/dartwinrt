// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../utils.dart';
import 'interface.dart';
import 'method.dart';

class FactoryConstructorsProjection {
  FactoryConstructorsProjection(this.interface)
      : methodProjections =
            InterfaceProjection.from(interface).methodProjections;

  /// The fully qualified type name of a factory interface (e.g.
  /// `Windows.Globalization.ICalendarFactory`).
  final String interface;

  final List<MethodProjection> methodProjections;

  /// The shorter [interface] name (e.g. `ICalendarFactory`).
  String get shortName => lastComponent(interface);

  List<String>? _methods;

  List<String> get methods => _methods ??= _cacheMethods();

  List<String> _cacheMethods() {
    final methods = <String>[];

    for (final method in methodProjections) {
      final className = method.methodHeader.split(' ').first;
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
