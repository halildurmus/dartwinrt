// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../utils.dart';

/// Represents a Dart projection of a WinRT enumeration typedef.
class EnumProjection {
  EnumProjection(this.typeDef, {this.comment = '', String? enumName})
      : enumName = enumName ?? typeDef.shortName;

  final TypeDef typeDef;
  final String comment;
  final String enumName;

  /// Returns the appropriate enum projection for the [typeDef] depending on
  /// whether it has the `System.FlagsAttribute` attribute.
  factory EnumProjection.create(TypeDef typeDef, {String comment = ''}) {
    final isFlagsEnum = typeDef.existsAttribute('System.FlagsAttribute');
    return isFlagsEnum
        ? FlagsEnumProjection(typeDef, comment: comment)
        : EnumProjection(typeDef, comment: comment);
  }

  /// Attempts to create a [EnumProjection] from [fullyQualifiedType] by
  /// searching its [TypeDef].
  ///
  /// ```dart
  /// final projection = EnumProjection.from('Windows.Globalization.DayOfWeek');
  /// ```
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedType] is
  /// found.
  factory EnumProjection.from(String fullyQualifiedType,
      {String comment = ''}) {
    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedType);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedType");
    return EnumProjection.create(typeDef, comment: comment);
  }

  String get category => 'enum';

  String get classPreamble {
    final enumCategoryComment = '/// {@category $category}';
    final classComment = wrapCommentText(comment);
    final docComment = classComment.isEmpty
        ? enumCategoryComment
        : '$classComment\n///\n$enumCategoryComment';

    return docComment;
  }

  String get classDeclaration => 'enum $enumName implements WinRTEnum {';

  // The first field is always the special field value__
  List<Field> get fields => typeDef.fields.skip(1).toList()
    ..sort((a, b) => a.value.compareTo(b.value));

  String safeIdentifier(String name) =>
      safeIdentifierForString(name.toCamelCase());

  List<String> get identifiers => fields
      .map((field) => '${safeIdentifier(field.name)}(${field.value})')
      .toList();

  String get valueField => '''
    @override
    final int value;
''';

  String get constructor => 'const $enumName(this.value);';

  String get factoryConstructor => '''
    factory $enumName.from(int value) =>
      $enumName.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
''';

  @override
  String toString() => '''
    $classPreamble
    $classDeclaration
      ${identifiers.join(',\n')};

      $valueField

      $constructor

      $factoryConstructor
    }
''';
}

/// Represents a Dart projection of a WinRT Flags enumeration typedef.
class FlagsEnumProjection extends EnumProjection {
  FlagsEnumProjection(super.typeDef, {super.comment, super.enumName});

  /// Attempts to create a [FlagsEnumProjection] from [fullyQualifiedType] by
  /// searching its [TypeDef].
  ///
  /// ```dart
  /// final projection =
  ///     FlagsEnumProjection.from('Windows.Storage.FileAttributes');
  /// ```
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedType] is
  /// found.
  factory FlagsEnumProjection.from(String fullyQualifiedType,
      {String comment = ''}) {
    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedType);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedType");
    return FlagsEnumProjection(typeDef, comment: comment);
  }

  @override
  String get classDeclaration => 'class $enumName extends WinRTEnum {';

  @override
  String get constructor => 'const $enumName(super.value, {super.name});';

  @override
  String get factoryConstructor => '''
    factory $enumName.from(int value) =>
        $enumName.values.firstWhere((e) => e.value == value,
            orElse: () => $enumName(value));
''';

  @override
  List<String> get identifiers {
    return fields.map((field) {
      final identifier = safeIdentifier(field.name);
      return "static const $identifier = $enumName(${field.value}, name: '$identifier');";
    }).toList();
  }

  String get values {
    final fieldNames =
        fields.map((field) => safeIdentifier(field.name)).join(',');
    return 'static const List<$enumName> values = [$fieldNames];';
  }

  String get andOperator => '''
    $enumName operator &($enumName other) =>
        $enumName(value & other.value);
''';

  String get orOperator => '''
    $enumName operator |($enumName other) =>
        $enumName(value | other.value);
''';

  String get hasFlag => '''
    /// Determines whether one or more bit fields are set in the current enum
    /// value.
    ///
    /// ```dart
    /// final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
    /// fileAttributes.hasFlag(FileAttributes.readOnly)); // `true`
    /// fileAttributes.hasFlag(FileAttributes.temporary)); // `false`
    /// fileAttributes.hasFlag(
    ///     FileAttributes.readOnly | FileAttributes.archive)); // `true`
    /// ```
    bool hasFlag($enumName flag) {
      if (value != 0 && flag.value == 0) return false;
      return value & flag.value == flag.value;
    }
''';

  @override
  String toString() => '''
$classPreamble
$classDeclaration
  $constructor

  $factoryConstructor

  ${identifiers.join()}

  $values

  $andOperator

  $orOperator

  $hasFlag
}
''';
}