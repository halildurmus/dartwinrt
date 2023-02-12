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

/// Represents an immutable view into a vector.
///
/// {@category interface}
abstract class IVectorView<T> extends IInspectable implements IIterable<T> {
  // vtable begins at 6, is 4 entries long.
  IVectorView(super.ptr);

  /// Creates an instance of [IVectorView] from the given [ptr] and
  /// [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<T>` interface (e.g.
  /// `'{9ac00304-83ea-5688-87b6-ae38aab65d0b}'`).
  ///
  /// [T] must be of type `int`, `Uri`, `String`, `IInspectable` (e.g.
  /// `StorageFile`) or `WinRTEnum` (e.g. `DeviceClass`).
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
    if (isSubtypeOfInspectable<T>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IVectorViewInspectable.fromRawPointer(ptr, creator, iterableIid);
    }

    if (T == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      return _IVectorViewInt.fromRawPointer(ptr, intType, iterableIid)
          as IVectorView<T>;
    }

    if (T == String) {
      return _IVectorViewString.fromRawPointer(ptr, iterableIid)
          as IVectorView<T>;
    }

    if (T == Uri) {
      return _IVectorViewUri.fromRawPointer(ptr, iterableIid) as IVectorView<T>;
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

      if (isSubtypeOfWinRTFlagsEnum<T>()) {
        return _IVectorViewFlagsEnum.fromRawPointer(
            ptr, enumCreator, iterableIid);
      }

      return _IVectorViewEnum.fromRawPointer(ptr, enumCreator, iterableIid);
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

  /// Retrieves the index of a specified item in the vector view.
  ///
  /// Does not work for `Uri` [value]s.
  bool indexOf(T value, Pointer<Uint32> index);

  /// Retrieves multiple items from the vector view beginning at the given
  /// index.
  int getMany(int startIndex, int capacity, Pointer<NativeType> value);

  @override
  IIterator<T> first();

  /// Creates an unmodifiable [List] from the current [IVectorView] instance.
  List<T> toList();
}

class _IVectorViewEnum<T> extends IVectorView<T> {
  _IVectorViewEnum.fromRawPointer(
      super.ptr, this.enumCreator, this.iterableIid);

  final T Function(int) enumCreator;
  final String iterableIid;
  final intType = IntType.int32;

  @override
  T getAt(int index) => enumCreator(_getAtInt(ptr, intType, index));

  @override
  bool indexOf(T value, Pointer<Uint32> index) =>
      _indexOfInt(ptr, intType, (value as WinRTEnum).value, index);

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) =>
      _getManyInt(ptr, intType, startIndex, capacity, value);

  late final _iIterable = IIterable<T>.fromRawPointer(toInterface(iterableIid),
      enumCreator: enumCreator, intType: intType);

  @override
  IIterator<T> first() => _iIterable.first();

  @override
  List<T> toList() {
    if (size == 0) return List.unmodifiable(<T>[]);

    final pArray = calloc<Int32>(size);
    try {
      getMany(0, size, pArray);
      return List.unmodifiable(pArray.toList(length: size).map(enumCreator));
    } finally {
      free(pArray);
    }
  }
}

class _IVectorViewFlagsEnum<T> extends IVectorView<T> {
  _IVectorViewFlagsEnum.fromRawPointer(
      super.ptr, this.enumCreator, this.iterableIid);

  final T Function(int) enumCreator;
  final String iterableIid;
  final intType = IntType.uint32;

  @override
  T getAt(int index) => enumCreator(_getAtInt(ptr, intType, index));

  @override
  bool indexOf(T value, Pointer<Uint32> index) =>
      _indexOfInt(ptr, intType, (value as WinRTEnum).value, index);

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) =>
      _getManyInt(ptr, intType, startIndex, capacity, value);

  late final _iIterable = IIterable<T>.fromRawPointer(toInterface(iterableIid),
      enumCreator: enumCreator, intType: intType);

  @override
  IIterator<T> first() => _iIterable.first();

  @override
  List<T> toList() {
    if (size == 0) return List.unmodifiable(<T>[]);

    final pArray = calloc<Uint32>(size);
    try {
      getMany(0, size, pArray);
      return List.unmodifiable(pArray.toList(length: size).map(enumCreator));
    } finally {
      free(pArray);
    }
  }
}

class _IVectorViewInspectable<T> extends IVectorView<T> {
  _IVectorViewInspectable.fromRawPointer(
      super.ptr, this.creator, this.iterableIid);

  final T Function(Pointer<COMObject>) creator;
  final String iterableIid;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer, Uint32, Pointer<COMObject>)>>>()
                .value
                .asFunction<int Function(Pointer, int, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return creator(retValuePtr);
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) =>
      _indexOfCOMObject(ptr, (value as IInspectable).ptr, index);

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) =>
      _getManyCOMObject(ptr, startIndex, capacity, value.cast());

  late final _iIterable =
      IIterable<T>.fromRawPointer(toInterface(iterableIid), creator: creator);

  @override
  IIterator<T> first() => _iIterable.first();

  @override
  List<T> toList() {
    if (size == 0) return List.unmodifiable(<T>[]);

    final pArray = calloc<COMObject>(size);
    try {
      getMany(0, size, pArray);
      return List.unmodifiable(pArray.toList(creator, length: size));
    } finally {
      free(pArray);
    }
  }
}

class _IVectorViewInt extends IVectorView<int> {
  _IVectorViewInt.fromRawPointer(super.ptr, this.intType, this.iterableIid);

  final IntType intType;
  final String iterableIid;

  @override
  int getAt(int index) => _getAtInt(ptr, intType, index);

  @override
  bool indexOf(int value, Pointer<Uint32> index) =>
      _indexOfInt(ptr, intType, value, index);

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) =>
      _getManyInt(ptr, intType, startIndex, capacity, value);

  late final _iIterable =
      IIterable<int>.fromRawPointer(toInterface(iterableIid), intType: intType);

  @override
  IIterator<int> first() => _iIterable.first();

  @override
  List<int> toList() {
    if (size == 0) return List.unmodifiable(<int>[]);

    switch (intType) {
      case IntType.int16:
        final pArray = calloc<Int16>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case IntType.int64:
        final pArray = calloc<Int64>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case IntType.uint8:
        final pArray = calloc<Uint8>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case IntType.uint16:
        final pArray = calloc<Uint16>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case IntType.uint32:
        final pArray = calloc<Uint32>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case IntType.uint64:
        final pArray = calloc<Uint64>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      default:
        final pArray = calloc<Int32>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
    }
  }
}

class _IVectorViewString extends IVectorView<String> {
  _IVectorViewString.fromRawPointer(super.ptr, this.iterableIid);

  final String iterableIid;

  @override
  String getAt(int index) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  Pointer, Uint32, Pointer<HSTRING>)>>>()
                  .value
                  .asFunction<int Function(Pointer, int, Pointer<HSTRING>)>()(
              ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(String value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer, Int32, Pointer<Uint32>, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(Pointer, int, Pointer<Uint32>,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, hValue, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
      WindowsDeleteString(hValue);
    }
  }

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Uint32, Uint32,
                              Pointer<HSTRING>, Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int, int, Pointer<HSTRING>, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, capacity, value.cast(), retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  late final _iIterable =
      IIterable<String>.fromRawPointer(toInterface(iterableIid));

  @override
  IIterator<String> first() => _iIterable.first();

  @override
  List<String> toList() {
    if (size == 0) return List.unmodifiable(<String>[]);

    final pArray = calloc<HSTRING>(size);
    try {
      getMany(0, size, pArray);
      return List.unmodifiable(pArray.toList(length: size));
    } finally {
      free(pArray);
    }
  }
}

class _IVectorViewUri extends IVectorView<Uri> {
  _IVectorViewUri.fromRawPointer(super.ptr, this.iterableIid);

  final String iterableIid;

  @override
  Uri getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer, Uint32, Pointer<COMObject>)>>>()
                .value
                .asFunction<int Function(Pointer, int, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, index, retValuePtr);

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
  bool indexOf(Uri value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final winrtUri = winrt_uri.Uri.createUri(value.toString());

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, LPVTBL, Pointer<Uint32>,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, LPVTBL, Pointer<Uint32>, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, winrtUri.ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      winrtUri.release();
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) =>
      _getManyCOMObject(ptr, startIndex, capacity, value.cast());

  late final _iIterable =
      IIterable<Uri>.fromRawPointer(toInterface(iterableIid));

  @override
  IIterator<Uri> first() => _iIterable.first();

  @override
  List<Uri> toList() {
    if (size == 0) return List.unmodifiable(<Uri>[]);

    final pArray = calloc<COMObject>(size);
    try {
      getMany(0, size, pArray);
      return List.unmodifiable(pArray
          .toList(winrt_uri.Uri.fromRawPointer, length: size)
          .map((e) => Uri.parse(e.toString())));
    } finally {
      free(pArray);
    }
  }
}

int _getAtInt(Pointer<COMObject> ptr, IntType intType, int index) {
  switch (intType) {
    case IntType.int16:
      return _getAtInt16(ptr, index);
    case IntType.int64:
      return _getAtInt64(ptr, index);
    case IntType.uint8:
      return _getAtUint8(ptr, index);
    case IntType.uint16:
      return _getAtUint16(ptr, index);
    case IntType.uint32:
      return _getAtUint32(ptr, index);
    case IntType.uint64:
      return _getAtUint64(ptr, index);
    default:
      return _getAtInt32(ptr, index);
  }
}

int _getAtInt16(Pointer<COMObject> ptr, int index) {
  final retValuePtr = calloc<Int16>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Int16>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Int16>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getAtInt32(Pointer<COMObject> ptr, int index) {
  final retValuePtr = calloc<Int32>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Int32>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Int32>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getAtInt64(Pointer<COMObject> ptr, int index) {
  final retValuePtr = calloc<Int64>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Int64>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Int64>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getAtUint8(Pointer<COMObject> ptr, int index) {
  final retValuePtr = calloc<Uint8>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint8>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Uint8>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getAtUint16(Pointer<COMObject> ptr, int index) {
  final retValuePtr = calloc<Uint16>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint16>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Uint16>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getAtUint32(Pointer<COMObject> ptr, int index) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint32>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getAtUint64(Pointer<COMObject> ptr, int index) {
  final retValuePtr = calloc<Uint64>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint64>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Uint64>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

bool _indexOfCOMObject(
    Pointer<COMObject> ptr, Pointer<COMObject> value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, LPVTBL, Pointer<Uint32>,
                            Pointer<Bool>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, LPVTBL, Pointer<Uint32>, Pointer<Bool>)>()(
        ptr.ref.lpVtbl, value.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

bool _indexOfInt(
    Pointer<COMObject> ptr, IntType intType, int value, Pointer<Uint32> index) {
  switch (intType) {
    case IntType.int16:
      return _indexOfInt16(ptr, value, index);
    case IntType.int64:
      return _indexOfInt64(ptr, value, index);
    case IntType.uint8:
      return _indexOfUint8(ptr, value, index);
    case IntType.uint16:
      return _indexOfUint16(ptr, value, index);
    case IntType.uint32:
      return _indexOfUint32(ptr, value, index);
    case IntType.uint64:
      return _indexOfUint64(ptr, value, index);
    default:
      return _indexOfInt32(ptr, value, index);
  }
}

bool _indexOfInt16(Pointer<COMObject> ptr, int value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int16, Pointer<Uint32>, Pointer<Bool>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Uint32>, Pointer<Bool>)>()(
        ptr.ref.lpVtbl, value, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

bool _indexOfInt32(Pointer<COMObject> ptr, int value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int32, Pointer<Uint32>, Pointer<Bool>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Uint32>, Pointer<Bool>)>()(
        ptr.ref.lpVtbl, value, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

bool _indexOfInt64(Pointer<COMObject> ptr, int value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int64, Pointer<Uint32>, Pointer<Bool>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Uint32>, Pointer<Bool>)>()(
        ptr.ref.lpVtbl, value, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

bool _indexOfUint8(Pointer<COMObject> ptr, int value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Uint8, Pointer<Uint32>, Pointer<Bool>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int, Pointer<Uint32>, Pointer<Bool>)>()(
        ptr.ref.lpVtbl, value, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

bool _indexOfUint16(Pointer<COMObject> ptr, int value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        Pointer, Uint16, Pointer<Uint32>, Pointer<Bool>)>>>()
        .value
        .asFunction<
            int Function(Pointer, int, Pointer<Uint32>,
                Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

bool _indexOfUint32(Pointer<COMObject> ptr, int value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        Pointer, Uint32, Pointer<Uint32>, Pointer<Bool>)>>>()
        .value
        .asFunction<
            int Function(Pointer, int, Pointer<Uint32>,
                Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

bool _indexOfUint64(Pointer<COMObject> ptr, int value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        Pointer, Uint64, Pointer<Uint32>, Pointer<Bool>)>>>()
        .value
        .asFunction<
            int Function(Pointer, int, Pointer<Uint32>,
                Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyCOMObject(Pointer<COMObject> ptr, int startIndex, int capacity,
    Pointer<COMObject> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Uint32,
                            Pointer<COMObject>, Pointer<Uint32>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int, int, Pointer<COMObject>, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, startIndex, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyInt(Pointer<COMObject> ptr, IntType intType, int startIndex,
    int capacity, Pointer<NativeType> value) {
  switch (intType) {
    case IntType.int16:
      return _getManyInt16(ptr, startIndex, capacity, value.cast());
    case IntType.int64:
      return _getManyInt64(ptr, startIndex, capacity, value.cast());
    case IntType.uint8:
      return _getManyUint8(ptr, startIndex, capacity, value.cast());
    case IntType.uint16:
      return _getManyUint16(ptr, startIndex, capacity, value.cast());
    case IntType.uint32:
      return _getManyUint32(ptr, startIndex, capacity, value.cast());
    case IntType.uint64:
      return _getManyUint64(ptr, startIndex, capacity, value.cast());
    default:
      return _getManyInt32(ptr, startIndex, capacity, value.cast());
  }
}

int _getManyInt16(Pointer<COMObject> ptr, int startIndex, int capacity,
    Pointer<Int16> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr =
        ptr.ref.lpVtbl.value
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint32, Uint32,
                                Pointer<Int16>, Pointer<Uint32>)>>>()
                .value
                .asFunction<
                    int Function(
                        Pointer, int, int, Pointer<Int16>, Pointer<Uint32>)>()(
            ptr.ref.lpVtbl, startIndex, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyInt32(Pointer<COMObject> ptr, int startIndex, int capacity,
    Pointer<Int32> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr =
        ptr.ref.lpVtbl.value
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint32, Uint32,
                                Pointer<Int32>, Pointer<Uint32>)>>>()
                .value
                .asFunction<
                    int Function(
                        Pointer, int, int, Pointer<Int32>, Pointer<Uint32>)>()(
            ptr.ref.lpVtbl, startIndex, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyInt64(Pointer<COMObject> ptr, int startIndex, int capacity,
    Pointer<Int64> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr =
        ptr.ref.lpVtbl.value
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint32, Uint32,
                                Pointer<Int64>, Pointer<Uint32>)>>>()
                .value
                .asFunction<
                    int Function(
                        Pointer, int, int, Pointer<Int64>, Pointer<Uint32>)>()(
            ptr.ref.lpVtbl, startIndex, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyUint8(Pointer<COMObject> ptr, int startIndex, int capacity,
    Pointer<Uint8> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr =
        ptr.ref.lpVtbl.value
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint32, Uint32,
                                Pointer<Uint8>, Pointer<Uint32>)>>>()
                .value
                .asFunction<
                    int Function(
                        Pointer, int, int, Pointer<Uint8>, Pointer<Uint32>)>()(
            ptr.ref.lpVtbl, startIndex, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyUint16(Pointer<COMObject> ptr, int startIndex, int capacity,
    Pointer<Uint16> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr =
        ptr.ref.lpVtbl.value
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint32, Uint32,
                                Pointer<Uint16>, Pointer<Uint32>)>>>()
                .value
                .asFunction<
                    int Function(
                        Pointer, int, int, Pointer<Uint16>, Pointer<Uint32>)>()(
            ptr.ref.lpVtbl, startIndex, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyUint32(Pointer<COMObject> ptr, int startIndex, int capacity,
    Pointer<Uint32> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr =
        ptr.ref.lpVtbl.value
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint32, Uint32,
                                Pointer<Uint32>, Pointer<Uint32>)>>>()
                .value
                .asFunction<
                    int Function(
                        Pointer, int, int, Pointer<Uint32>, Pointer<Uint32>)>()(
            ptr.ref.lpVtbl, startIndex, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

int _getManyUint64(Pointer<COMObject> ptr, int startIndex, int capacity,
    Pointer<Uint64> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr =
        ptr.ref.lpVtbl.value
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint32, Uint32,
                                Pointer<Uint64>, Pointer<Uint32>)>>>()
                .value
                .asFunction<
                    int Function(
                        Pointer, int, int, Pointer<Uint64>, Pointer<Uint32>)>()(
            ptr.ref.lpVtbl, startIndex, capacity, value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}
