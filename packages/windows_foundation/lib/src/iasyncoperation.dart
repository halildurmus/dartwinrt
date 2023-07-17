// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_ui/windows_ui.dart';

import '../internal.dart';
import 'exports.g.dart';

part 'iasyncoperation_part.dart';

/// Represents an asynchronous operation, which returns a result upon
/// completion. This is the return type for many Windows Runtime asynchronous
/// methods that have results but don't report progress.
abstract interface class IAsyncOperation<TResult> extends IInspectable
    implements IAsyncInfo {
  // vtable begins at 6, is 3 entries long.
  IAsyncOperation(super.ptr);

  /// Creates an instance of [IAsyncOperation] from the given `ptr`.
  ///
  /// [TResult] must be of type `bool`, `double`, `Guid`, `int`, `Object?`,
  /// `String`, `Uri?`, `IInspectable?` (e.g. `StorageFile?`), `WinRTEnum` (e.g.
  /// `LaunchUriStatus`), or `WinRTStruct` (e.g. `LoadMoreItemsResult`).
  ///
  /// [doubleType] must be specified if [TResult] is `double`.
  /// ```darts
  /// final asyncOperation =
  ///     IAsyncOperation<double>.fromPtr(ptr, doubleType: DoubleType.float);
  /// ```
  ///
  /// [intType] must be specified if [TResult] is `int`.
  /// ```dart
  /// final asyncOperation =
  ///     IAsyncOperation<int>.fromPtr(ptr, intType: IntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [TResult] is `IInspectable?`.
  /// ```dart
  /// ...
  /// final asyncOperation =
  ///     IAsyncOperation<StorageFile?>(ptr, creator: StorageFile.fromPtr);
  /// ```
  ///
  /// [enumCreator] must be specified if [TResult] is `WinRTEnum`.
  /// ```dart
  /// final asyncOperation = IAsyncOperation<LaunchUriStatus>.fromPtr
  ///     (ptr, enumCreator: LaunchUriStatus.from);
  /// ```
  factory IAsyncOperation.fromPtr(
    Pointer<COMObject> ptr, {
    TResult Function(Pointer<COMObject>)? creator,
    TResult Function(int)? enumCreator,
    DoubleType? doubleType,
    IntType? intType,
  }) {
    if (TResult == bool) {
      return _IAsyncOperationBool.fromPtr(ptr) as IAsyncOperation<TResult>;
    }

    if (TResult == Guid) {
      return _IAsyncOperationGuid.fromPtr(ptr) as IAsyncOperation<TResult>;
    }

    if (isSubtypeOfInspectable<TResult>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IAsyncOperationInspectable.fromPtr(ptr, creator: creator);
    }

    if (TResult == double) {
      if (doubleType == null) throw ArgumentError.notNull('doubleType');
      final asyncOperation = switch (doubleType) {
        DoubleType.double => _IAsyncOperationDouble.fromPtr(ptr),
        DoubleType.float => _IAsyncOperationFloat.fromPtr(ptr),
      };
      return asyncOperation as IAsyncOperation<TResult>;
    }

    if (TResult == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      final asyncOperation = switch (intType) {
        IntType.int16 => _IAsyncOperationInt16.fromPtr(ptr),
        IntType.int32 => _IAsyncOperationInt32.fromPtr(ptr),
        IntType.int64 => _IAsyncOperationInt64.fromPtr(ptr),
        IntType.uint8 => _IAsyncOperationUint8.fromPtr(ptr),
        IntType.uint16 => _IAsyncOperationUint16.fromPtr(ptr),
        IntType.uint32 => _IAsyncOperationUint32.fromPtr(ptr),
        IntType.uint64 => _IAsyncOperationUint64.fromPtr(ptr)
      };
      return asyncOperation as IAsyncOperation<TResult>;
    }

    if (isNullableObjectType<TResult>()) {
      return _IAsyncOperationObject.fromPtr(ptr) as IAsyncOperation<TResult>;
    }

    if (TResult == String) {
      return _IAsyncOperationString.fromPtr(ptr) as IAsyncOperation<TResult>;
    }

    if (isSameType<TResult, Uri?>()) {
      return _IAsyncOperationUri.fromPtr(ptr) as IAsyncOperation<TResult>;
    }

    if (isSubtypeOfWinRTFlagsEnum<TResult>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');
      return _IAsyncOperationWinRTFlagsEnum.fromPtr(ptr,
          enumCreator: enumCreator);
    }

    if (isSubtypeOfWinRTEnum<TResult>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');
      return _IAsyncOperationWinRTEnum.fromPtr(ptr, enumCreator: enumCreator);
    }

    if (isSubtypeOfWinRTStruct<TResult>()) {
      if (TResult == LoadMoreItemsResult) {
        return _IAsyncOperationLoadMoreItemsResult.fromPtr(ptr)
            as IAsyncOperation<TResult>;
      }
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
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, value.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  /// Gets the method that handles the operation completed notification.
  Pointer<COMObject> get completed {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throwWindowsException(hr);

    return retValuePtr;
  }

  /// Gets the result of the asynchronous operation.
  TResult getResults();

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
