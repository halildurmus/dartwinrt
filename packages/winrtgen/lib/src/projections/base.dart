// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../utilities/utilities.dart';

abstract base class BaseProjection {
  const BaseProjection(this.typeDef, {this.category = '', this.comment = ''});

  final String category;
  final String comment;
  final TypeDef typeDef;

  /// Returns the path to the folder where the current class is located (e.g.
  /// `windows_foundation/lib/src` for `Windows.Foundation.Point`).
  String get currentFolderPath => folderFromType(typeDef.name);

  /// Whether the [typeDef] has the `DeprecatedAttribute`.
  bool get isDeprecated => typeDef.isDeprecated;

  /// Returns the fully-qualified name of the [typeDef] (e.g.
  /// `Windows.Globalization.Calendar`, `Windows.Foundation.IReference`1`).
  String get name => typeDef.fullyQualifiedName;

  /// Returns the shorter name of the [typeDef] (e.g. `IAsyncInfo`, `Calendar`).
  String get shortName => outerType(typeDef.shortName);

  /// Returns the package name for the [typeDef] (e.g. `windows_foundation`
  /// for `Windows.Foundation.Point`).
  String get packageName => typeDef.packageName;

  /// Converts [path] to an equivalent relative path from the
  /// [currentFolderPath].
  String relativePathTo(String path) =>
      relativePath(path, start: currentFolderPath);

  String get header => copyrightHeader;

  Set<String> get commonImports =>
      {'dart:ffi', 'package:ffi/ffi.dart', 'package:win32/win32.dart'};

  Set<String> get imports => {};

  String get importHeader => sortImports(
        imports.map((import) => switch (import) {
              // Hide DocumentProperties to avoid conflicts with a class of the
              // same name in the windows_storage package.
              'package:win32/win32.dart' =>
                'import ${quote(import)} hide DocumentProperties, WinRTStringConversion;',
              _ => 'import ${quote(import)};',
            }),
      ).join('\n');

  String? importForTypeDef(TypeDef typeDef) {
    final type = typeDef.fullyQualifiedName;
    assert(type.isNotEmpty);

    // Don't add import for the current type
    if (this.typeDef.name == type) return null;

    // Don't add import for ignored types
    if (ignoredTypesInImports.contains(type)) return null;

    // TODO(halildurmus): Remove this once delegates are supported.
    if (typeDef.isDelegate) return null;

    // If the type is in another package, return package import for that package
    if (packageName != typeDef.packageName) return typeDef.packageImport;

    // Otherwise, return relative import for that file
    return relativePathTo('${folderFromType(type)}/${fileNameFromType(type)}');
  }

  String? importForTypeIdentifier(TypeIdentifier typeIdentifier) {
    if (!typeIdentifier.name.startsWith('Windows')) return null;
    if (typeIdentifier.type case final type?) return importForTypeDef(type);
    return null;
  }

  Set<String> importsForTypeDef(TypeDef typeDef) {
    final imports = <String>{};

    final import = importForTypeDef(typeDef);
    if (import != null) imports.add(import);

    if (typeDef.typeSpec case final typeSpec?) {
      imports.addAll(importsForTypeIdentifier(typeSpec));
    }

    return imports;
  }

  Set<String> importsForTypeIdentifier(TypeIdentifier typeIdentifier) {
    final imports = <String>{};

    final import = importForTypeIdentifier(typeIdentifier);
    if (import != null) imports.add(import);

    // Keep unwrapping until there are no types left.
    var refType = typeIdentifier.typeArg;
    while (refType != null) {
      final import = importForTypeIdentifier(refType);
      if (import != null) imports.add(import);
      refType = refType.typeArg;
    }

    return imports;
  }

  String get classPreamble {
    final wrappedComment = wrapCommentText(comment);
    return [
      if (wrappedComment.isNotEmpty) wrappedComment,
      if (wrappedComment.isNotEmpty && category.isNotEmpty) '///',
      if (category.isNotEmpty) '/// {@category $category}',
    ].join('\n');
  }

  String get constructor => '';

  String get classHeader;

  String get projection;

  @override
  String toString() {
    try {
      return projection;
    } catch (_) {
      print("$runtimeType failed to project '${typeDef.shortName}'.");
      rethrow;
    }
  }
}
