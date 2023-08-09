// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import '../models/models.dart';
import 'base.dart';
import 'getter.dart';
import 'method.dart';
import 'method_forwarders.dart';
import 'setter.dart';

base class InterfaceProjection extends BaseProjection {
  InterfaceProjection(super.typeDef, {super.comment});

  /// Attempts to create an [InterfaceProjection] from [type] by searching its
  /// [TypeDef].
  ///
  /// ```dart
  /// final projection =
  ///     InterfaceProjection.from('Windows.Foundation.IAsyncInfo');
  /// ```
  factory InterfaceProjection.from(String type, {String comment = ''}) {
    final typeDef = WinRTMetadataStore.findTypeDef(type);
    return InterfaceProjection(typeDef, comment: comment);
  }

  String get header => classFileHeader;

  String get iidConstant => '''
/// @nodoc
const IID_$shortName = ${typeDef.iid.quote()};''';

  List<TypeDef> get inheritedInterfaces => typeDef.interfaces
    ..removeWhere((interface) =>
        excludedInterfacesInInherits.contains(interface.fullyQualifiedName));

  String get inheritsFrom => inheritedInterfaces
      .map((interface) => interface.shortName)
      .toList()
      .join(', ');

  /// Returns imports for [typeDef]'s inherited interfaces.
  Set<String> get interfaceImports => typeDef.interfaces.isEmpty
      ? {}
      : {
          for (final interface in typeDef.interfaces)
            ...importsForTypeDef(interface)
        };

  /// Returns imports for types in parameters and return types of [typeDef]'s
  /// methods, as well as methods from inherited interfaces.
  Set<String> get importsForTypes {
    final methods = {
      ...typeDef.methods,
      // Add the methods from inherited interfaces
      ...[for (final typeDef in typeDef.interfaces) ...typeDef.methods]
    };

    return {
      for (final method in methods)
        for (final param in [...method.parameters, method.returnType])
          ...importsForTypeIdentifier(param.typeIdentifier)
    };
  }

  @override
  Set<String> get imports => {
        'dart:async',
        ...commonImports,
        if (packageName == 'windows_foundation') ...[
          relativePathTo('windows_foundation/lib/internal.dart'),
          relativePathTo('windows_foundation/lib/src/helpers.dart'),
          relativePathTo(
              'windows_foundation/lib/src/collections/iiterator.dart'),
        ] else ...[
          'package:windows_foundation/internal.dart',
          'package:windows_foundation/windows_foundation.dart',
        ],
        ...interfaceImports,
        ...importsForTypes
      }
        // TODO(halildurmus): Remove this once events are supported.
        // https://github.com/dart-windows/dartwinrt/issues/161
        ..removeWhere((import) => import.endsWith('eventargs.dart'));

  @override
  String get classHeader {
    final implementsClause =
        inheritsFrom.isNotEmpty ? ' implements $inheritsFrom' : '';
    return [
      if (isDeprecated) typeDef.deprecatedAnnotation,
      'class $shortName extends IInspectable$implementsClause'
    ].join('\n');
  }

  @override
  String get constructor => '';

  String get namedConstructor => '$shortName.fromPtr(super.ptr);';

  String get fromFactoryConstructor => '''
  factory $shortName.from(IInspectable interface) =>
      $shortName.fromPtr(interface.toInterface(IID_$shortName));''';

  // WinRT interfaces don't inherit in metadata (e.g., IAsyncInfo), but all
  // WinRT interfaces have a base type of IInspectable as far as the COM vtable
  // is concerned. They contain the methods of IInspectable (as well as
  // IUnknown, from which IInspectable itself inherits).
  //
  // For more information, see the Interfaces section of the documentation here:
  // https://learn.microsoft.com/uwp/winrt-cref/winrt-type-system
  int get vtableStart => 6;

  List<MethodProjection>? _methodProjections;

  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  List<MethodProjection> _cacheMethodProjections() {
    final projections = <MethodProjection>[];
    var vtableOffset = vtableStart;

    for (final method in typeDef.methods) {
      if (method.name == '.ctor') continue; // Skip constructors

      final projection = switch (method) {
        final Method m when m.isGetProperty =>
          GetterProjection.create(method, vtableOffset++),
        final Method m when m.isSetProperty =>
          SetterProjection.create(method, vtableOffset++),
        final Method _ => MethodProjection.create(method, vtableOffset++),
      };
      projections.add(projection);
    }

    return projections;
  }

  List<MethodForwardersProjection>? _methodForwarders;

  List<MethodForwardersProjection> get methodForwarders =>
      _methodForwarders ??= _cacheMethodForwarders();

  List<MethodForwardersProjection> _cacheMethodForwarders() =>
      inheritedInterfaces
          .where((interface) => !excludedInterfacesInMethodForwarders
              .contains(interface.fullyQualifiedName))
          .map((interface) => MethodForwardersProjection(interface, this))
          .toList();

  @override
  String get projection => '''
$header
$importHeader

$iidConstant

$classPreamble
$classHeader {
  // vtable begins at $vtableStart, is ${methodProjections.length} entries long.
  $namedConstructor

  $fromFactoryConstructor

${methodProjections.join('\n')}
${methodForwarders.join('\n')}
}
''';
}
