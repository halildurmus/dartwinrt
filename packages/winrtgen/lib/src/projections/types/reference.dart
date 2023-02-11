// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../constants/constants.dart';
import '../../extensions/extensions.dart';
import '../../utils.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import '../type.dart';

mixin _ReferenceProjection on MethodProjection {
  /// The type argument of `IReference`, as represented in the [returnType]'s
  /// [TypeIdentifier] (e.g. `DateTime?`, `int?`, `WebErrorStatus?`).
  String get referenceTypeArg => typeArguments(returnType.typeIdentifier.name);

  /// The type argument of `IReference`, as represented in the [TypeIdentifier]
  /// of the method's first parameter.
  String get referenceTypeArgFromParameter =>
      typeArguments(parameters.first.type.typeIdentifier.name);

  /// Method call to `boxValue` function.
  ///
  /// `IReference<T>` parameters (exposed as nullable Dart primitives) must be
  /// passed to WinRT APIs as `IReference` interfaces by calling the `boxValue`
  /// function with the `convertToIReference` flag set to `true`.
  String get boxValueMethodCall {
    final typeProjection =
        TypeProjection(parameters.first.type.typeIdentifier.typeArg!);
    final args = <String>['convertToIReference: true'];

    // If the nullable parameter is an enum, a double or an int, its native
    // type (e.g. Double, Float, Int32, Uint32) must be passed in the `nativeType`
    // parameter so that the 'boxValue' function can use the appropriate native
    // type for the parameter
    if (typeProjection.isWinRTEnum ||
        ['double', 'int'].contains(typeProjection.exposedType)) {
      args.add('nativeType: ${typeProjection.nativeType}');
    }

    return typeProjection.isWinRTEnum
        ? 'boxValue(value?.value, ${args.join(', ')})'
        : 'boxValue(value, ${args.join(', ')})';
  }

  /// The constructor arguments passed to the constructor of `IReference`.
  String get referenceConstructorArgs {
    final typeProjection = TypeProjection(returnType.typeIdentifier.typeArg!);

    // If the type argument is an enum, the constructor of the enum class must
    // be passed in the 'enumCreator' parameter so that the 'IReference'
    // implementation can instantiate the object
    final enumCreator = typeProjection.isWinRTEnum
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.from'
        : null;

    // The IID for IReference<T> must be passed in the 'referenceIid' parameter
    // so that the 'IReference' implementation can use the correct IID when
    // retrieving the value it holds.
    // To learn know more about how the IID is calculated, please see
    // https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
    final referenceArgSignature = returnType.typeIdentifier.typeArg!.signature;
    final referenceSignature =
        'pinterface($IID_IReference;$referenceArgSignature)';
    final referenceIid = iidFromSignature(referenceSignature);

    final args = <String>["referenceIid: '$referenceIid'"];
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
}

/// Method projection for methods that return an `IReference<T?>` (exposed as
/// `T?`).
class ReferenceMethodProjection extends MethodProjection
    with _ReferenceProjection {
  ReferenceMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $referenceTypeArg $camelCasedName($methodParams) {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    final reference = IReference<$referenceTypeArg>.fromRawPointer
        (retValuePtr$referenceConstructorArgs);
    final value = reference.value;
    reference.release();

    $parametersPostamble

    return value;
  }
''';
}

/// Getter projection for `IReference<T?>` (exposed as `T?`) getters.
class ReferenceGetterProjection extends GetterProjection
    with _ReferenceProjection {
  ReferenceGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $referenceTypeArg get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    final reference = IReference<$referenceTypeArg>.fromRawPointer
        (retValuePtr$referenceConstructorArgs);
    final value = reference.value;
    reference.release();

    return value;
  }
''';
}

/// Setter projection for `IReference<T?>` (exposed as `T?`) setters.
class ReferenceSetterProjection extends SetterProjection
    with _ReferenceProjection {
  ReferenceSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName($referenceTypeArgFromParameter value) {
    ${ffiCall(params: 'value == null ? nullptr : $boxValueMethodCall.ref.lpVtbl')}
  }
''';
}

/// Parameter projection for `IReference<T?>` (exposed as `T?`) parameters.
class ReferenceParameterProjection extends ParameterProjection {
  ReferenceParameterProjection(super.parameter);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier {
    // IReference<T> parameters must be passed to WinRT APIs as 'IReference'
    // interfaces by calling the 'boxValue' function with the
    // 'convertToIReference' flag set to true
    final typeProjection = TypeProjection(type.typeIdentifier.typeArg!);
    final args = <String>['convertToIReference: true'];

    // If the nullable parameter is an enum, a double or an int, its native
    // type (e.g. Double, Float, Int32, Uint32) must be passed in the
    // `nativeType` parameter so that the 'boxValue' function can use the
    // appropriate native type for the parameter
    if (typeProjection.isWinRTEnum ||
        ['double', 'int'].contains(typeProjection.exposedType)) {
      args.add('nativeType: ${typeProjection.nativeType}');
    }

    final valueArg = typeProjection.isWinRTEnum ? '$name.value' : name;
    return '''
        $name == null
            ? nullptr
            : boxValue($valueArg, ${args.join(', ')}).ref.lpVtbl''';
  }
}
