// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import '../utils.dart';
import 'getter.dart';
import 'method.dart';
import 'method_forwarders.dart';
import 'setter.dart';

class InterfaceProjection {
  InterfaceProjection(this.typeDef, {this.comment = ''});

  final TypeDef typeDef;
  final String comment;

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
    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedType);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedType");
    return InterfaceProjection(typeDef, comment: comment);
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
const IID_$shortName = '${typeDef.guid}';
''';

  String get category => 'interface';

  String get classPreamble {
    final wrappedComment = wrapCommentText(comment);
    final categoryComment = '/// {@category $category}';
    return wrappedComment.isNotEmpty
        ? '$wrappedComment\n///\n$categoryComment'
        : categoryComment;
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
          relativePathTo('windows_foundation/lib/src/iinspectable.dart'),
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
    final useImportAliasForWinRTUri =
        !['IUriRuntimeClass', 'IUriRuntimeClassFactory'].contains(shortName);

    return sortImports(
      imports.map((import) {
        if (import == 'package:win32/win32.dart') {
          // Hide DocumentProperties to avoid conflicts with a class of the same
          // name in the windows_storage package.
          return "import '$import' hide DocumentProperties;";
        }

        if (useImportAliasForWinRTUri && import.endsWith('/uri.dart')) {
          // Use import alias to avoid conflict with the dart:core's Uri.
          return "import 'package:windows_foundation/uri.dart' as winrt_uri;";
        }

        return "import '$import';";
      }).toList(),
    ).join('\n');
  }

  String get classHeader {
    final implementsClause =
        inheritsFrom.isNotEmpty ? ' implements $inheritsFrom' : '';
    return 'class $shortName extends IInspectable$implementsClause';
  }

  String get namedConstructor => '$shortName.fromRawPointer(super.ptr);';

  String get fromFactoryConstructor => '''
  factory $shortName.from(IInspectable interface) =>
      $shortName.fromRawPointer(interface.toInterface(IID_$shortName));''';

  // WinRT interfaces don't inherit in metadata (e.g. IAsyncInfo has no parent),
  // but all WinRT interfaces have a base type of IInspectable as far as the
  // COM vtable is concerned. They contain the methods of IInspectable (as well
  // as IUnknown, from which IInspectable itself inherits).
  //
  // For more information, see the Interfaces section of the documentation here:
  // https://docs.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system
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
