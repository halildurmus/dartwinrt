// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../extensions/extensions.dart';
import '../projections.dart';

/// Parameter projection for `IAsyncAction` parameters.
final class AsyncActionParameterProjection extends ParameterProjection {
  AsyncActionParameterProjection(super.parameter);

  @override
  String get type => 'Future<void>';

  @override
  String get creator => 'IAsyncAction.fromPtr($identifier).toFuture()';

  @override
  String get into => '$identifier.lpVtbl';

  // No deallocation is needed as Finalizer will handle it.
  @override
  bool get needsDeallocation => false;
}

/// Parameter projection for `IAsyncActionWithProgress` parameters.
final class AsyncActionWithProgressParameterProjection
    extends AsyncActionParameterProjection {
  AsyncActionWithProgressParameterProjection(super.parameter);

  @override
  String get type => 'Pointer<COMObject>';

  @override
  String get creator => identifier;
}

/// Parameter projection for `IAsyncOperation` parameters.
final class AsyncOperationParameterProjection
    extends AsyncActionParameterProjection {
  AsyncOperationParameterProjection(super.parameter);

  /// Whether the method returns a type like `DataReaderLoadOperation`.
  bool get isSubtypeOfAsyncOperation =>
      typeProjection.typeIdentifier.type?.interfaces.any((interface) =>
          interface.typeSpec?.name.endsWith('IAsyncOperation`1') ?? false) ??
      false;

  TypeIdentifier get typeIdentifier {
    if (isSubtypeOfAsyncOperation) {
      final typeDef = typeProjection.typeIdentifier.name.typeDef;
      final interface = typeDef.interfaces.firstWhere((interface) =>
          interface.typeSpec?.name.endsWith('IAsyncOperation`1') ?? false);
      if (interface.typeSpec case final typeSpec?) return typeSpec;
      throw StateError("Type '$interface' has no TypeSpec.");
    }

    return typeProjection.typeIdentifier;
  }

  /// The type argument of `IAsyncOperation`, as represented in the
  /// [typeProjection]'s `TypeIdentifier` (e.g., `bool`, `String`,
  /// `StorageFile?`).
  String get typeArg => typeIdentifier.shortName.typeArguments;

  String get formattedTypeArg {
    if (typeArg.startsWith('IMapView')) {
      // e.g., Map<String, String> instead of IMapView<String, String>
      return typeArg.replaceFirst('IMapView', 'Map');
    } else if (typeArg.startsWith('IVectorView')) {
      // e.g., List<String> instead of IVectorView<String>
      return typeArg.replaceFirst('IVectorView', 'List');
    } else if (typeArg.startsWith('IReference')) {
      // e.g., Duration? instead of IReference<Duration?>
      return typeArg.typeArguments;
    }

    return typeArg;
  }

  /// The constructor arguments passed to the constructor of `IAsyncOperation`.
  String get constructorArgs {
    final [typeArg] = typeIdentifier.typeArgs;
    final typeArgProjection = TypeProjection(typeArg);
    final typeArgNativeType = typeArgProjection.nativeType.toLowerCase();

    final args = <String>{
      if (typeArgProjection.isWinRTEnum)
        'tResultEnumCreator: ${typeArg.creator}'
      else if (typeArg.creator case final creator?)
        'tResultObjectCreator: $creator',
      if (typeArgProjection.isDouble)
        'tResultDoubleType: DoubleType.$typeArgNativeType'
      else if (typeArgProjection.isInteger)
        'tResultIntType: IntType.$typeArgNativeType',
    };

    return args.isEmpty ? '' : ', ${args.join(', ')}';
  }

  /// The function to call when completing the completer after the asynchronous
  /// operation has successfully completed.
  String get onCompletedCallback {
    if (typeArg.startsWith('IMapView')) {
      return '() => asyncOperation.getResults().toMap()';
    } else if (typeArg.startsWith('IVectorView')) {
      return '() => asyncOperation.getResults().toList()';
    } else if (typeArg.startsWith('IReference')) {
      return '() => asyncOperation.getResults()?.value';
    }

    return 'asyncOperation.getResults';
  }

  @override
  String get type => 'Future<$formattedTypeArg>';

  @override
  String get creatorPreamble =>
      'final asyncOperation = IAsyncOperation<$typeArg>.fromPtr($identifier$constructorArgs);';

  @override
  String get creator => 'asyncOperation.toFuture($onCompletedCallback)';
}

/// Parameter projection for `IAsyncOperationWithProgress` parameters.
final class AsyncOperationWithProgressParameterProjection
    extends AsyncActionParameterProjection {
  AsyncOperationWithProgressParameterProjection(super.parameter);

  @override
  String get type => 'Pointer<COMObject>';

  @override
  String get creator => identifier;
}
