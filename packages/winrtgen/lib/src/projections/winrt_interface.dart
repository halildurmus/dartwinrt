// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import '../utils.dart';
import 'winrt_get_property.dart';
import 'winrt_method.dart';
import 'winrt_method_forwarders.dart';
import 'winrt_set_property.dart';

class WinRTInterfaceProjection {
  WinRTInterfaceProjection(this.typeDef, {this.comment = ''});

  final TypeDef typeDef;
  final String comment;

  /// Attempts to create a [WinRTInterfaceProjection] from [fullyQualifiedType]
  /// by searching its [TypeDef].
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedType] is
  /// found.
  factory WinRTInterfaceProjection.from(String fullyQualifiedType,
      {String comment = ''}) {
    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedType);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedType");
    return WinRTInterfaceProjection(typeDef, comment: comment);
  }

  /// Returns the shorter name of the [typeDef] (e.g. `IAsyncInfo`, `Calendar`).
  String get shortName => stripGenerics(lastComponent(typeDef.name));

  /// Returns the path to the folder where the current interface is located
  /// (e.g. `packages/windows_storage/lib/src/pickers` for
  /// `Windows.Storage.Pickers.IFileOpenPicker`).
  String get currentFolderPath => 'packages/${folderFromType(typeDef.name)}';

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

  List<TypeDef> get implementsInterfaces => typeDef.interfaces
    ..removeWhere((interface) => excludedWindowsRuntimeInterfacesInInherits
        .contains(interface.fullyQualifiedName));

  String get inheritsFrom => implementsInterfaces
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
          relativePathTo('packages/windows_foundation/lib/internal.dart'),
          relativePathTo('packages/windows_foundation/lib/src/callbacks.dart'),
          relativePathTo('packages/windows_foundation/lib/src/helpers.dart'),
          relativePathTo(
              'packages/windows_foundation/lib/src/iinspectable.dart'),
          relativePathTo('packages/windows_foundation/lib/src/types.dart'),
          relativePathTo(
              'packages/windows_foundation/lib/src/collections/iiterator.dart'),
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
        if (useImportAliasForWinRTUri && import.endsWith('/uri.dart')) {
          // Use import alias to avoid conflict with the dart:core's Uri.
          return "import 'package:windows_foundation/uri.dart' as winrt_uri;";
        }

        return "import '$import';";
      }).toList(),
    ).join('\n');
  }

  String get implementsClause =>
      inheritsFrom.isNotEmpty ? 'implements $inheritsFrom ' : '';

  String get classDeclaration =>
      'class $shortName extends IInspectable $implementsClause{';

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

  List<WinRTMethodProjection>? _methodProjections;

  List<WinRTMethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  List<WinRTMethodProjection> _cacheMethodProjections() {
    final projection = <WinRTMethodProjection>[];
    var vtableOffset = vtableStart;

    for (final method in typeDef.methods) {
      if (method.isGetProperty) {
        final getPropertyProjection =
            WinRTGetPropertyProjection.create(method, vtableOffset++);
        projection.add(getPropertyProjection);
      } else if (method.isSetProperty) {
        final setPropertyProjection =
            WinRTSetPropertyProjection.create(method, vtableOffset++);
        projection.add(setPropertyProjection);
      } else {
        final methodProjection =
            WinRTMethodProjection.create(method, vtableOffset++);
        projection.add(methodProjection);
      }
    }

    return projection;
  }

  List<WinRTMethodForwardersProjection>? _methodForwarders;

  List<WinRTMethodForwardersProjection> get methodForwarders =>
      _methodForwarders ??= _cacheMethodForwarders();

  List<WinRTMethodForwardersProjection> _cacheMethodForwarders() =>
      implementsInterfaces
          .where((interface) =>
              !excludedWindowsRuntimeInterfacesInMethodForwarders
                  .contains(interface.fullyQualifiedName))
          .map((interface) => WinRTMethodForwardersProjection(interface, this))
          .toList();

  @override
  String toString() => '''
$header
$importHeader
$iidConstant

$classPreamble
$classDeclaration
  // vtable begins at $vtableStart, is ${methodProjections.length} entries long.
  $namedConstructor

  $fromFactoryConstructor

  ${methodProjections.join('\n')}
  ${methodForwarders.join('\n')}
}
''';
}
