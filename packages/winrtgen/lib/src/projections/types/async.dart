// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../exception/exception.dart';
import '../../extensions/extensions.dart';
import '../../models/models.dart';
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
    extends ParameterProjection {
  AsyncActionWithProgressParameterProjection(super.parameter);

  @override
  String get type => 'Pointer<COMObject>';

  @override
  String get creator => identifier;

  @override
  String get into => '$identifier.ref.lpVtbl';

  // No deallocation is needed as Finalizer will handle it.
  @override
  bool get needsDeallocation => false;
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
      final typeDef =
          WinRTMetadataStore.findMetadata(typeProjection.typeIdentifier.name);
      final interface = typeDef.interfaces.firstWhere((interface) =>
          interface.typeSpec?.name.endsWith('IAsyncOperation`1') ?? false);
      if (interface.typeSpec case final typeSpec?) return typeSpec;
      throw WinRTGenException("Type '$interface' has no TypeSpec.");
    }

    return typeProjection.typeIdentifier;
  }

  /// The type argument of `IAsyncOperation`, as represented in the
  /// [typeProjection]'s `TypeIdentifier` (e.g., `bool`, `String`,
  /// `StorageFile?`).
  String get typeArg => typeIdentifier.shortName.typeArguments;

  String get formattedTypeArg {
    if (typeArg.startsWith('IMapView')) {
      // e.g. Map<String, String> instead of IMapView<String, String>
      return typeArg.replaceFirst('IMapView', 'Map');
    } else if (typeArg.startsWith('IVectorView')) {
      // e.g. List<String> instead of IVectorView<String>
      return typeArg.replaceFirst('IVectorView', 'List');
    } else if (typeArg.startsWith('IReference')) {
      // e.g. Duration? instead of IReference<Duration?>
      return typeArg.typeArguments;
    }

    return typeArg;
  }

  /// The constructor arguments passed to the constructor of `IAsyncOperation`.
  String get constructorArgs {
    final typeArg = typeIdentifier.dereference();
    final typeProjection = TypeProjection(typeArg);

    // If the type argument is an enum or a WinRT object (e.g., StorageFile),
    // the constructor of that class must be passed in the 'enumCreator'
    // parameter for enums, 'creator' parameter for WinRT objects so that the
    // IAsyncOperation implementation can instantiate the object.
    final creator = typeArg.creator;

    // e.g. float, int32
    final nativeType = typeProjection.nativeType.toLowerCase();

    // If the type argument is a double, 'doubleType' parameter must be
    // specified so that the IAsyncOperation implementation can use the
    // appropriate native double type
    final doubleType =
        this.typeArg == 'double' ? 'DoubleType.$nativeType' : null;

    // If the type argument is an int, 'intType' parameter must be specified so
    // that the IAsyncOperation implementation can use the appropriate native
    // integer type
    final intType = this.typeArg == 'int' ? 'IntType.$nativeType' : null;

    final args = <String>[];
    if (typeProjection.isWinRTEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
    }
    if (doubleType != null) args.add('doubleType: $doubleType');
    if (intType != null) args.add('intType: $intType');
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

  @override
  String get into => '$identifier.lpVtbl';
}

/// Parameter projection for `IAsyncOperationWithProgress` parameters.
final class AsyncOperationWithProgressParameterProjection
    extends ParameterProjection {
  AsyncOperationWithProgressParameterProjection(super.parameter);

  @override
  String get type => 'Pointer<COMObject>';

  @override
  String get creator => identifier;

  @override
  String get into => '$identifier.ref.lpVtbl';

  // No deallocation is needed as Finalizer will handle it.
  @override
  bool get needsDeallocation => false;
}
