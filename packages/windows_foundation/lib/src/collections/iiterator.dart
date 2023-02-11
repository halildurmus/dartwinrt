// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';
import '../iinspectable.dart';
import '../types.dart';
import '../uri.dart' as winrt_uri;

/// Supports simple iteration over a collection.
///
/// {@category interface}
abstract class IIterator<T> extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IIterator(super.ptr);

  /// Creates an instance of [IIterator] from the given [ptr].
  ///
  /// [T] must be of type `int`, `String`, `Uri`, `IInspectable`(e.g.
  /// `StorageFile`) or `WinRTEnum` (e.g. `DeviceClass`).
  ///
  /// [intType] must be specified if [T] is `int`. Supported types are:
  /// [WinRTIntType.int16], [WinRTIntType.int32], [WinRTIntType.int64],
  /// [WinRTIntType.uint8], [WinRTIntType.uint16], [WinRTIntType.uint32],
  /// [WinRTIntType.uint64].
  /// ```dart
  /// final iterator =
  ///     IIterator<int>.fromRawPointer(ptr, intType: WinRTIntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable`.
  /// ```dart
  /// final iterator = IIterator<StorageFile>.fromRawPointer(ptr,
  ///     creator: StorageFile.fromRawPointer);
  /// ```
  ///
  /// [enumCreator] and [intType] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final iterator = IIterator<DeviceClass>.fromRawPointer(ptr,
  ///     enumCreator: DeviceClass.from, intType: WinRTIntType.int32);
  /// ```
  factory IIterator.fromRawPointer(
    Pointer<COMObject> ptr, {
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
    WinRTIntType? intType,
  }) {
    if (T == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      return _IIteratorInt.fromRawPointer(ptr, intType) as IIterator<T>;
    }

    if (isSubtypeOfInspectable<T>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IIteratorInspectable.fromRawPointer(ptr, creator);
    }

    if (T == String) {
      return _IIteratorString.fromRawPointer(ptr) as IIterator<T>;
    }

    if (T == Uri) {
      return _IIteratorUri.fromRawPointer(ptr) as IIterator<T>;
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');
      if (intType == null) throw ArgumentError.notNull('intType');
      return _IIteratorEnum.fromRawPointer(ptr, enumCreator, intType);
    }

    throw ArgumentError.value(T, 'T', 'Unsupported type');
  }

  /// Gets the current item in the collection.
  T get current;

  /// Gets a value that indicates whether the iterator refers to a current item
  /// or is at the end of the collection.
  bool get hasCurrent {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
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

  /// Advances the iterator to the next item in the collection.
  bool moveNext() {
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

  /// Retrieves multiple items from the iterator.
  int getMany(int capacity, Pointer<NativeType> value);
}

class _IIteratorEnum<T> extends IIterator<T> {
  _IIteratorEnum.fromRawPointer(super.ptr, this.enumCreator, this.intType);

  final T Function(int) enumCreator;
  final WinRTIntType intType;

  @override
  T get current => enumCreator(_currentInt(ptr, intType));

  @override
  int getMany(int capacity, Pointer<NativeType> value) =>
      _getManyInt(ptr, intType, capacity, value);
}

class _IIteratorInspectable<T> extends IIterator<T> {
  _IIteratorInspectable.fromRawPointer(super.ptr, this.creator);

  final T Function(Pointer<COMObject>) creator;

  @override
  T get current {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
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

    return creator(retValuePtr);
  }

  @override
  int getMany(int capacity, Pointer<NativeType> value) =>
      _getManyCOMObject(ptr, capacity, value.cast());
}

class _IIteratorInt extends IIterator<int> {
  _IIteratorInt.fromRawPointer(super.ptr, this.intType);

  final WinRTIntType intType;

  @override
  int get current => _currentInt(ptr, intType);

  @override
  int getMany(int capacity, Pointer<NativeType> value) =>
      _getManyInt(ptr, intType, capacity, value);
}

class _IIteratorString extends IIterator<String> {
  _IIteratorString.fromRawPointer(super.ptr);

  @override
  String get current {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(6)
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

  @override
  int getMany(int capacity, Pointer<NativeType> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Uint32, Pointer<HSTRING>,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int, Pointer<HSTRING>, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, capacity, value.cast(), retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorUri extends IIterator<Uri> {
  _IIteratorUri.fromRawPointer(super.ptr);

  @override
  Uri get current {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
            .elementAt(6)
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

    final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
    final uriAsString = winrtUri.toString();
    winrtUri.release();

    return Uri.parse(uriAsString);
  }

  @override
  int getMany(int capacity, Pointer<NativeType> value) =>
      _getManyCOMObject(ptr, capacity, value.cast());
}

int _currentInt(Pointer<COMObject> ptr, WinRTIntType intType) {
  switch (intType) {
    case WinRTIntType.int16:
      return _currentInt16(ptr);
    case WinRTIntType.int64:
      return _currentInt64(ptr);
    case WinRTIntType.uint8:
      return _currentUint8(ptr);
    case WinRTIntType.uint16:
      return _currentUint16(ptr);
    case WinRTIntType.uint32:
      return _currentUint32(ptr);
    case WinRTIntType.uint64:
      return _currentUint64(ptr);
    default:
      return _currentInt32(ptr);
  }
}

int _currentInt16(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<Int16>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(Pointer, Pointer<Int16>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Int16>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _currentInt32(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<Int32>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(6)
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

int _currentInt64(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<Int64>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(6)
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

int _currentUint8(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<Uint8>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(Pointer, Pointer<Uint8>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Uint8>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _currentUint16(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<Uint16>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(Pointer, Pointer<Uint16>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Uint16>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _currentUint32(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(6)
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

int _currentUint64(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<Uint64>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(6)
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

int _getManyCOMObject(
    Pointer<COMObject> ptr, int capacity, Pointer<COMObject> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<COMObject>,
                            Pointer<Uint32>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int, Pointer<COMObject>, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyInt(Pointer<COMObject> ptr, WinRTIntType intType, int capacity,
    Pointer<NativeType> value) {
  switch (intType) {
    case WinRTIntType.int16:
      return _getManyInt16(ptr, capacity, value.cast());
    case WinRTIntType.int64:
      return _getManyInt64(ptr, capacity, value.cast());
    case WinRTIntType.uint8:
      return _getManyUint8(ptr, capacity, value.cast());
    case WinRTIntType.uint16:
      return _getManyUint16(ptr, capacity, value.cast());
    case WinRTIntType.uint32:
      return _getManyUint32(ptr, capacity, value.cast());
    case WinRTIntType.uint64:
      return _getManyUint64(ptr, capacity, value.cast());
    default:
      return _getManyInt32(ptr, capacity, value.cast());
  }
}

int _getManyInt16(Pointer<COMObject> ptr, int capacity, Pointer<Int16> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Int16>,
                            Pointer<Uint32>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Int16>, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyInt32(Pointer<COMObject> ptr, int capacity, Pointer<Int32> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Int32>,
                            Pointer<Uint32>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Int32>, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyInt64(Pointer<COMObject> ptr, int capacity, Pointer<Int64> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Int64>,
                            Pointer<Uint32>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Int64>, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyUint8(Pointer<COMObject> ptr, int capacity, Pointer<Uint8> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint8>,
                            Pointer<Uint32>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Uint8>, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyUint16(
    Pointer<COMObject> ptr, int capacity, Pointer<Uint16> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint16>,
                            Pointer<Uint32>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Uint16>, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyUint32(
    Pointer<COMObject> ptr, int capacity, Pointer<Uint32> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint32>,
                            Pointer<Uint32>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Uint32>, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyUint64(
    Pointer<COMObject> ptr, int capacity, Pointer<Uint64> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint64>,
                            Pointer<Uint32>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Uint64>, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}
