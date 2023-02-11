// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'exports.g.dart';
import 'iasyncinfo.dart';
import 'internal/ipropertyvalue_helpers.dart';
import 'ipropertyvalue.dart';
import 'uri.dart' as winrt_uri;

/// Represents an asynchronous operation, which returns a result upon
/// completion. This is the return type for many Windows Runtime asynchronous
/// methods that have results but don't report progress.
///
/// {@category interface}
abstract class IAsyncOperation<TResult> extends IInspectable
    implements IAsyncInfo {
  // vtable begins at 6, is 3 entries long.
  IAsyncOperation(super.ptr);

  /// Creates an instance of [IAsyncOperation] from the given `ptr`.
  ///
  /// [TResult] must be of type `bool`, `Guid`, `int`, `Object?`, `String`,
  /// `Uri`, `IInspectable?` (e.g. `StorageFile?`, `IBuffer?`) or `WinRTEnum`
  /// (e.g. `LaunchUriStatus`).
  ///
  /// [intType] must be specified if [TResult] is `int`. Supported types are:
  /// [WinRTIntType.int32], [WinRTIntType.int64], [WinRTIntType.uint32],
  /// [WinRTIntType.uint64].
  /// ```dart
  /// final asyncOperation = IAsyncOperation<int>.fromRawPointer(ptr,
  ///     intType: WinRTIntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [TResult] is `IInspectable?`.
  /// ```dart
  /// ...
  /// final asyncOperation = IAsyncOperation<StorageFile?>(ptr,
  ///     creator: StorageFile.fromRawPointer);
  /// ```
  ///
  /// [enumCreator] and [intType] must be specified if [TResult] is `WinRTEnum`.
  /// ```dart
  /// final asyncOperation = IAsyncOperation<LaunchUriStatus>.fromRawPointer
  ///     (ptr, enumCreator: LaunchUriStatus.from, intType: WinRTIntType.int32);
  /// ```
  factory IAsyncOperation.fromRawPointer(
    Pointer<COMObject> ptr, {
    TResult Function(Pointer<COMObject>)? creator,
    TResult Function(int)? enumCreator,
    WinRTIntType? intType,
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
      return _IAsyncOperationInspectable.fromRawPointer(ptr, creator);
    }

    if (TResult == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      return _IAsyncOperationInt.fromRawPointer(ptr, intType)
          as IAsyncOperation<TResult>;
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
      if (intType == null) throw ArgumentError.notNull('intType');
      return _IAsyncOperationEnum.fromRawPointer(ptr, enumCreator, intType);
    }

    throw ArgumentError.value(TResult, 'TResult', 'Unsupported type');
  }

  /// Sets the method that handles the operation completed notification.
  set completed(Pointer<NativeFunction<AsyncOperationCompletedHandler>> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer)>>>()
        .value
        .asFunction<int Function(Pointer, Pointer)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Gets the method that handles the operation completed notification.
  Pointer<NativeFunction<AsyncOperationCompletedHandler>> get completed {
    final retValuePtr =
        calloc<Pointer<NativeFunction<AsyncOperationCompletedHandler>>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Pointer)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
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

class _IAsyncOperationBool extends IAsyncOperation<bool> {
  _IAsyncOperationBool.fromRawPointer(super.ptr);

  @override
  bool getResults() {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IAsyncOperationEnum<T> extends IAsyncOperation<T> {
  _IAsyncOperationEnum.fromRawPointer(
      super.ptr, this.enumCreator, this.intType);

  final T Function(int) enumCreator;
  final WinRTIntType intType;

  @override
  T getResults() {
    switch (intType) {
      case WinRTIntType.uint32:
        return enumCreator(_getResultsUint32());
      default:
        return enumCreator(_getResultsInt32());
    }
  }

  int _getResultsInt32() {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getResultsUint32() {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IAsyncOperationGuid extends IAsyncOperation<Guid> {
  _IAsyncOperationGuid.fromRawPointer(super.ptr);

  @override
  Guid getResults() {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<GUID>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<GUID>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }
}

class _IAsyncOperationInspectable<T> extends IAsyncOperation<T> {
  _IAsyncOperationInspectable.fromRawPointer(super.ptr, this.creator);

  final T Function(Pointer<COMObject>) creator;

  @override
  T getResults() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as T;
    }

    return creator(retValuePtr);
  }
}

class _IAsyncOperationInt extends IAsyncOperation<int> {
  _IAsyncOperationInt.fromRawPointer(super.ptr, this.intType);

  final WinRTIntType intType;

  @override
  int getResults() {
    switch (intType) {
      case WinRTIntType.int64:
        return _getResultsInt64();
      case WinRTIntType.uint32:
        return _getResultsUint32();
      case WinRTIntType.uint64:
        return _getResultsUint64();
      default:
        return _getResultsInt32();
    }
  }

  int _getResultsInt32() {
    final retValuePtr = calloc<Int32>();
    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getResultsInt64() {
    final retValuePtr = calloc<Int64>();
    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getResultsUint32() {
    final retValuePtr = calloc<Uint32>();
    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getResultsUint64() {
    final retValuePtr = calloc<Uint64>();
    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IAsyncOperationObject extends IAsyncOperation<Object?> {
  _IAsyncOperationObject.fromRawPointer(super.ptr);

  @override
  Object? getResults() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromRawPointer(retValuePtr).value;
  }
}

class _IAsyncOperationString extends IAsyncOperation<String> {
  _IAsyncOperationString.fromRawPointer(super.ptr);

  @override
  String getResults() {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Pointer<HSTRING>)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<HSTRING>)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}

class _IAsyncOperationUri extends IAsyncOperation<Uri?> {
  _IAsyncOperationUri.fromRawPointer(super.ptr);

  @override
  Uri? getResults() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
    final uriAsString = winrtUri.toString();
    winrtUri.release();

    return Uri.parse(uriAsString);
  }
}
