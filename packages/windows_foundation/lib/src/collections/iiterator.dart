// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';
import '../types.dart';

part 'iiterator_part.dart';

/// Supports simple iteration over a collection.
///
/// {@category interface}
abstract interface class IIterator<T> extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IIterator(super.ptr);

  /// Creates an instance of [IIterator] from the given [ptr].
  ///
  /// [T] must be of type `bool`, `Guid`, `int`, `String`, `Uri`,
  /// `IInspectable` (e.g.`StorageFile`) or `WinRTEnum` (e.g. `DeviceClass`).
  ///
  /// [intType] must be specified if [T] is `int`.
  /// ```dart
  /// final iterator = IIterator<int>.fromPtr(ptr, intType: IntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable`.
  /// ```dart
  /// final iterator = IIterator<StorageFile>.fromPtr(ptr,
  ///     creator: StorageFile.fromPtr);
  /// ```
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final iterator = IIterator<DeviceClass>.fromPtr(ptr,
  ///     enumCreator: DeviceClass.from);
  /// ```
  factory IIterator.fromPtr(
    Pointer<COMObject> ptr, {
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
    IntType? intType,
  }) {
    if (T == bool) return _IIteratorBool.fromPtr(ptr) as IIterator<T>;
    if (T == Guid) return _IIteratorGuid.fromPtr(ptr) as IIterator<T>;

    if (T == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      final iterator = switch (intType) {
        IntType.int16 => _IIteratorInt16.fromPtr(ptr),
        IntType.int32 => _IIteratorInt32.fromPtr(ptr),
        IntType.int64 => _IIteratorInt64.fromPtr(ptr),
        IntType.uint8 => _IIteratorUint8.fromPtr(ptr),
        IntType.uint16 => _IIteratorUint16.fromPtr(ptr),
        IntType.uint32 => _IIteratorUint32.fromPtr(ptr),
        IntType.uint64 => _IIteratorUint64.fromPtr(ptr)
      };
      return iterator as IIterator<T>;
    }

    if (isSubtypeOfInspectable<T>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IIteratorInspectable.fromPtr(ptr, creator: creator);
    }

    if (T == String) return _IIteratorString.fromPtr(ptr) as IIterator<T>;
    if (T == Uri) return _IIteratorUri.fromPtr(ptr) as IIterator<T>;

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

      if (isSubtypeOfWinRTFlagsEnum<T>()) {
        return _IIteratorWinRTFlagsEnum.fromPtr(ptr, enumCreator: enumCreator);
      }

      return _IIteratorWinRTEnum.fromPtr(ptr, enumCreator: enumCreator);
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
                          VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

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
                          VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  /// Retrieves multiple items from the iterator.
  int getMany(int capacity, List<T> value);
}
