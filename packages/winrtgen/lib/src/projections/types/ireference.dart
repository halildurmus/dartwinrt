// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../constants/constants.dart';
import '../../utilities/utilities.dart';
import '../parameter.dart';
import '../type.dart';

/// Parameter projection for `IReference<T?>` (exposed as `T?`) parameters.
final class IReferenceParameterProjection extends ParameterProjection {
  IReferenceParameterProjection(super.parameter);

  @override
  String get type => typeArguments(shortTypeName);

  TypeProjection get typeArgProjection =>
      TypeProjection(typeProjection.typeIdentifier.typeArgs.first);

  String get toReferenceArgument => switch (type) {
        'double?' => 'DoubleType.${typeArgProjection.nativeType.toLowerCase()}',
        'int?' => 'IntType.${typeArgProjection.nativeType.toLowerCase()}',
        _ => '',
      };

  /// The constructor arguments passed to the constructor of `IReference`.
  String get referenceConstructorArgs {
    // If the type argument is an enum, the constructor of the enum class must
    // be passed in the 'enumCreator' parameter so that the 'IReference'
    // implementation can instantiate the object
    final enumCreator = typeArgProjection.isWinRTEnum
        ? '${stripQuestionMarkSuffix(type)}.from'
        : null;

    // The IID for IReference<T> must be passed in the 'referenceIid' parameter
    // so that the 'IReference' implementation can use the correct IID when
    // retrieving the value it holds.
    // To learn know more about how the IID is calculated, please see
    // https://learn.microsoft.com/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
    final referenceArgSignature =
        typeProjection.typeIdentifier.typeArgs.first.signature;
    final referenceSignature =
        'pinterface($IID_IReference;$referenceArgSignature)';
    final referenceIid = iidFromSignature(referenceSignature);

    final args = <String>['referenceIid: ${quote(referenceIid)}'];
    if (enumCreator != null) args.add('enumCreator: $enumCreator');
    return ', ${args.join(', ')}';
  }

  @override
  String get creator =>
      'IReference<$type>.fromPtr($identifier$referenceConstructorArgs).value';

  @override
  String get into =>
      '$identifier?.toReference($toReferenceArgument).ptr.ref.lpVtbl ?? nullptr';

  // No deallocation is needed as Finalizer will handle it.
  @override
  bool get needsDeallocation => false;

  @override
  String get nullCheck => '''
    if ($identifier.isNull) {
      free($identifier);
      return null;
    }
''';
}
