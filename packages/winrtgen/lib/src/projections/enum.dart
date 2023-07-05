// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../utilities/utilities.dart';

/// An enum identifier.
///
/// Enum identifiers are a tuple of a name and a value.
final class EnumIdentifierProjection {
  EnumIdentifierProjection(this.field)
      : identifierName = safeIdentifierForString(field.name.toCamelCase()),
        identifierValue = field.value,
        isDeprecated = field.isDeprecated;

  final Field field;
  final String identifierName;
  final int identifierValue;
  final bool isDeprecated;

  @override
  String toString() => [
        if (isDeprecated) field.deprecatedAnnotation,
        '$identifierName($identifierValue)'
      ].join('\n');
}

/// Represents a Dart projection of a WinRT enumeration typedef.
final class EnumProjection {
  EnumProjection(this.typeDef, {this.comment = '', String? enumName})
      : enumName = enumName ?? typeDef.shortName,
        // The first field is always the special field value__
        fields = typeDef.fields.skip(1).toList()
          ..sort((a, b) => a.value.compareTo(b.value)),
        isDeprecated = typeDef.isDeprecated;

  final TypeDef typeDef;
  final String comment;
  final String enumName;
  final List<Field> fields;
  final bool isDeprecated;

  /// Returns the appropriate enum projection for the [typeDef] depending on
  /// whether it has the `System.FlagsAttribute` attribute.
  factory EnumProjection.create(TypeDef typeDef, {String comment = ''}) {
    final isFlagsEnum = typeDef.existsAttribute(flagsAttribute);
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
    final typeDef = getMetadataForType(fullyQualifiedType);
    return EnumProjection.create(typeDef, comment: comment);
  }

  String get header => enumFileHeader;

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
        if (packageName == 'windows_foundation')
          relativePathTo('windows_foundation/lib/src/winrt_enum.dart')
        else
          'package:windows_foundation/windows_foundation.dart'
      };

  String get importHeader =>
      sortImports(imports.map((import) => "import ${quote(import)};").toList())
          .join('\n');

  String get category => '';

  String get classPreamble {
    final wrappedComment = wrapCommentText(comment);
    return [
      if (wrappedComment.isNotEmpty) wrappedComment,
      if (wrappedComment.isNotEmpty && category.isNotEmpty) '///',
      if (category.isNotEmpty) '/// {@category $category}',
    ].join('\n');
  }

  String get classHeader => [
        if (isDeprecated) typeDef.deprecatedAnnotation,
        'enum $enumName implements WinRTEnum'
      ].join('\n');

  List<EnumIdentifierProjection> get identifiers =>
      fields.map(EnumIdentifierProjection.new).toList();

  String get valueField => '''
  @override
  final int value;''';

  String get constructor => 'const $enumName(this.value);';

  String get factoryConstructor => '''
  factory $enumName.from(int value) =>
      $enumName.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));''';

  String get projection => '''
$header
$importHeader

$classPreamble
$classHeader {
  ${identifiers.join(',\n')};

  $valueField

  $constructor

  $factoryConstructor
}
''';

  @override
  String toString() {
    try {
      return projection;
    } catch (_) {
      print("Failed to project enum '${typeDef.fullyQualifiedName}'.");
      rethrow;
    }
  }
}

/// A static enum constant.
final class StaticEnumConstantProjection extends EnumIdentifierProjection {
  StaticEnumConstantProjection(super.field, this.enumName);

  final String enumName;

  @override
  String toString() => [
        if (isDeprecated) field.deprecatedAnnotation,
        'static const $identifierName = $enumName($identifierValue, '
            'name: ${quote(identifierName)});'
      ].join('\n');
}

/// Represents a Dart projection of a WinRT Flags enumeration typedef.
final class FlagsEnumProjection extends EnumProjection {
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
    final typeDef = getMetadataForType(fullyQualifiedType);
    return FlagsEnumProjection(typeDef, comment: comment);
  }

  @override
  String get classHeader => [
        if (isDeprecated) typeDef.deprecatedAnnotation,
        'final class $enumName extends WinRTFlagsEnum<$enumName>'
      ].join('\n');

  @override
  String get constructor => 'const $enumName(super.value, {super.name});';

  @override
  String get factoryConstructor => '''
  factory $enumName.from(int value) =>
      $enumName.values.firstWhere((e) => e.value == value,
          orElse: () => $enumName(value));''';

  List<StaticEnumConstantProjection> get staticEnumConstants => fields
      .map((field) => StaticEnumConstantProjection(field, enumName))
      .toList();

  String get valuesConstant {
    final fieldNames = fields
        .map((field) => safeIdentifierForString(field.name.toCamelCase()))
        .join(',');
    return 'static const List<$enumName> values = [$fieldNames];';
  }

  String get andOperator => '''
  @override
  $enumName operator &($enumName other) =>
      $enumName(value & other.value);''';

  String get orOperator => '''
  @override
  $enumName operator |($enumName other) =>
      $enumName(value | other.value);''';

  String get projection => '''
$header
$importHeader

$classPreamble
$classHeader {
  $constructor

  $factoryConstructor

  ${staticEnumConstants.join()}

  $valuesConstant

  $andOperator

  $orOperator
}
''';

  @override
  String toString() {
    try {
      return projection;
    } catch (_) {
      print("Failed to project flags enum '${typeDef.fullyQualifiedName}'.");
      rethrow;
    }
  }
}
