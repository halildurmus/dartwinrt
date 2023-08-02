// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../utilities/utilities.dart';
import '../parameter.dart';
import '../type.dart';

final class VectorParameterProjection extends ParameterProjection {
  VectorParameterProjection(super.parameter);

  TypeIdentifier get typeIdentifier => typeProjection.isReferenceType
      ? dereferenceType(typeProjection.typeIdentifier)
      : typeProjection.typeIdentifier;

  /// The type argument of `IVector` and `IVectorView`, as represented in the
  /// [typeProjection]'s [TypeIdentifier] (e.g., `String`, `StorageFile?`).
  String get vectorTypeArg => typeArguments(shortTypeName);

  /// The constructor arguments passed to the constructors of `IVector` and
  /// `IVectorView`.
  String get vectorConstructorArgs {
    final typeArgProjection = TypeProjection(typeIdentifier.typeArgs.first);

    // If the type argument is an enum or a WinRT object (e.g., StorageFile),
    // the constructor of that class must be passed in the 'enumCreator'
    // parameter for enums, 'creator' parameter for WinRT objects so that the
    // IVector and IVectorView implementations can instantiate the object
    final creator = typeArgProjection.typeIdentifier.creator;

    // The IID for IIterable<T> must be passed in the 'iterableIid' parameter so
    // that the IVector and IVectorView implementations can use the correct IID
    // when instantiating the IIterable object
    final iterableIid =
        iterableIidFromVectorType(typeProjection.typeIdentifier);

    // e.g. float, int32
    final nativeType = typeArgProjection.nativeType.toLowerCase();

    // If the type argument is a double, 'doubleType' parameter must be
    // specified so that the IVector and IVectorView implementations can use
    // the appropriate native double type
    final doubleType =
        vectorTypeArg == 'double' ? 'DoubleType.$nativeType' : null;

    // If the type argument is an int, 'intType' parameter must be specified so
    // that the IVector and IVectorView implementations can use the appropriate
    // native integer type
    final intType = vectorTypeArg == 'int' ? 'IntType.$nativeType' : null;

    final args = <String>['iterableIid: ${quote(iterableIid)}'];
    if (typeArgProjection.isWinRTEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
    }
    if (doubleType != null) args.add('doubleType: $doubleType');
    if (intType != null) args.add('intType: $intType');
    return ', ${args.join(', ')}';
  }

  @override
  bool get isNullable =>
      // Methods that return collection interfaces cannot return null.
      !(isReturnParam && !method.isGetProperty);

  @override
  String get type => isNullable ? nullable(shortTypeName) : shortTypeName;

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

    return isNullable ? nullable(shortTypeName) : shortTypeName;
  }

  @override
  String get creator =>
      'IVectorView<$vectorTypeArg>.fromPtr($identifier$vectorConstructorArgs).toList()';
}
