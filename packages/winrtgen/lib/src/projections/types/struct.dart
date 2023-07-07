// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../parameter.dart';
import 'default.dart';

/// Parameter projection for WinRT struct parameters.
final class StructParameterProjection extends ParameterProjection {
  StructParameterProjection(super.parameter);

  @override
  String get type => shortTypeName;

  @override
  String get creator =>
      type == 'Guid' ? '$identifier.toDartGuid()' : '$identifier.toDart()';

  @override
  String get into => '${identifier}NativeStructPtr.ref';

  @override
  String get toListInto => type == 'Guid'
      ? '$identifier[i].toNativeGUID()'
      : '$identifier[i].toNative()';

  @override
  List<String> get preambles {
    if (isInParam) {
      final expression = type == 'Guid'
          ? '$identifier.toNativeGUID();'
          : '$identifier.toNative();';
      return ['final ${identifier}NativeStructPtr = $expression'];
    }

    return super.preambles;
  }

  @override
  List<String> get postambles => [
        isInParam ? 'free(${identifier}NativeStructPtr);' : 'free($identifier);'
      ];

  @override
  bool get needsAllocation => true;
}

/// Parameter projection for `List<T extends WinRTStruct>` parameters.
final class StructListParameterProjection
    extends DefaultListParameterProjection {
  StructListParameterProjection(super.parameter);

  @override
  List<String> get passArrayPreambles => [
        'final nativeStructPtrs = <Pointer<$nativeType>>[];',
        'final $localIdentifier = calloc<$nativeType>($identifier.length);',
        '''
    for (var i = 0; i < $identifier.length; i++) {
      final nativeStructPtr = ${typeArgParamProjection.toListInto};
      $localIdentifier[i] = nativeStructPtr.ref;
      nativeStructPtrs.add(nativeStructPtr);
    }'''
      ];

  @override
  List<String> get passArrayPostambles =>
      ['nativeStructPtrs.forEach(free);', 'free($localIdentifier);'];
}
