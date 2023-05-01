// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../utilities/utilities.dart';
import 'type.dart';

/// Represents a Dart projection of a struct [Field].
///
/// Fields are a tuple of a type and a name.
final class StructFieldProjection {
  StructFieldProjection(this.field)
      : fieldName = safeIdentifierForString(field.name.toCamelCase()),
        isDeprecated = field.isDeprecated,
        typeProjection = TypeProjection(field.typeIdentifier);

  final Field field;
  final String fieldName;
  final TypeProjection typeProjection;
  final bool isDeprecated;

  String get attribute => typeProjection.attribute;

  String get dartType => typeProjection.dartType;

  @override
  String toString() => [
        if (isDeprecated) field.deprecatedAnnotation,
        attribute,
        'external $dartType $fieldName;\n'
      ].join('\n');
}

final class StructInstanceVariableProjection extends StructFieldProjection {
  StructInstanceVariableProjection(super.field);

  @override
  String toString() => [
        if (isDeprecated) field.deprecatedAnnotation,
        'final $dartType $fieldName;'
      ].join('\n');
}

/// Represents a Dart projection of a WinRT struct [TypeDef].
final class NativeStructProjection {
  NativeStructProjection(this.typeDef, {String? structName})
      : isDeprecated = typeDef.isDeprecated,
        structName = structName ?? 'Native${typeDef.shortName}';

  final TypeDef typeDef;
  final bool isDeprecated;
  final String structName;

  /// Attempts to create a [NativeStructProjection] from [fullyQualifiedType]
  /// by searching its [TypeDef].
  ///
  /// ```dart
  /// final projection = NativeStructProjection.from('Windows.Foundation.Rect');
  /// ```
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedType] is
  /// found.
  factory NativeStructProjection.from(String fullyQualifiedType,
      {String? structName}) {
    final typeDef = getMetadataForType(fullyQualifiedType);
    return NativeStructProjection(typeDef, structName: structName);
  }

  String get classHeader => [
        if (isDeprecated) typeDef.deprecatedAnnotation,
        'final class $structName extends Struct'
      ].join('\n');

  List<StructFieldProjection> get fieldProjections =>
      typeDef.fields.map(StructFieldProjection.new).toList();

  @override
  String toString() => '''
$classHeader {
  ${fieldProjections.join('\n')}
}
''';
}

/// Represents a Dart projection of a WinRT struct [TypeDef] as a Dart class.
final class StructProjection extends NativeStructProjection {
  StructProjection(super.typeDef, {this.comment = '', String? structName})
      : super(structName: structName ?? typeDef.shortName);

  final String comment;

  /// Attempts to create a [StructProjection] from [fullyQualifiedType] by
  /// searching its [TypeDef].
  ///
  /// ```dart
  /// final projection = StructProjection.from('Windows.Foundation.Rect');
  /// ```
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedType] is
  /// found.
  factory StructProjection.from(String fullyQualifiedType,
      {String comment = '', String? structName}) {
    final typeDef = getMetadataForType(fullyQualifiedType);
    return StructProjection(typeDef, comment: comment, structName: structName);
  }

  String get header => structFileHeader;

  /// Returns the package name for the [typeDef] (e.g. `windows_foundation`
  /// for `Windows.Foundation.Point`).
  String get packageName => typeDef.packageName;

  /// Returns the path to the folder where the current class is located (e.g.
  /// `windows_foundation/lib/src` for `Windows.Foundation.Point`).
  String get currentFolderPath => folderFromType(typeDef.name);

  /// Converts [path] to an equivalent relative path from the
  /// [currentFolderPath].
  String relativePathTo(String path) =>
      relativePath(path, start: currentFolderPath);

  Set<String> get imports => {
        'dart:ffi',
        'package:ffi/ffi.dart',
        if (packageName == 'windows_foundation') ...[
          relativePathTo('windows_foundation/lib/internal.dart'),
          relativePathTo('windows_foundation/lib/src/winrt_struct.dart'),
        ] else ...[
          'package:windows_foundation/internal.dart',
          'package:windows_foundation/windows_foundation.dart'
        ]
      };

  String get importHeader =>
      sortImports(imports.map((import) => "import ${quote(import)};").toList())
          .join('\n');

  String get category => 'struct';

  String get classPreamble {
    final structCategoryComment = '/// {@category $category}';
    final classComment = wrapCommentText(comment);
    final docComment = classComment.isEmpty
        ? structCategoryComment
        : '$classComment\n///\n$structCategoryComment';

    return docComment;
  }

  @override
  String get classHeader => [
        if (isDeprecated) typeDef.deprecatedAnnotation,
        'final class $structName implements WinRTStruct'
      ].join('\n');

  String get constructor {
    final initializingParameters =
        fieldProjections.map((f) => 'this.${f.fieldName}').join(', ');
    return '$structName($initializingParameters);';
  }

  @override
  List<StructFieldProjection> get fieldProjections =>
      typeDef.fields.map(StructInstanceVariableProjection.new).toList();

  String get toNativeFunction => '''
  @override
  Pointer<Native$structName> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<Native$structName>();
    ${fieldProjections.map((f) => 'ptr.ref.${f.fieldName} = ${f.fieldName};').join('\n')}
    return ptr;
  }
''';

  String get equalityOverrides => '''
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is $structName &&
        ${fieldProjections.map((f) => '${f.fieldName} == other.${f.fieldName}').join(' && ')};
  }

  @override
  int get hashCode => ${fieldProjections.map((f) => '${f.fieldName}.hashCode').join(' ^ ')};
''';

  String get nativeStructToDartExtension => '''
extension PointerNative${structName}Conversion on Pointer<Native$structName> {
  /// Converts this [Native$structName] to a Dart [$structName].
  $structName toDart() => $structName(${fieldProjections.map((f) => 'ref.${f.fieldName}').join(', ')});
}
''';

  @override
  String toString() => '''
$structFileHeader
$importHeader

$classPreamble
$classHeader {
  $constructor

  ${fieldProjections.join('\n')}

  $toNativeFunction

  $equalityOverrides
}

$nativeStructToDartExtension
''';
}
