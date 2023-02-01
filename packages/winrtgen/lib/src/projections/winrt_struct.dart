// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions.dart';
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

  @override
  String toString() {
    final typeProjection = TypeProjection(field.typeIdentifier);
    final dartType = typeProjection.dartType;

    return '''
  ${typeProjection.attribute}
  external $dartType $fieldName;
''';
  }
}

/// Represents a Dart projection of a WinRT Struct typedef.
class WinRTStructProjection {
  WinRTStructProjection(this.typeDef, this.structName, {this.comment = ''});

  final TypeDef typeDef;
  final String structName;
  final String comment;

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
