// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';
import '../iinspectable.dart';
import '../types.dart';
import '../winrt_enum.dart';
import 'iiterable.dart';
import 'iiterator.dart';

part 'ivectorview_part.dart';

/// Represents an immutable view into a vector.
///
/// {@category interface}
abstract class IVectorView<T> extends IInspectable implements IIterable<T> {
  // vtable begins at 6, is 4 entries long.
  IVectorView(
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

  /// Creates an instance of [IVectorView] from the given [ptr] and
  /// [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<T>` interface (e.g.
  /// `'{9ac00304-83ea-5688-87b6-ae38aab65d0b}'`).
  ///
  /// [T] must be of type `bool`, `Guid`, `int`, `String`, `Uri`,
  /// `IInspectable` (e.g.`StorageFile`) or `WinRTEnum` (e.g. `DeviceClass`).
  ///
  /// [intType] must be specified if [T] is `int`.
  /// ```dart
  /// final vectorView = IVectorView<int>.fromRawPointer(ptr,
  ///     intType: IntType.uint64,
  ///     iterableIid: '{4b3a3229-7995-5f3c-b248-6c1f7e664f01}');
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable`.
  /// ```dart
  /// final vectorView = IVectorView<StorageFile>.fromRawPointer(ptr,
  ///     creator: StorageFile.fromRawPointer,
  ///     iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}');
  /// ```
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final vectorView = IVectorView<DeviceClass>.fromRawPointer(ptr,
  ///     enumCreator: DeviceClass.from,
  ///     iterableIid: '{47d4be05-58f1-522e-81c6-975eb4131bb9}');
  /// ```
  factory IVectorView.fromRawPointer(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
    IntType? intType,
  }) {
    if (T == bool) {
      return _IVectorViewBool.fromRawPointer(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (T == Guid) {
      return _IVectorViewGuid.fromRawPointer(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (isSubtypeOfInspectable<T>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IVectorViewInspectable.fromRawPointer(ptr,
          creator: creator, iterableIid: iterableIid);
    }

    if (T == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      switch (intType) {
        case IntType.int16:
          return _IVectorViewInt16.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVectorView<T>;
        case IntType.int32:
          return _IVectorViewInt32.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVectorView<T>;
        case IntType.int64:
          return _IVectorViewInt64.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVectorView<T>;
        case IntType.uint8:
          return _IVectorViewUint8.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVectorView<T>;
        case IntType.uint16:
          return _IVectorViewUint16.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVectorView<T>;
        case IntType.uint32:
          return _IVectorViewUint32.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVectorView<T>;
        case IntType.uint64:
          return _IVectorViewUint64.fromRawPointer(ptr,
              intType: intType, iterableIid: iterableIid) as IVectorView<T>;
      }
    }

    if (T == String) {
      return _IVectorViewString.fromRawPointer(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (T == Uri) {
      return _IVectorViewUri.fromRawPointer(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

      if (isSubtypeOfWinRTFlagsEnum<T>()) {
        return _IVectorViewWinRTFlagsEnum.fromRawPointer(ptr,
            enumCreator: enumCreator, iterableIid: iterableIid);
      }

      return _IVectorViewWinRTEnum.fromRawPointer(ptr,
          enumCreator: enumCreator, iterableIid: iterableIid);
    }

    throw ArgumentError.value(T, 'T', 'Unsupported type');
  }

  /// Returns the item at the specified index in the vector view.
  T getAt(int index);

  /// Gets the number of items in the vector view.
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

  /// Retrieves the index of a specified item in the vector view.
  ///
  /// Does not work for `Uri` [value]s.
  bool indexOf(T value, Pointer<Uint32> index);

  /// Retrieves multiple items from the vector view beginning at the given
  /// index.
  int getMany(int startIndex, int valueSize, List<T> value);

  late final _iIterable = IIterable<T>.fromRawPointer(toInterface(_iterableIid),
      creator: _creator, enumCreator: _enumCreator, intType: _intType);

  @override
  IIterator<T> first() => _iIterable.first();

  /// Creates an unmodifiable [List] from the current [IVectorView] instance.
  List<T> toList() {
    if (size == 0) return List.unmodifiable(<T>[]);
    final list = <T>[];
    getMany(0, size, list);
    return List.unmodifiable(list);
  }
}
