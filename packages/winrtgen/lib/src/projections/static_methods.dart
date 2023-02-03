// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../utils.dart';
import 'interface.dart';

class StaticMethodsProjection {
  StaticMethodsProjection(this.interface);

  /// The fully-qualified type name of a static interface (e.g.
  /// `Windows.Foundation.IPropertyValueStatics`).
  final String interface;

  /// The shorter [interface] name (e.g. `IPropertyValueStatics`).
  String get shortName => lastComponent(interface);

  List<String>? _methods;

  List<String> get methods => _methods ??= _cacheMethods();

  List<String> _cacheMethods() {
    final staticTypeDef = MetadataStore.getMetadataForType(interface);
    if (staticTypeDef == null) {
      throw Exception('Static typedef $interface missing.');
    }

    final methods = <String>[];
    final interfaceProjection = InterfaceProjection(staticTypeDef);

    for (final method in interfaceProjection.methodProjections) {
      final statement = 'object.${method.shortForm};';
      final returnStatement =
          method.method.isSetProperty ? statement : 'return $statement';
      methods.add('''
  static ${method.shortDeclaration} {
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
