// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../utils.dart';
import 'type.dart';

/// A struct field.
///
/// Fields are a tuple of a type and a name.
class StructFieldProjection {
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

/// Represents a Dart projection of a WinRT struct typedef.
class StructProjection {
  StructProjection(this.typeDef, {this.comment = '', String? structName})
      : structName = structName ?? typeDef.shortName,
        fields = typeDef.fields.map(StructFieldProjection.new).toList(),
        isDeprecated = typeDef.isDeprecated;

  final TypeDef typeDef;
  final String comment;
  final String structName;
  final List<StructFieldProjection> fields;
  final bool isDeprecated;

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
      {String comment = ''}) {
    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedType);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedType");
    return StructProjection(typeDef, comment: comment);
  }

  String get category => 'struct';

  String get classPreamble {
    final structCategoryComment = '/// {@category $category}';
    final classComment = wrapCommentText(comment);
    final docComment = classComment.isEmpty
        ? structCategoryComment
        : '$classComment\n///\n$structCategoryComment';

    return docComment;
  }

  String get classHeader => [
        if (isDeprecated) typeDef.deprecatedAnnotation,
        'class $structName extends Struct'
      ].join('\n');

  @override
  String toString() => '''
$classPreamble
$classHeader {
  ${fields.join('\n')}
}
''';
}
