// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide WinRTStringConversion;
import 'package:windows_ui/windows_ui.dart';

import '../internal.dart';
import 'exports.g.dart';

part 'iasyncoperation_part.dart';

/// Represents an asynchronous operation, which returns a result upon
/// completion. This is the return type for many Windows Runtime asynchronous
/// methods that have results but don't report progress.
abstract interface class IAsyncOperation<TResult> extends IInspectable
    implements IAsyncInfo {
  IAsyncOperation(
    super.ptr, {
    DoubleType? tResultDoubleType,
    IntType? tResultIntType,
  });

  late final _IAsyncOperationVtbl __vtable =
      ptr.ref.vtable.cast<_IAsyncOperationVtbl>().ref;

  /// Creates an instance of [IAsyncOperation] from the given `ptr`.
  ///
  /// [TResult] must be of type `bool`, `double`, `Guid`, `int`, `Object?`,
  /// `String`, `Uri?`, `IInspectable?` (e.g., `StorageFile?`), `WinRTEnum`
  /// (e.g., `LaunchUriStatus`), or `WinRTStruct` (e.g., `LoadMoreItemsResult`).
  ///
  /// [tResultDoubleType] must be specified if [TResult] is `double`.
  /// ```darts
  /// final asyncOperation = IAsyncOperation<double>.fromPtr(ptr,
  ///     tResultDoubleType: DoubleType.float);
  /// ```
  ///
  /// [tResultIntType] must be specified if [TResult] is `int`.
  /// ```dart
  /// final asyncOperation =
  ///     IAsyncOperation<int>.fromPtr(ptr, tResultIntType: IntType.uint64);
  /// ```
  ///
  /// [tResultObjectCreator] must be specified if [TResult] is `IInspectable?`.
  /// ```dart
  /// ...
  /// final asyncOperation = IAsyncOperation<StorageFile?>(ptr,
  ///     tResultObjectCreator: StorageFile.fromPtr);
  /// ```
  ///
  /// [tResultEnumCreator] must be specified if [TResult] is `WinRTEnum`.
  /// ```dart
  /// final asyncOperation = IAsyncOperation<LaunchUriStatus>.fromPtr(ptr,
  ///     tResultEnumCreator: LaunchUriStatus.from);
  /// ```
  factory IAsyncOperation.fromPtr(
    Pointer<COMObject> ptr, {
    EnumCreator<TResult>? tResultEnumCreator,
    COMObjectCreator<TResult>? tResultObjectCreator,
    DoubleType? tResultDoubleType,
    IntType? tResultIntType,
  }) {
    if (TResult == bool) {
      return _IAsyncOperationBool.fromPtr(ptr) as IAsyncOperation<TResult>;
    }

    if (TResult == Guid) {
      return _IAsyncOperationGuid.fromPtr(ptr) as IAsyncOperation<TResult>;
    }

    if (isSubtypeOfInspectable<TResult>()) {
      if (tResultObjectCreator == null) {
        throw ArgumentError.notNull('tResultObjectCreator');
      }

      return _IAsyncOperationInspectable.fromPtr(
        ptr,
        tResultObjectCreator: tResultObjectCreator,
      );
    }

    if (TResult == double) {
      if (tResultDoubleType == null)
        throw ArgumentError.notNull('tResultDoubleType');
      final asyncOperation = switch (tResultDoubleType) {
        DoubleType.double => _IAsyncOperationDouble.fromPtr(ptr,
            tResultDoubleType: tResultDoubleType),
        DoubleType.float => _IAsyncOperationFloat.fromPtr(ptr,
            tResultDoubleType: tResultDoubleType),
      };
      return asyncOperation as IAsyncOperation<TResult>;
    }

    if (TResult == int) {
      if (tResultIntType == null) throw ArgumentError.notNull('tResultIntType');
      final asyncOperation = switch (tResultIntType) {
        IntType.int16 =>
          _IAsyncOperationInt16.fromPtr(ptr, tResultIntType: tResultIntType),
        IntType.int32 =>
          _IAsyncOperationInt32.fromPtr(ptr, tResultIntType: tResultIntType),
        IntType.int64 =>
          _IAsyncOperationInt64.fromPtr(ptr, tResultIntType: tResultIntType),
        IntType.uint8 =>
          _IAsyncOperationUint8.fromPtr(ptr, tResultIntType: tResultIntType),
        IntType.uint16 =>
          _IAsyncOperationUint16.fromPtr(ptr, tResultIntType: tResultIntType),
        IntType.uint32 =>
          _IAsyncOperationUint32.fromPtr(ptr, tResultIntType: tResultIntType),
        IntType.uint64 =>
          _IAsyncOperationUint64.fromPtr(ptr, tResultIntType: tResultIntType)
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
      if (tResultEnumCreator == null) {
        throw ArgumentError.notNull('tResultEnumCreator');
      }

      return _IAsyncOperationWinRTFlagsEnum.fromPtr(
        ptr,
        tResultEnumCreator: tResultEnumCreator,
      );
    }

    if (isSubtypeOfWinRTEnum<TResult>()) {
      if (tResultEnumCreator == null) {
        throw ArgumentError.notNull('tResultEnumCreator');
      }

      return _IAsyncOperationWinRTEnum.fromPtr(
        ptr,
        tResultEnumCreator: tResultEnumCreator,
      );
    }

    if (isSubtypeOfWinRTStruct<TResult>()) {
      if (TResult == LoadMoreItemsResult) {
        return _IAsyncOperationLoadMoreItemsResult.fromPtr(ptr)
            as IAsyncOperation<TResult>;
      }
    }

    throw UnsupportedError('Unsupported type argument: $TResult');
  }

  /// Sets the method that handles the operation completed notification.
  set completed(Pointer<COMObject> value) {
    final hr = __vtable.put_Completed.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  /// Gets the method that handles the operation completed notification.
  Pointer<COMObject> get completed {
    final retValuePtr = calloc<COMObject>();

    final hr = __vtable.get_Completed.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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

final class _IAsyncOperationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl
              /*, TResult*/
              )>> GetResults;
}
