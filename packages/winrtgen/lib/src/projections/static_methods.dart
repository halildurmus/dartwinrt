// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../utils.dart';
import 'interface.dart';
import 'method.dart';

class StaticMethodsProjection {
  StaticMethodsProjection(this.interface)
      : methodProjections =
            InterfaceProjection.from(interface).methodProjections;

  /// The fully-qualified type name of a static interface (e.g.
  /// `Windows.Foundation.IPropertyValueStatics`).
  final String interface;

  final List<MethodProjection> methodProjections;

  /// The shorter [interface] name (e.g. `IPropertyValueStatics`).
  String get shortName => lastComponent(interface);

  List<String>? _methods;

  List<String> get methods => _methods ??= _cacheMethods();

  List<String> _cacheMethods() {
    final methods = <String>[];

    for (final method in methodProjections) {
      final statement = 'object.${method.shortForm};';
      final returnStatement =
          method.method.isSetProperty ? statement : 'return $statement';
      methods.add('''
  static ${method.methodHeader} {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_$shortName);
    final object =
        $shortName.fromRawPointer(activationFactoryPtr);

    try {
      $returnStatement
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
