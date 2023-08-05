// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import '../models/models.dart';
import 'base.dart';
import 'parameter.dart';
import 'type.dart';
import 'types/ireference.dart';
import 'types/string.dart';
import 'types/struct.dart';

/// Represents a Dart projection of a struct [Field].
///
/// Fields are a tuple of a type and a name.
final class StructFieldProjection {
  StructFieldProjection(this.field)
      : typeProjection = TypeProjection(field.typeIdentifier, isInParam: true);

  final Field field;
  final TypeProjection typeProjection;

  String get attribute => typeProjection.attribute;

  String get dartType => typeProjection.dartType;

  String get fieldName => field.name.toCamelCase().toSafeIdentifier();

  bool get isDeprecated => field.isDeprecated;

  bool get isIReference =>
      typeProjection.isWinRTInterface &&
      field.typeIdentifier.name.endsWith('IReference`1');

  bool get isString => typeProjection.isString;

  bool get exposedAsStruct => typeProjection.exposedAsStruct;

  ParameterProjection get paramProjection {
    final parameter = Parameter.fromTypeIdentifier(
        field.scope, 0, field.typeIdentifier,
        attributes: CorParamAttr.pdIn)
      ..name = fieldName;
    return ParameterProjection.create(parameter);
  }

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
  String get dartType => paramProjection.type;

  @override
  String toString() => [
        if (isDeprecated) field.deprecatedAnnotation,
        'final $dartType $fieldName;'
      ].join('\n');
}

/// Represents a Dart projection of a WinRT struct [TypeDef].
final class NativeStructProjection extends BaseProjection {
  NativeStructProjection(super.typeDef, {super.comment, String? structName})
      : structName = structName ?? 'Native${typeDef.shortName}';

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
  factory NativeStructProjection.from(
    String fullyQualifiedType, {
    String? structName,
  }) {
    final typeDef = WinRTMetadataStore.findMetadata(fullyQualifiedType);
    return NativeStructProjection(typeDef, structName: structName);
  }

  @override
  String get header => '';

  @override
  Set<String> get imports => {};

  @override
  String get constructor => '';

  @override
  String get classHeader => [
        '/// @nodoc',
        if (isDeprecated) typeDef.deprecatedAnnotation,
        'final class $structName extends Struct'
      ].join('\n');

  List<StructFieldProjection> get fieldProjections =>
      typeDef.fields.map(StructFieldProjection.new).toList();

  @override
  String get projection => '''
$classHeader {
  ${fieldProjections.join('\n')}
}
''';
}

/// Represents a Dart projection of a WinRT struct [TypeDef] as a Dart class.
final class StructProjection extends NativeStructProjection {
  StructProjection(super.typeDef, {super.comment, String? structName})
      : super(structName: structName ?? typeDef.shortName);

  /// Attempts to create a [StructProjection] from [fullyQualifiedType] by
  /// searching its [TypeDef].
  ///
  /// ```dart
  /// final projection = StructProjection.from('Windows.Foundation.Rect');
  /// ```
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedType] is
  /// found.
  factory StructProjection.from(
    String fullyQualifiedType, {
    String comment = '',
    String? structName,
  }) {
    final typeDef = WinRTMetadataStore.findMetadata(fullyQualifiedType);
    return StructProjection(typeDef, comment: comment, structName: structName);
  }

  @override
  String get header => structFileHeader;

  Set<String> get importsForTypes => {
        for (final field in typeDef.fields)
          ...importsForTypeIdentifier(field.typeIdentifier)
      };

  @override
  Set<String> get imports => {
        ...commonImports,
        if (packageName == 'windows_foundation') ...[
          relativePathTo('windows_foundation/lib/internal.dart'),
          relativePathTo('windows_foundation/lib/src/winrt_struct.dart'),
        ] else ...[
          'package:windows_foundation/internal.dart',
          'package:windows_foundation/windows_foundation.dart'
        ],
        ...importsForTypes
      };

  @override
  String get classHeader => [
        if (isDeprecated) typeDef.deprecatedAnnotation,
        'final class $structName implements WinRTStruct'
      ].join('\n');

  @override
  String get constructor {
    final initializingParameters =
        fieldProjections.map((f) => 'this.${f.fieldName}').join(', ');
    return 'const $structName($initializingParameters);';
  }

  @override
  List<StructFieldProjection> get fieldProjections =>
      typeDef.fields.map(StructInstanceVariableProjection.new).toList();

  String get toNativeMethod => '''
  @override
  Pointer<Native$structName> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<Native$structName>();
    nativeStructPtr.ref
      ${fieldProjections.map((f) => switch (f.paramProjection) {
            StringParameterProjection _ =>
              '..${f.fieldName} = ${f.fieldName}.toHString()',
            StructParameterProjection _ =>
              '..${f.fieldName} = ${f.fieldName}.toNative(allocator: allocator).ref',
            _ => '..${f.fieldName} = ${f.paramProjection.into}'
          }).join('\n')};
    return nativeStructPtr;
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

  String get structListExtension {
    final toArrayComment =
        'Creates an array of [Native$structName]s from a List of [$structName]s.'
            .toDocComment(wrapLength: 78);
    return '''
/// @nodoc
extension ${structName}ListToNative${structName}ArrayConversion on List<$structName> {
  $toArrayComment
  Pointer<Native$structName> toArray({Allocator allocator = calloc}) {
    final array = allocator<Native$structName>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}
''';
  }

  String get nativeStructExtension {
    final toDartComment =
        'Converts this [Native$structName] into a Dart [$structName].'
            .toDocComment(wrapLength: 78);
    final structConstructorArgs = fieldProjections.map((f) {
      if (f.paramProjection.typeProjection.isDartPrimitive) {
        return f.isString ? f.paramProjection.creator : f.fieldName;
      }

      final creator = f.paramProjection.creator
          .replaceFirst('${f.fieldName}.value', f.fieldName);
      return f.paramProjection is IReferenceParameterProjection
          ? creator.replaceFirst(
              f.fieldName, 'calloc<COMObject>()..ref.lpVtbl = ${f.fieldName}')
          : creator;
    }).join(', ');

    return '''
/// @nodoc
extension Native${structName}Conversion on Native$structName {
  $toDartComment
  $structName toDart() => $structName($structConstructorArgs);
}
''';
  }

  String get pointerNativeStructExtension {
    final toDartComment =
        'Converts the referenced [Native$structName] into a Dart [$structName].'
            .toDocComment(wrapLength: 78);
    final toListComment =
        'Creates a `List<$structName>` from `Pointer<Native$structName>`. \n '
                '[length] must not be greater than the number of elements '
                'stored inside the `Pointer<Native$structName>`.'
            .toDocComment(wrapLength: 78);
    final structConstructorArgs = fieldProjections.map((f) {
      if (f.paramProjection.typeProjection.isDartPrimitive) {
        if (f.isString) return 'ref.${f.fieldName}.toDartString()';
        return 'ref.${f.fieldName}';
      }

      final creator = f.paramProjection.creator
          .replaceFirst('${f.fieldName}.value', f.fieldName)
          .replaceFirst(f.fieldName, 'ref.${f.fieldName}');
      return f.paramProjection is IReferenceParameterProjection
          ? creator.replaceFirst('ref.${f.fieldName}',
              'calloc<COMObject>()..ref.lpVtbl = ref.${f.fieldName}')
          : creator;
    }).join(', ');

    return [
      '''
/// @nodoc
extension PointerNative${structName}Conversion on Pointer<Native$structName> {
  $toDartComment
  $structName toDart() {
    final ref = this.ref;
    return $structName($structConstructorArgs);
  }

  $toListComment
  List<$structName> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
'''
    ].join();
  }

  @override
  String get projection => '''
$structFileHeader
$importHeader

$classPreamble
$classHeader {
  $constructor

  ${fieldProjections.join('\n')}

  $toNativeMethod

  $equalityOverrides
}

$structListExtension

$nativeStructExtension

$pointerNativeStructExtension
''';
}
