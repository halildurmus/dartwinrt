// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';
import '../types.dart';
import '../winrt_enum.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ivectorview.dart';

part 'ivector_part.dart';

/// Represents a random-access collection of elements.
///
/// {@category interface}
abstract interface class IVector<T> extends IInspectable
    implements IIterable<T> {
  // vtable begins at 6, is 12 entries long.
  IVector(
    super.ptr, {
    required String iterableIid,
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
    IntType? intType,
  })  : _creator = creator,
        _enumCreator = enumCreator,
        _intType = intType,
        _iterableIid = iterableIid;

  final T Function(Pointer<COMObject>)? _creator;
  final T Function(int)? _enumCreator;
  final IntType? _intType;
  final String _iterableIid;

  /// Creates an instance of [IVector] from the given [ptr] and [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<T>` interface (e.g.
  /// `'{9ac00304-83ea-5688-87b6-ae38aab65d0b}'`).
  ///
  /// [T] must be of type `bool`, `Guid`, `int`, `String`, `Uri`,
  /// `IInspectable` (e.g.`StorageFile`) or `WinRTEnum` (e.g. `DeviceClass`).
  ///
  /// [intType] must be specified if [T] is `int`.
  /// ```dart
  /// final vector = IVector<int>.fromPtr(ptr, intType: IntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable`.
  /// ```dart
  /// final vector = IVector<StorageFile>.fromPtr(ptr,
  ///     creator: StorageFile.fromPtr,
  ///     iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}');
  /// ```
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final vector = IVector<DeviceClass>.fromPtr(ptr,
  ///     enumCreator: DeviceClass.from,
  ///     iterableIid: '{47d4be05-58f1-522e-81c6-975eb4131bb9}');
  /// ```
  factory IVector.fromPtr(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
    IntType? intType,
  }) {
    if (T == bool) {
      return _IVectorBool.fromPtr(ptr, iterableIid: iterableIid) as IVector<T>;
    }

    if (T == Guid) {
      return _IVectorGuid.fromPtr(ptr, iterableIid: iterableIid) as IVector<T>;
    }

    if (isSubtypeOfInspectable<T>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IVectorInspectable.fromPtr(ptr,
          creator: creator, iterableIid: iterableIid);
    }

    if (T == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      final vector = switch (intType) {
        IntType.int16 => _IVectorInt16.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.int32 => _IVectorInt32.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.int64 => _IVectorInt64.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.uint8 => _IVectorUint8.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.uint16 => _IVectorUint16.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.uint32 => _IVectorUint32.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.uint64 => _IVectorUint64.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid)
      };
      return vector as IVector<T>;
    }

    if (T == String) {
      return _IVectorString.fromPtr(ptr, iterableIid: iterableIid)
          as IVector<T>;
    }

    if (T == Uri) {
      return _IVectorUri.fromPtr(ptr, iterableIid: iterableIid) as IVector<T>;
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

      if (isSubtypeOfWinRTFlagsEnum<T>()) {
        return _IVectorWinRTFlagsEnum.fromPtr(ptr,
            enumCreator: enumCreator, iterableIid: iterableIid);
      }

      return _IVectorWinRTEnum.fromPtr(ptr,
          enumCreator: enumCreator, iterableIid: iterableIid);
    }

    throw ArgumentError.value(T, 'T', 'Unsupported type');
  }

  /// Returns the item at the specified index in the vector view.
  T getAt(int index);

  /// Gets the number of items in the vector.
  int get size {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  /// Returns an immutable view of the vector.
  List<T> getView() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<T>.fromPtr(retValuePtr,
        creator: _creator,
        enumCreator: _enumCreator,
        intType: _intType,
        iterableIid: _iterableIid);
    return vectorView.toList();
  }

  /// Retrieves the index of a specified item in the vector.
  ///
  /// Does not work for `Uri` [value]s.
  bool indexOf(T value, Pointer<Uint32> index);

  /// Sets the value at the specified index in the vector.
  void setAt(int index, T value);

  /// Inserts an item at a specified index in the vector.
  void insertAt(int index, T value);

  /// Removes the item at the specified index in the vector.
  void removeAt(int index) {
    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int)>()(
        ptr.ref.lpVtbl, index);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Appends an item to the end of the vector.
  void append(T value);

  /// Removes the last item from the vector.
  void removeAtEnd() {
    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Removes all items from the vector.
  void clear() {
    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Retrieves multiple items from the the vector beginning at the given index.
  int getMany(int startIndex, int valueSize, List<T> value);

  /// Replaces all the items in the vector with the specified items.
  void replaceAll(List<T> value);

  late final _iIterable = IIterable<T>.fromPtr(toInterface(_iterableIid),
      creator: _creator, enumCreator: _enumCreator, intType: _intType);

  @override
  IIterator<T> first() => _iIterable.first();

  /// Creates an unmodifiable [List] from the current [IVector] instance.
  List<T> toList() {
    if (size == 0) return List.unmodifiable(<T>[]);

    final list = <T>[];
    getMany(0, size, list);
    return List.unmodifiable(list);
  }

  /// The object at the given [index] in the list.
  ///
  /// The [index] must be a valid index of this list, which means that `index`
  /// must be non-negative and less than [size].
  T operator [](int index) {
    if (index < 0 || index >= size) {
      throw RangeError.range(index, 0, size - 1, 'index');
    }
    return getAt(index);
  }

  /// Sets the value at the given [index] in the list to [value].
  ///
  /// The [index] must be a valid index of this list, which means that `index`
  /// must be non-negative and less than [size].
  void operator []=(int index, T value) {
    if (index < 0 || index >= size) {
      throw RangeError.range(index, 0, size - 1, 'index');
    }
    setAt(index, value);
  }

  /// Returns the concatenation of this list and [other].
  ///
  /// Returns a new list containing the elements of this list followed by
  /// the elements of [other].
  ///
  /// The default behavior is to return a normal growable list.
  List<T> operator +(List<T> other) => toList() + other;
}
