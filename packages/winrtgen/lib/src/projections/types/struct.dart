// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../utilities/utilities.dart';
import '../parameter.dart';
import '../struct.dart';
import 'array.dart';

/// Parameter projection for WinRT struct parameters.
final class StructParameterProjection extends ParameterProjection {
  StructParameterProjection(super.parameter);

  String get allocatorArgument => needsAllocator ? 'allocator: allocator' : '';

  List<Field> get fields => isGuid ? [] : typeIdentifier.type!.fields;

  List<StructFieldProjection> get fieldProjections =>
      isGuid ? [] : fields.map(StructFieldProjection.new).toList();

  bool get isGuid => type == 'Guid';

  bool get needsAllocator =>
      isInParam &&
      fieldProjections.any((fieldProjection) =>
          fieldProjection.isIReference || fieldProjection.exposedAsStruct);

  TypeIdentifier get typeIdentifier => parameter.isReferenceType
      ? dereferenceType(parameter.typeIdentifier)
      : parameter.typeIdentifier;

  @override
  String get type => shortTypeName;

  @override
  String get creator =>
      isGuid ? '$identifier.toDartGuid()' : '$identifier.toDart()';

  @override
  String get into => '${identifier}NativeStructPtr.ref';

  @override
  List<String> get preambles {
    if (isInParam) {
      final expression = isGuid
          ? '$identifier.toNativeGUID($allocatorArgument);'
          : '$identifier.toNative($allocatorArgument);';
      return ['final ${identifier}NativeStructPtr = $expression'];
    }

    return super.preambles;
  }

  @override
  List<String> get postambles => needsAllocator
      ? []
      : [
          isInParam
              ? 'free(${identifier}NativeStructPtr);'
              : 'free($identifier);'
        ];

  @override
  bool get needsAllocation => true;
}

/// Parameter projection for Pass Array style WinRTStruct parameters.
final class StructPassArrayParameterProjection
    extends PassArrayParameterProjection {
  StructPassArrayParameterProjection(super.parameter);

  @override
  List<String> get preambles => [
        'final allocator = Arena();',
        'final $localIdentifier = $identifier.toArray(allocator: allocator);',
      ];

  @override
  List<String> get postambles => ['allocator.releaseAll();'];
}
