// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../utilities/utilities.dart';
import 'getter.dart';
import 'method.dart';
import 'method_forwarders.dart';
import 'setter.dart';

class InterfaceProjection {
  InterfaceProjection(this.typeDef, {this.comment = ''})
      : isDeprecated = typeDef.isDeprecated;

  final TypeDef typeDef;
  final String comment;
  final bool isDeprecated;

  /// Attempts to create an [InterfaceProjection] from [fullyQualifiedType] by
  /// searching its [TypeDef].
  ///
  /// ```dart
  /// final projection =
  ///    InterfaceProjection.from('Windows.Foundation.IAsyncInfo');
  /// ```
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedType] is
  /// found.
  factory InterfaceProjection.from(String fullyQualifiedType,
      {String comment = ''}) {
    try {
      final typeDef = getMetadataForType(fullyQualifiedType);
      return InterfaceProjection(typeDef, comment: comment);
    } catch (_) {
      print('Failed to project interface "$fullyQualifiedType".');
      rethrow;
    }
  }

  /// Returns the shorter name of the [typeDef] (e.g. `IAsyncInfo`, `Calendar`).
  String get shortName => outerType(typeDef.shortName);

  /// Returns the path to the folder where the current interface is located
  /// (e.g. `windows_storage/lib/src/pickers` for
  /// `Windows.Storage.Pickers.IFileOpenPicker`).
  String get currentFolderPath => folderFromType(typeDef.name);

  /// Returns the package name for the [typeDef] (e.g. `windows_globalization`
  /// for `Windows.Globalization.Calendar`).
  String get packageName => typeDef.packageName;

  /// Returns the fully-qualified name of the [typeDef] (e.g.
  /// `Windows.Globalization.Calendar`, `Windows.Foundation.IReference`1`).
  String get name => typeDef.fullyQualifiedName;

  String get header => classFileHeader;

  String get iidConstant => '''
/// @nodoc
const IID_$shortName = ${quote(typeDef.iid)};
''';

  String get category => '';

  String get classPreamble {
    final wrappedComment = wrapCommentText(comment);
    return [
      if (wrappedComment.isNotEmpty) wrappedComment,
      if (wrappedComment.isNotEmpty && category.isNotEmpty) '///',
      if (category.isNotEmpty) '/// {@category $category}',
    ].join('\n');
  }

  List<TypeDef> get inheritedInterfaces => typeDef.interfaces
    ..removeWhere((interface) =>
        excludedInterfacesInInherits.contains(interface.fullyQualifiedName));

  String get inheritsFrom => inheritedInterfaces
      .map((interface) => interface.shortName)
      .toList()
      .join(', ');

  Set<String> get interfaceImports => importsForInheritedInterfaces;

  /// Converts [path] to an equivalent relative path from the
  /// [currentFolderPath].
  String relativePathTo(String path) =>
      relativePath(path, start: currentFolderPath);

  Set<String> get extraImports => {
        'dart:async',
        'dart:ffi',
        'package:ffi/ffi.dart',
        'package:win32/win32.dart',
        if (packageName == 'windows_foundation') ...[
          relativePathTo('windows_foundation/lib/internal.dart'),
          relativePathTo('windows_foundation/lib/src/helpers.dart'),
          relativePathTo(
              'windows_foundation/lib/src/collections/iiterator.dart'),
        ] else ...[
          'package:windows_foundation/internal.dart',
          'package:windows_foundation/windows_foundation.dart',
        ],
      };

  Set<String> get imports =>
      {...interfaceImports, ...importsForTypes, ...extraImports}
        // TODO: Remove this once WinRT events are supported.
        ..removeWhere((import) => import.endsWith('eventargs.dart'));

  String get importHeader {
    return sortImports(
      imports.map((import) {
        if (import == 'package:win32/win32.dart') {
          // Hide DocumentProperties to avoid conflicts with a class of the same
          // name in the windows_storage package.
          return "import ${quote(import)} hide DocumentProperties;";
        }

        return "import ${quote(import)};";
      }).toList(),
    ).join('\n');
  }

  String get classHeader {
    final deprecatedAnnotation = typeDef.deprecatedAnnotation;
    final implementsClause =
        inheritsFrom.isNotEmpty ? ' implements $inheritsFrom' : '';
    return [
      if (isDeprecated) deprecatedAnnotation,
      'class $shortName extends IInspectable$implementsClause'
    ].join('\n');
  }

  String get namedConstructor => '$shortName.fromPtr(super.ptr);';

  String get fromFactoryConstructor => '''
  factory $shortName.from(IInspectable interface) =>
      $shortName.fromPtr(interface.toInterface(IID_$shortName));''';

  // WinRT interfaces don't inherit in metadata (e.g. IAsyncInfo has no parent),
  // but all WinRT interfaces have a base type of IInspectable as far as the
  // COM vtable is concerned. They contain the methods of IInspectable (as well
  // as IUnknown, from which IInspectable itself inherits).
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

      if (method.isGetProperty) {
        final projection = GetterProjection.create(method, vtableOffset++);
        projections.add(projection);
      } else if (method.isSetProperty) {
        final projection = SetterProjection.create(method, vtableOffset++);
        projections.add(projection);
      } else {
        final projection = MethodProjection.create(method, vtableOffset++);
        projections.add(projection);
      }
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
  String toString() => '''
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
