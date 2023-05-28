// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../constants/constants.dart';
import '../../utilities/utilities.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import '../type.dart';

mixin _ReferenceMixin on MethodProjection {
  @override
  String get returnType =>
      typeArguments(returnTypeProjection.typeIdentifier.shortName);

  /// The constructor arguments passed to the constructor of `IReference`.
  String get referenceConstructorArgs {
    final typeProjection =
        TypeProjection(returnTypeProjection.typeIdentifier.typeArgs.first);

    // If the type argument is an enum, the constructor of the enum class must
    // be passed in the 'enumCreator' parameter so that the 'IReference'
    // implementation can instantiate the object
    final enumCreator = typeProjection.isWinRTEnum
        ? '${typeProjection.typeIdentifier.shortName}.from'
        : null;

    // The IID for IReference<T> must be passed in the 'referenceIid' parameter
    // so that the 'IReference' implementation can use the correct IID when
    // retrieving the value it holds.
    // To learn know more about how the IID is calculated, please see
    // https://learn.microsoft.com/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
    final referenceArgSignature =
        returnTypeProjection.typeIdentifier.typeArgs.first.signature;
    final referenceSignature =
        'pinterface($IID_IReference;$referenceArgSignature)';
    final referenceIid = iidFromSignature(referenceSignature);

    final args = <String>["referenceIid: ${quote(referenceIid)}"];
    if (enumCreator != null) {
      args.add('enumCreator: $enumCreator');
    }

    return ', ${args.join(', ')}';
  }

  String get nullCheck => '''
    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }
''';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    final reference = IReference<$returnType>.fromPtr
        (retValuePtr$referenceConstructorArgs);
    return reference.value;
  }
''';
}

/// Method projection for methods that return `IReference<T?>` (exposed as
/// `T?`).
final class ReferenceMethodProjection extends MethodProjection
    with _ReferenceMixin {
  ReferenceMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `IReference<T?>` (exposed as `T?`) getters.
final class ReferenceGetterProjection extends GetterProjection
    with _ReferenceMixin {
  ReferenceGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for `IReference<T?>` (exposed as `T?`) setters.
final class ReferenceSetterProjection extends SetterProjection
    with _ReferenceMixin {
  ReferenceSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration {
    final projection =
        TypeProjection(param.typeProjection.typeIdentifier.typeArgs.first);
    final arg = _toReferenceArgument(projection, param.type);
    final identifier = 'value?.toReference($arg).ptr.ref.lpVtbl ?? nullptr';
    return '''
  $methodHeader {
    ${ffiCall(identifier: identifier)}
  }
''';
  }
}

/// Parameter projection for `IReference<T?>` (exposed as `T?`) parameters.
final class ReferenceParameterProjection extends ParameterProjection {
  ReferenceParameterProjection(super.parameter);

  @override
  String get type => typeArguments(typeProjection.typeIdentifier.shortName);

  @override
  String get localIdentifier {
    final projection =
        TypeProjection(typeProjection.typeIdentifier.typeArgs.first);
    final arg = _toReferenceArgument(projection, type);
    return 'value?.toReference($arg).ptr.ref.lpVtbl ?? nullptr';
  }
}

String _toReferenceArgument(TypeProjection projection, String type) {
  if (type == 'double?') {
    return 'DoubleType.${projection.nativeType.toLowerCase()}';
  } else if (type == 'int?') {
    return 'IntType.${projection.nativeType.toLowerCase()}';
  }

  return '';
}
