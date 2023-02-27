// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';
import '../helpers.dart';
import '../iinspectable.dart';
import '../types.dart';
import '../uri.dart' as winrt_uri;
import '../winrt_enum.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ivectorview.dart';

part 'ivector_part.dart';

/// Represents a random-access collection of elements.
///
/// {@category interface}
abstract class IVector<T> extends IInspectable implements IIterable<T> {
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
  /// final vector = IVector<int>.fromRawPointer(ptr, intType: IntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable`.
  /// ```dart
  /// final vector = IVector<StorageFile>.fromRawPointer(ptr,
  ///     creator: StorageFile.fromRawPointer,
  ///     iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}');
  /// ```
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final vector = IVector<DeviceClass>.fromRawPointer(ptr,
  ///     enumCreator: DeviceClass.from,
  ///     iterableIid: '{47d4be05-58f1-522e-81c6-975eb4131bb9}');
  /// ```
  factory IVector.fromRawPointer(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
    IntType? intType,
  }) {
    if (T == bool) {
      return _IVectorBool.fromRawPointer(ptr, iterableIid: iterableIid)
          as IVector<T>;
    }

    if (T == Guid) {
      return _IVectorGuid.fromRawPointer(ptr, iterableIid: iterableIid)
          as IVector<T>;
    }

    if (isSubtypeOfInspectable<T>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IVectorInspectable.fromRawPointer(ptr,
          creator: creator, iterableIid: iterableIid);
    }

    if (T == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      switch (intType) {
        case IntType.int16:
          return _IVectorInt16.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVector<T>;
        case IntType.int32:
          return _IVectorInt32.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVector<T>;
        case IntType.int64:
          return _IVectorInt64.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVector<T>;
        case IntType.uint8:
          return _IVectorUint8.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVector<T>;
        case IntType.uint16:
          return _IVectorUint16.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVector<T>;
        case IntType.uint32:
          return _IVectorUint32.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVector<T>;
        case IntType.uint64:
          return _IVectorUint64.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVector<T>;
      }
    }

    if (T == String) {
      return _IVectorString.fromRawPointer(ptr, iterableIid: iterableIid)
          as IVector<T>;
    }

    if (T == Uri) {
      return _IVectorUri.fromRawPointer(ptr, iterableIid: iterableIid)
          as IVector<T>;
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

      if (isSubtypeOfWinRTFlagsEnum<T>()) {
        return _IVectorWinRTFlagsEnum.fromRawPointer(ptr,
            enumCreator: enumCreator, iterableIid: iterableIid);
      }

      return _IVectorWinRTEnum.fromRawPointer(ptr,
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
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

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
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<T>.fromRawPointer(retValuePtr,
        creator: _creator,
        enumCreator: _enumCreator,
        intType: _intType,
        iterableIid: _iterableIid);
    final list = vectorView.toList();
    vectorView.release();

    return list;
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
            Pointer<NativeFunction<HRESULT Function(LPVTBL lpVtbl, Uint32)>>>()
        .value
        .asFunction<int Function(LPVTBL lpVtbl, int)>()(ptr.ref.lpVtbl, index);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Appends an item to the end of the vector.
  void append(T value);

  /// Removes the last item from the vector.
  void removeAtEnd() {
    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL lpVtbl)>>>()
        .value
        .asFunction<int Function(LPVTBL lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Removes all items from the vector.
  void clear() {
    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL lpVtbl)>>>()
        .value
        .asFunction<int Function(LPVTBL lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Retrieves multiple items from the the vector beginning at the given index.
  int getMany(int startIndex, int valueSize, List<T> value);

  /// Replaces all the items in the vector with the specified items.
  void replaceAll(List<T> value);

  late final _iIterable = IIterable<T>.fromRawPointer(toInterface(_iterableIid),
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
}
