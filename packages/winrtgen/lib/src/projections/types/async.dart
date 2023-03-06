// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../../utils.dart';
import '../method.dart';
import '../type.dart';

/// Method projection for methods that return `IAsyncAction`.
class AsyncActionMethodProjection extends MethodProjection {
  AsyncActionMethodProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'Future<void>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();
    ${ffiCall(freeRetValOnFailure: true)}

    final asyncAction = IAsyncAction.fromPtr(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }
''';
}

mixin _AsyncOperationMixin on MethodProjection {
  /// The type argument of `IAsyncOperation`, as represented in the
  /// [returnTypeProjection]'s `TypeIdentifier` (e.g. `bool`, `String`,
  /// `StorageFile?`).
  String get asyncOperationTypeArg =>
      typeArguments(returnTypeProjection.typeIdentifier.shortName);

  String get completerTypeArg {
    final typeArg = asyncOperationTypeArg;
    if (typeArg.startsWith('IMapView')) {
      // e.g. Map<String, String> instead of IMapView<String, String>
      return typeArg.replaceFirst('IMapView', 'Map');
    } else if (typeArg.startsWith('IVectorView')) {
      // e.g. List<String> instead of IVectorView<String>
      return typeArg.replaceFirst('IVectorView', 'List');
    } else if (typeArg.startsWith('IReference')) {
      // e.g. Duration? instead of IReference<Duration?>
      return typeArguments(typeArg);
    }

    return typeArg;
  }

  /// The constructor arguments passed to the constructor of `IAsyncOperation`.
  String get asyncOperationConstructorArgs {
    final typeProjection =
        TypeProjection(returnTypeProjection.typeIdentifier.typeArg!);

    // If the type argument is an enum or a WinRT object (e.g. StorageFile), the
    // constructor of that class must be passed in the 'enumCreator' parameter
    // for enums, 'creator' parameter for WinRT objects so that the
    // IAsyncOperation implementation can instantiate the object.
    final creator = returnTypeProjection.typeIdentifier.typeArg!.creator;

    // If the type argument is an int, 'intType' parameter must be specified so
    // that the IAsyncOperation implementation can use the appropriate native
    // integer type
    final intType = asyncOperationTypeArg == 'int'
        ? 'IntType.${typeProjection.nativeType.toLowerCase()}'
        : null;

    final args = <String>[];
    if (typeProjection.isWinRTEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
    }
    if (intType != null) {
      args.add('intType: $intType');
    }

    return args.isEmpty ? '' : ', ${args.join(', ')}';
  }

  /// The function to call when completing the completer after the asynchronous
  /// operation has successfully completed.
  String get onCompletedCallback {
    if (asyncOperationTypeArg.startsWith('IMapView')) {
      return '() => asyncOperation.getResults().toMap()';
    } else if (asyncOperationTypeArg.startsWith('IVectorView')) {
      return '() => asyncOperation.getResults().toList()';
    } else if (asyncOperationTypeArg.startsWith('IReference')) {
      return '() => asyncOperation.getResults()?.value';
    }

    return 'asyncOperation.getResults';
  }

  @override
  String get returnType => 'Future<$completerTypeArg>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<$completerTypeArg>();
    ${ffiCall(freeRetValOnFailure: true)}

    final asyncOperation = IAsyncOperation<$asyncOperationTypeArg>
            .fromPtr(retValuePtr$asyncOperationConstructorArgs);
    completeAsyncOperation(asyncOperation, completer, $onCompletedCallback);

    return completer.future;
  }
''';
}

/// Method projection for methods that return `IAsyncOperation<TResult>`.
class AsyncOperationMethodProjection extends MethodProjection
    with _AsyncOperationMixin {
  AsyncOperationMethodProjection(super.method, super.vtableOffset);
}
