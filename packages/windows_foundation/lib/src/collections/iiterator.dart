// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';
import '../iinspectable.dart';
import '../types.dart';

part 'iiterator_part.dart';

/// Supports simple iteration over a collection.
///
/// {@category interface}
abstract class IIterator<T> extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IIterator(
    super.ptr, {
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
  })  : _creator = creator,
        _enumCreator = enumCreator;

  final T Function(Pointer<COMObject>)? _creator;
  final T Function(int)? _enumCreator;

  /// Creates an instance of [IIterator] from the given [ptr].
  ///
  /// [T] must be of type `bool`, `Guid`, `int`, `String`, `Uri`,
  /// `IInspectable` (e.g.`StorageFile`) or `WinRTEnum` (e.g. `DeviceClass`).
  ///
  /// [intType] must be specified if [T] is `int`.
  /// ```dart
  /// final iterator =
  ///     IIterator<int>.fromRawPointer(ptr, intType: IntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable`.
  /// ```dart
  /// final iterator = IIterator<StorageFile>.fromRawPointer(ptr,
  ///     creator: StorageFile.fromRawPointer);
  /// ```
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final iterator = IIterator<DeviceClass>.fromRawPointer(ptr,
  ///     enumCreator: DeviceClass.from);
  /// ```
  factory IIterator.fromRawPointer(
    Pointer<COMObject> ptr, {
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
    IntType? intType,
  }) {
    if (T == bool) return _IIteratorBool.fromRawPointer(ptr) as IIterator<T>;
    if (T == Guid) return _IIteratorGuid.fromRawPointer(ptr) as IIterator<T>;

    if (T == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      switch (intType) {
        case IntType.int16:
          return _IIteratorInt16.fromRawPointer(ptr) as IIterator<T>;
        case IntType.int32:
          return _IIteratorInt32.fromRawPointer(ptr) as IIterator<T>;
        case IntType.int64:
          return _IIteratorInt64.fromRawPointer(ptr) as IIterator<T>;
        case IntType.uint8:
          return _IIteratorUint8.fromRawPointer(ptr) as IIterator<T>;
        case IntType.uint16:
          return _IIteratorUint16.fromRawPointer(ptr) as IIterator<T>;
        case IntType.uint32:
          return _IIteratorUint32.fromRawPointer(ptr) as IIterator<T>;
        case IntType.uint64:
          return _IIteratorUint64.fromRawPointer(ptr) as IIterator<T>;
      }
    }

    if (isSubtypeOfInspectable<T>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IIteratorInspectable.fromRawPointer(ptr, creator: creator);
    }

    if (T == String) {
      return _IIteratorString.fromRawPointer(ptr) as IIterator<T>;
    }

    if (T == Uri) {
      return _IIteratorUri.fromRawPointer(ptr) as IIterator<T>;
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

      if (isSubtypeOfWinRTFlagsEnum<T>()) {
        return _IIteratorWinRTFlagsEnum.fromRawPointer(ptr,
            enumCreator: enumCreator);
      }

      return _IIteratorWinRTEnum.fromRawPointer(ptr, enumCreator: enumCreator);
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
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

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
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  /// Retrieves multiple items from the iterator.
  int getMany(int capacity, List<T> value);
}
