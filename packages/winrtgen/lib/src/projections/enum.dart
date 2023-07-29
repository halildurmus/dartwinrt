// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../utilities/utilities.dart';
import 'base.dart';

/// An enum identifier.
///
/// Enum identifiers are a tuple of a name and a value.
final class EnumIdentifierProjection {
  EnumIdentifierProjection(this.field);

  final Field field;

  String get identifierName =>
      safeIdentifierForString(field.name.toCamelCase());

  int get identifierValue => field.value;

  bool get isDeprecated => field.isDeprecated;

  @override
  String toString() => [
        if (isDeprecated) field.deprecatedAnnotation,
        '$identifierName($identifierValue)'
      ].join('\n');
}

/// Represents a Dart projection of a WinRT enumeration typedef.
final class EnumProjection extends BaseProjection {
  EnumProjection(super.typeDef, {super.comment})
      :
        // The first field is always the special field value__
        fields = typeDef.fields.skip(1).toList()
          ..sort((a, b) => a.value.compareTo(b.value));

  final List<Field> fields;

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

  @override
  String get header => enumFileHeader;

  @override
  Set<String> get imports => {
        if (packageName == 'windows_foundation')
          relativePathTo('windows_foundation/lib/src/winrt_enum.dart')
        else
          'package:windows_foundation/windows_foundation.dart'
      };

  @override
  String get classHeader => [
        if (isDeprecated) typeDef.deprecatedAnnotation,
        'enum $shortName implements WinRTEnum'
      ].join('\n');

  List<EnumIdentifierProjection> get identifiers =>
      fields.map(EnumIdentifierProjection.new).toList();

  @override
  String get constructor => 'const $shortName(this.value);';

  String get factoryConstructor =>
      'factory $shortName.from(int value) => $shortName.values.byValue(value);';

  @override
  String get projection => '''
$header
$importHeader

$classPreamble
$classHeader {
  ${identifiers.join(',\n  ')};

  @override
  final int value;

  $constructor

  $factoryConstructor
}
''';
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
  FlagsEnumProjection(super.typeDef, {super.comment});

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
        'final class $shortName extends WinRTFlagsEnum<$shortName>'
      ].join('\n');

  @override
  String get constructor => 'const $shortName(super.value, {super.name});';

  @override
  String get factoryConstructor => '''
factory $shortName.from(int value) =>
      $shortName.values.firstWhere((e) => e.value == value,
          orElse: () => $shortName(value));''';

  List<StaticEnumConstantProjection> get staticEnumConstants => fields
      .map((field) => StaticEnumConstantProjection(field, shortName))
      .toList();

  String get valuesConstant {
    final fieldNames = fields
        .map((field) => safeIdentifierForString(field.name.toCamelCase()))
        .join(', ');
    return 'static const List<$shortName> values = [$fieldNames];';
  }

  String get andOperator =>
      '$shortName operator &($shortName other) => $shortName(value & other.value);';

  String get orOperator =>
      '$shortName operator |($shortName other) => $shortName(value | other.value);';

  @override
  String get projection => '''
$header
$importHeader

$classPreamble
$classHeader {
  $constructor

  $factoryConstructor

  ${staticEnumConstants.join('\n  ')}

  $valuesConstant

  @override
  $andOperator

  @override
  $orOperator
}
''';
}
