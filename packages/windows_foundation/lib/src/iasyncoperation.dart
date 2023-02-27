// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../internal.dart';
import 'exports.g.dart';
import 'uri.dart' as winrt_uri;

part 'iasyncoperation_part.dart';

/// Represents an asynchronous operation, which returns a result upon
/// completion. This is the return type for many Windows Runtime asynchronous
/// methods that have results but don't report progress.
///
/// {@category interface}
abstract class IAsyncOperation<TResult> extends IInspectable
    implements IAsyncInfo {
  // vtable begins at 6, is 3 entries long.
  IAsyncOperation(
    super.ptr, {
    TResult Function(Pointer<COMObject>)? creator,
    TResult Function(int)? enumCreator,
  })  : _creator = creator,
        _enumCreator = enumCreator;

  final TResult Function(Pointer<COMObject>)? _creator;
  final TResult Function(int)? _enumCreator;

  /// Creates an instance of [IAsyncOperation] from the given `ptr`.
  ///
  /// [TResult] must be of type `bool`, `Guid`, `int`, `Object?`, `String`,
  /// `Uri?`, `IInspectable?` (e.g. `StorageFile?`) or `WinRTEnum` (e.g.
  /// `LaunchUriStatus`).
  ///
  /// [intType] must be specified if [TResult] is `int`.
  /// ```dart
  /// final asyncOperation = IAsyncOperation<int>.fromRawPointer(ptr,
  ///     intType: IntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [TResult] is `IInspectable?`.
  /// ```dart
  /// ...
  /// final asyncOperation = IAsyncOperation<StorageFile?>(ptr,
  ///     creator: StorageFile.fromRawPointer);
  /// ```
  ///
  /// [enumCreator] must be specified if [TResult] is `WinRTEnum`.
  /// ```dart
  /// final asyncOperation = IAsyncOperation<LaunchUriStatus>.fromRawPointer
  ///     (ptr, enumCreator: LaunchUriStatus.from);
  /// ```
  factory IAsyncOperation.fromRawPointer(
    Pointer<COMObject> ptr, {
    TResult Function(Pointer<COMObject>)? creator,
    TResult Function(int)? enumCreator,
    IntType? intType,
  }) {
    if (TResult == bool) {
      return _IAsyncOperationBool.fromRawPointer(ptr)
          as IAsyncOperation<TResult>;
    }

    if (TResult == Guid) {
      return _IAsyncOperationGuid.fromRawPointer(ptr)
          as IAsyncOperation<TResult>;
    }

    if (isSubtypeOfInspectable<TResult>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IAsyncOperationInspectable.fromRawPointer(ptr, creator: creator);
    }

    if (TResult == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      switch (intType) {
        case IntType.int16:
          return _IAsyncOperationInt16.fromRawPointer(ptr)
              as IAsyncOperation<TResult>;
        case IntType.int32:
          return _IAsyncOperationInt32.fromRawPointer(ptr)
              as IAsyncOperation<TResult>;
        case IntType.int64:
          return _IAsyncOperationInt64.fromRawPointer(ptr)
              as IAsyncOperation<TResult>;
        case IntType.uint8:
          return _IAsyncOperationUint8.fromRawPointer(ptr)
              as IAsyncOperation<TResult>;
        case IntType.uint16:
          return _IAsyncOperationUint16.fromRawPointer(ptr)
              as IAsyncOperation<TResult>;
        case IntType.uint32:
          return _IAsyncOperationUint32.fromRawPointer(ptr)
              as IAsyncOperation<TResult>;
        case IntType.uint64:
          return _IAsyncOperationUint64.fromRawPointer(ptr)
              as IAsyncOperation<TResult>;
      }
    }

    if (isNullableObjectType<TResult>()) {
      return _IAsyncOperationObject.fromRawPointer(ptr)
          as IAsyncOperation<TResult>;
    }

    if (TResult == String) {
      return _IAsyncOperationString.fromRawPointer(ptr)
          as IAsyncOperation<TResult>;
    }

    if (isSameType<TResult, Uri?>()) {
      return _IAsyncOperationUri.fromRawPointer(ptr)
          as IAsyncOperation<TResult>;
    }

    if (isSubtypeOfWinRTEnum<TResult>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

      if (isSubtypeOfWinRTFlagsEnum<TResult>()) {
        return _IAsyncOperationWinRTFlagsEnum.fromRawPointer(ptr,
            enumCreator: enumCreator);
      }

      return _IAsyncOperationWinRTEnum.fromRawPointer(ptr,
          enumCreator: enumCreator);
    }

    throw ArgumentError.value(TResult, 'TResult', 'Unsupported type');
  }

  /// Sets the method that handles the operation completed notification.
  set completed(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL value)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, LPVTBL value)>()(
        ptr.ref.lpVtbl, value.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Gets the method that handles the operation completed notification.
  Pointer<COMObject> get completed {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }

  /// Gets the result of the asynchronous operation.
  TResult getResults();

  // IAsyncInfo methods
  late final _iAsyncInfo = IAsyncInfo.from(this);

  @override
  int get id => _iAsyncInfo.id;

  @override
  AsyncStatus get status => _iAsyncInfo.status;

  @override
  int get errorCode => _iAsyncInfo.errorCode;

  @override
  void cancel() => _iAsyncInfo.cancel();

  @override
  void close() => _iAsyncInfo.close();
}
