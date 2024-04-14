// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../extensions/extensions.dart';
import '../parameter.dart';
import '../type.dart';

final class VectorParameterProjection extends ParameterProjection {
  VectorParameterProjection(super.parameter);

  TypeIdentifier get typeIdentifier => typeProjection.isReferenceType
      ? typeProjection.typeIdentifier.dereference()
      : typeProjection.typeIdentifier;

  /// The type argument of `IVector` and `IVectorView`, as represented in the
  /// [typeProjection]'s [TypeIdentifier] (e.g., `String`, `StorageFile?`).
  String get vectorTypeArg => shortTypeName.typeArguments;

  /// The constructor arguments passed to the constructors of `IVector` and
  /// `IVectorView`.
  String get vectorConstructorArgs {
    final [typeArg] = typeIdentifier.typeArgs;
    final typeArgProjection = TypeProjection(typeArg);
    final typeArgNativeType = typeArgProjection.nativeType.toLowerCase();

    // The IID for IIterable<T> must be passed in the 'iterableIid' parameter so
    // that the IVector and IVectorView implementations can use the correct IID
    // when instantiating the IIterable object
    final iterableIid = typeProjection.typeIdentifier.iterableIID;

    final args = <String>{
      'iterableIid: ${iterableIid.quote()}',
      if (typeArgProjection.isWinRTEnum)
        'tEnumCreator: ${typeArg.creator}'
      else if (typeArg.creator case final creator?)
        'tObjectCreator: $creator',
      if (typeArgProjection.isDouble)
        'tDoubleType: DoubleType.$typeArgNativeType'
      else if (typeArgProjection.isInteger)
        'tIntType: IntType.$typeArgNativeType',
    };

    return ', ${args.join(', ')}';
  }

  @override
  bool get isNullable =>
      // Methods that return collection interfaces cannot return null.
      !(isReturnParam && !method.isGetProperty);

  @override
  String get type => isNullable ? shortTypeName.nullable() : shortTypeName;

  @override
  String get creator => 'IVector.fromPtr($identifier$vectorConstructorArgs)';

  String get into => '$identifier.lpVtbl';

  // No deallocation is needed as Finalizer will handle it.
  @override
  bool get needsDeallocation => false;

  @override
  String get nullCheck {
    if (!isNullable) return '';
    return '''
    if ($identifier.isNull) {
      free($identifier);
      return null;
    }
''';
  }
}

final class VectorViewParameterProjection extends VectorParameterProjection {
  VectorViewParameterProjection(super.parameter);

  @override
  String get type {
    if (isReturnParam) {
      if (method.isGetProperty) return 'List<$vectorTypeArg>?';
      return 'List<$vectorTypeArg>';
    }

    return isNullable ? shortTypeName.nullable() : shortTypeName;
  }

  @override
  String get creator =>
      'IVectorView<$vectorTypeArg>.fromPtr($identifier$vectorConstructorArgs).toList()';
}
