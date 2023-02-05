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
      : fieldName = safeIdentifierForString(field.name.toCamelCase());

  final Field field;
  final String fieldName;

  TypeProjection get typeProjection => TypeProjection(field.typeIdentifier);

  String get attribute => typeProjection.attribute;

  String get dartType => typeProjection.dartType;

  @override
  String toString() => '''
  ${typeProjection.attribute}
  external $dartType $fieldName;
''';
}

/// Represents a Dart projection of a WinRT struct typedef.
class StructProjection {
  StructProjection(this.typeDef, {this.comment = '', String? structName})
      : structName = structName ?? typeDef.shortName;

  final TypeDef typeDef;
  final String comment;
  final String structName;

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

  String get classDeclaration => 'class $structName extends Struct {';

  List<StructFieldProjection> get fields =>
      typeDef.fields.map(StructFieldProjection.new).toList();

  @override
  String toString() => '''
$classPreamble
$classDeclaration
  ${fields.join('\n')}
}
''';
}
