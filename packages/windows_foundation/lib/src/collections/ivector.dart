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

/// Represents a random-access collection of elements.
///
/// {@category interface}
abstract class IVector<T> extends IInspectable implements IIterable<T> {
  // vtable begins at 6, is 12 entries long.
  IVector(super.ptr);

  /// Creates an instance of [IVector] from the given [ptr] and [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<T>` interface (e.g.
  /// `'{9ac00304-83ea-5688-87b6-ae38aab65d0b}'`).
  ///
  /// [T] must be of type `int`, `String`, `Uri`, `IInspectable` (e.g.
  /// `StorageFile`) or `WinRTEnum` (e.g. `DeviceClass`).
  ///
  /// [intType] must be specified if [T] is `int`. Supported types are:
  /// [WinRTIntType.int16], [WinRTIntType.int32], [WinRTIntType.int64],
  /// [WinRTIntType.uint8], [WinRTIntType.uint16], [WinRTIntType.uint32],
  /// [WinRTIntType.uint64].
  /// ```dart
  /// final vector =
  ///     IVector<int>.fromRawPointer(ptr, intType: WinRTIntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable`.
  /// ```dart
  /// final vector = IVector<StorageFile>.fromRawPointer(ptr,
  ///     creator: StorageFile.fromRawPointer,
  ///     iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}');
  /// ```
  ///
  /// [enumCreator] and [intType] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final vector = IVector<DeviceClass>.fromRawPointer(ptr,
  ///     enumCreator: DeviceClass.from, intType: WinRTIntType.int32,
  ///     iterableIid: '{47d4be05-58f1-522e-81c6-975eb4131bb9}');
  /// ```
  factory IVector.fromRawPointer(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
    WinRTIntType? intType,
  }) {
    if (isSubtypeOfInspectable<T>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IVectorInspectable.fromRawPointer(ptr, creator, iterableIid);
    }

    if (T == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      return _IVectorInt.fromRawPointer(ptr, intType, iterableIid)
          as IVector<T>;
    }

    if (T == String) {
      return _IVectorString.fromRawPointer(ptr, iterableIid) as IVector<T>;
    }

    if (T == Uri) {
      return _IVectorUri.fromRawPointer(ptr, iterableIid) as IVector<T>;
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');
      if (intType == null) throw ArgumentError.notNull('intType');
      return _IVectorEnum.fromRawPointer(
          ptr, enumCreator, intType, iterableIid);
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

  /// Returns an immutable view of the vector.
  List<T> getView();

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
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, index);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Appends an item to the end of the vector.
  void append(T value);

  /// Removes the last item from the vector.
  void removeAtEnd() {
    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Removes all items from the vector.
  void clear() {
    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Retrieves multiple items from the the vector beginning at the given index.
  int getMany(int startIndex, int capacity, Pointer<NativeType> value);

  /// Replaces all the items in the vector with the specified items.
  void replaceAll(List<T> value);

  @override
  IIterator<T> first();

  /// Creates an unmodifiable [List] from the current [IVector] instance.
  List<T> toList();
}

class _IVectorEnum<T> extends IVector<T> {
  _IVectorEnum.fromRawPointer(
      super.ptr, this.enumCreator, this.intType, this.iterableIid);

  final T Function(int) enumCreator;
  final WinRTIntType intType;
  final String iterableIid;

  @override
  T getAt(int index) => enumCreator(_getAtInt(ptr, intType, index));

  @override
  List<T> getView() =>
      _getView(ptr, iterableIid, enumCreator: enumCreator, intType: intType);

  @override
  bool indexOf(T value, Pointer<Uint32> index) =>
      _indexOfInt(ptr, intType, (value as WinRTEnum).value, index);

  @override
  void setAt(int index, T value) =>
      _setAtInt(ptr, intType, index, (value as WinRTEnum).value);

  @override
  void insertAt(int index, T value) =>
      _insertAtInt(ptr, intType, index, (value as WinRTEnum).value);

  @override
  void append(T value) => _appendInt(ptr, intType, (value as WinRTEnum).value);

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) =>
      _getManyInt(ptr, intType, startIndex, capacity, value);

  @override
  void replaceAll(List<T> value) {
    switch (intType) {
      case WinRTIntType.uint32:
        final pArray = calloc<Uint32>(value.length);
        for (var i = 0; i < value.length; i++) {
          pArray[i] = (value.elementAt(i) as WinRTEnum).value;
        }

        try {
          final hr = ptr.ref.vtable
                  .elementAt(17)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  Pointer, Uint32, Pointer<Uint32>)>>>()
                  .value
                  .asFunction<int Function(Pointer, int, Pointer<Uint32>)>()(
              ptr.ref.lpVtbl, value.length, pArray);

          if (FAILED(hr)) throw WindowsException(hr);
        } finally {
          free(pArray);
        }
        break;
      default:
        final pArray = calloc<Int32>(value.length);
        for (var i = 0; i < value.length; i++) {
          pArray[i] = (value.elementAt(i) as WinRTEnum).value;
        }

        try {
          final hr =
              ptr.ref.vtable
                      .elementAt(17)
                      .cast<
                          Pointer<
                              NativeFunction<
                                  HRESULT Function(
                                      Pointer, Uint32, Pointer<Int32>)>>>()
                      .value
                      .asFunction<int Function(Pointer, int, Pointer<Int32>)>()(
                  ptr.ref.lpVtbl, value.length, pArray);

          if (FAILED(hr)) throw WindowsException(hr);
        } finally {
          free(pArray);
        }
    }
  }

  late final _iIterable = IIterable<T>.fromRawPointer(toInterface(iterableIid),
      enumCreator: enumCreator, intType: intType);

  @override
  IIterator<T> first() => _iIterable.first();

  @override
  List<T> toList() {
    if (size == 0) return List.unmodifiable(<T>[]);

    // The only valid types for enums are Int32 or UInt32.
    // See https://docs.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#enums
    switch (intType) {
      case WinRTIntType.uint32:
        final pArray = calloc<Uint32>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(
              pArray.toList(length: size).map(enumCreator));
        } finally {
          free(pArray);
        }
      default:
        final pArray = calloc<Int32>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(
              pArray.toList(length: size).map(enumCreator));
        } finally {
          free(pArray);
        }
    }
  }
}

class _IVectorInspectable<T> extends IVector<T> {
  _IVectorInspectable.fromRawPointer(super.ptr, this.creator, this.iterableIid);

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
  List<T> getView() => _getView(ptr, iterableIid, creator: creator);

  @override
  bool indexOf(T value, Pointer<Uint32> index) =>
      _indexOfCOMObject(ptr, (value as IInspectable).ptr, index);

  @override
  void setAt(int index, T value) {
    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint32, LPVTBL)>>>()
                .value
                .asFunction<int Function(Pointer, int, LPVTBL)>()(
            ptr.ref.lpVtbl, index, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint32, LPVTBL)>>>()
                .value
                .asFunction<int Function(Pointer, int, LPVTBL)>()(
            ptr.ref.lpVtbl, index, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<Pointer<NativeFunction<HRESULT Function(Pointer, LPVTBL)>>>()
            .value
            .asFunction<int Function(Pointer, LPVTBL)>()(
        ptr.ref.lpVtbl, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) =>
      _getManyCOMObject(ptr, startIndex, capacity, value.cast());

  @override
  void replaceAll(List<T> value) {
    final list = value as List<IInspectable>;
    final pArray = calloc<COMObject>(list.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = list.elementAt(i).ptr.ref;
    }

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(17)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  Pointer, Uint32, Pointer<COMObject>)>>>()
                  .value
                  .asFunction<int Function(Pointer, int, Pointer<COMObject>)>()(
              ptr.ref.lpVtbl, value.length, pArray);

      if (FAILED(hr)) {
        free(pArray);
        throw WindowsException(hr);
      }
    } finally {
      free(pArray);
    }
  }

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

class _IVectorInt extends IVector<int> {
  _IVectorInt.fromRawPointer(super.ptr, this.intType, this.iterableIid);

  final WinRTIntType intType;
  final String iterableIid;

  @override
  int getAt(int index) => _getAtInt(ptr, intType, index);

  @override
  List<int> getView() => _getView(ptr, iterableIid, intType: intType);

  @override
  bool indexOf(int value, Pointer<Uint32> index) =>
      _indexOfInt(ptr, intType, value, index);

  @override
  void setAt(int index, int value) => _setAtInt(ptr, intType, index, value);

  @override
  void insertAt(int index, int value) =>
      _insertAtInt(ptr, intType, index, value);

  @override
  void append(int value) => _appendInt(ptr, intType, value);

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) =>
      _getManyInt(ptr, intType, startIndex, capacity, value);

  @override
  void replaceAll(List<int> value) => _replaceAllInt(ptr, intType, value);

  late final _iIterable =
      IIterable<int>.fromRawPointer(toInterface(iterableIid), intType: intType);

  @override
  IIterator<int> first() => _iIterable.first();

  @override
  List<int> toList() {
    if (size == 0) return List.unmodifiable(<int>[]);

    switch (intType) {
      case WinRTIntType.int16:
        final pArray = calloc<Int16>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case WinRTIntType.int64:
        final pArray = calloc<Int64>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case WinRTIntType.uint8:
        final pArray = calloc<Uint8>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case WinRTIntType.uint16:
        final pArray = calloc<Uint16>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case WinRTIntType.uint32:
        final pArray = calloc<Uint32>(size);
        try {
          getMany(0, size, pArray);
          return List.unmodifiable(pArray.toList(length: size));
        } finally {
          free(pArray);
        }
      case WinRTIntType.uint64:
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

class _IVectorString extends IVector<String> {
  _IVectorString.fromRawPointer(super.ptr, this.iterableIid);

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
  List<String> getView() => _getView(ptr, iterableIid);

  @override
  bool indexOf(String value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer, HSTRING, Pointer<Uint32>, Pointer<Bool>)>>>()
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
  void setAt(int index, String value) {
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Uint32, HSTRING)>>>()
          .value
          .asFunction<
              int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, hValue);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hValue);
    }
  }

  @override
  void insertAt(int index, String value) {
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Uint32, HSTRING)>>>()
          .value
          .asFunction<
              int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, hValue);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hValue);
    }
  }

  @override
  void append(String value) {
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(13)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, HSTRING)>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hValue);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hValue);
    }
  }

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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

  @override
  void replaceAll(List<String> value) {
    final handles = <int>[];
    final pArray = calloc<HSTRING>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = convertToHString(value.elementAt(i));
      handles.add(pArray[i]);
    }

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(17)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  Pointer, Uint32, Pointer<HSTRING>)>>>()
                  .value
                  .asFunction<int Function(Pointer, int, Pointer<HSTRING>)>()(
              ptr.ref.lpVtbl, value.length, pArray);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(pArray);
      handles.forEach(WindowsDeleteString);
    }
  }

  late final _iIterable =
      IIterable<String>.fromRawPointer(toInterface(iterableIid));

  @override
  IIterator<String> first() => _iIterable.first();

  @override
  List<String> toList() {
    if (size == 0) return List.unmodifiable([]);

    final pArray = calloc<HSTRING>(size);
    try {
      getMany(0, size, pArray);
      return List.unmodifiable(pArray.toList(length: size));
    } finally {
      free(pArray);
    }
  }
}

class _IVectorUri extends IVector<Uri> {
  _IVectorUri.fromRawPointer(super.ptr, this.iterableIid);

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
  List<Uri> getView() => _getView(ptr, iterableIid);

  @override
  bool indexOf(Uri value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final winrtUri = winrt_uri.Uri.createUri(value.toString());

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
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
  void setAt(int index, Uri value) {
    final winrtUri = winrt_uri.Uri.createUri(value.toString());

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Uint32, LPVTBL)>>>()
          .value
          .asFunction<
              int Function(Pointer, int,
                  LPVTBL)>()(ptr.ref.lpVtbl, index, winrtUri.ptr.ref.lpVtbl);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      winrtUri.release();
    }
  }

  @override
  void insertAt(int index, Uri value) {
    final winrtUri = winrt_uri.Uri.createUri(value.toString());

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Uint32, LPVTBL)>>>()
          .value
          .asFunction<
              int Function(Pointer, int,
                  LPVTBL)>()(ptr.ref.lpVtbl, index, winrtUri.ptr.ref.lpVtbl);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      winrtUri.release();
    }
  }

  @override
  void append(Uri value) {
    final winrtUri = winrt_uri.Uri.createUri(value.toString());

    try {
      final hr = ptr.ref.vtable
          .elementAt(13)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, LPVTBL)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, LPVTBL)>()(ptr.ref.lpVtbl, winrtUri.ptr.ref.lpVtbl);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      winrtUri.release();
    }
  }

  @override
  int getMany(int startIndex, int capacity, Pointer<NativeType> value) =>
      _getManyCOMObject(ptr, startIndex, capacity, value.cast());

  @override
  void replaceAll(List<Uri> value) {
    final winrtUris = <winrt_uri.Uri>[];
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      final winrtUri = winrt_uri.Uri.createUri(value[i].toString());
      pArray[i] = winrtUri.ptr.ref;
      winrtUris.add(winrtUri);
    }

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(17)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  Pointer, Uint32, Pointer<COMObject>)>>>()
                  .value
                  .asFunction<int Function(Pointer, int, Pointer<COMObject>)>()(
              ptr.ref.lpVtbl, value.length, pArray);

      if (FAILED(hr)) {
        free(pArray);
        throw WindowsException(hr);
      }
    } finally {
      for (final winrtUri in winrtUris) {
        winrtUri.release();
      }
      free(pArray);
    }
  }

  late final _iIterable =
      IIterable<Uri>.fromRawPointer(toInterface(iterableIid));

  @override
  IIterator<Uri> first() => _iIterable.first();

  @override
  List<Uri> toList() {
    if (size == 0) return List.unmodifiable([]);

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

int _getAtInt(Pointer<COMObject> ptr, WinRTIntType intType, int index) {
  switch (intType) {
    case WinRTIntType.int16:
      return _getAtInt16(ptr, index);
    case WinRTIntType.int64:
      return _getAtInt64(ptr, index);
    case WinRTIntType.uint8:
      return _getAtUint8(ptr, index);
    case WinRTIntType.uint16:
      return _getAtUint16(ptr, index);
    case WinRTIntType.uint32:
      return _getAtUint32(ptr, index);
    case WinRTIntType.uint64:
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

List<T> _getView<T>(
  Pointer<COMObject> ptr,
  String iterableIid, {
  T Function(Pointer<COMObject>)? creator,
  T Function(int)? enumCreator,
  WinRTIntType? intType,
}) {
  final retValuePtr = calloc<COMObject>();

  final hr = ptr.ref.vtable
      .elementAt(8)
      .cast<
          Pointer<
              NativeFunction<HRESULT Function(Pointer, Pointer<COMObject>)>>>()
      .value
      .asFunction<
          int Function(
              Pointer, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

  if (FAILED(hr)) {
    free(retValuePtr);
    throw WindowsException(hr);
  }

  final vectorView = IVectorView<T>.fromRawPointer(
    retValuePtr,
    creator: creator,
    enumCreator: enumCreator,
    iterableIid: iterableIid,
    intType: intType,
  );
  final list = vectorView.toList();
  vectorView.release();

  return list;
}

bool _indexOfCOMObject(
    Pointer<COMObject> ptr, Pointer<COMObject> value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, LPVTBL, Pointer<Uint32>,
                            Pointer<Bool>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, LPVTBL, Pointer<Uint32>, Pointer<Bool>)>()(
        ptr.ref.lpVtbl,
        (value as IInspectable).ptr.ref.lpVtbl,
        index,
        retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.value;
  } finally {
    free(retValuePtr);
  }
}

bool _indexOfInt(Pointer<COMObject> ptr, WinRTIntType intType, int value,
    Pointer<Uint32> index) {
  switch (intType) {
    case WinRTIntType.int16:
      return _indexOfInt16(ptr, value, index);
    case WinRTIntType.int64:
      return _indexOfInt64(ptr, value, index);
    case WinRTIntType.uint8:
      return _indexOfUint8(ptr, value, index);
    case WinRTIntType.uint16:
      return _indexOfUint16(ptr, value, index);
    case WinRTIntType.uint32:
      return _indexOfUint32(ptr, value, index);
    case WinRTIntType.uint64:
      return _indexOfUint64(ptr, value, index);
    default:
      return _indexOfInt32(ptr, value, index);
  }
}

bool _indexOfInt16(Pointer<COMObject> ptr, int value, Pointer<Uint32> index) {
  final retValuePtr = calloc<Bool>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(9)
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
            .elementAt(9)
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
            .elementAt(9)
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
            .elementAt(9)
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
        .elementAt(9)
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
        .elementAt(9)
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
        .elementAt(9)
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

void _setAtInt(
    Pointer<COMObject> ptr, WinRTIntType intType, int index, int value) {
  switch (intType) {
    case WinRTIntType.int16:
      return _setAtInt16(ptr, index, value);
    case WinRTIntType.int64:
      return _setAtInt64(ptr, index, value);
    case WinRTIntType.uint8:
      return _setAtUint8(ptr, index, value);
    case WinRTIntType.uint16:
      return _setAtUint16(ptr, index, value);
    case WinRTIntType.uint32:
      return _setAtUint32(ptr, index, value);
    case WinRTIntType.uint64:
      return _setAtUint64(ptr, index, value);
    default:
      return _setAtInt32(ptr, index, value);
  }
}

void _setAtInt16(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(10)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Int16)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _setAtInt32(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(10)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Int32)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _setAtInt64(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(10)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Int64)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _setAtUint8(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(10)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Uint8)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _setAtUint16(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(10)
      .cast<
          Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Uint16)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _setAtUint32(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(10)
      .cast<
          Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Uint32)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _setAtUint64(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(10)
      .cast<
          Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Uint64)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _insertAtInt(
    Pointer<COMObject> ptr, WinRTIntType intType, int index, int value) {
  switch (intType) {
    case WinRTIntType.int16:
      return _insertAtInt16(ptr, index, value);
    case WinRTIntType.int64:
      return _insertAtInt64(ptr, index, value);
    case WinRTIntType.uint8:
      return _insertAtUint8(ptr, index, value);
    case WinRTIntType.uint16:
      return _insertAtUint16(ptr, index, value);
    case WinRTIntType.uint32:
      return _insertAtUint32(ptr, index, value);
    case WinRTIntType.uint64:
      return _insertAtUint64(ptr, index, value);
    default:
      return _insertAtInt32(ptr, index, value);
  }
}

void _insertAtInt16(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(11)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Int16)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _insertAtInt32(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(11)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Int32)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _insertAtInt64(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(11)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Int64)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _insertAtUint8(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(11)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Uint8)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _insertAtUint16(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(11)
      .cast<
          Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Uint16)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _insertAtUint32(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(11)
      .cast<
          Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Uint32)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _insertAtUint64(Pointer<COMObject> ptr, int index, int value) {
  final hr = ptr.ref.vtable
      .elementAt(11)
      .cast<
          Pointer<NativeFunction<HRESULT Function(Pointer, Uint32, Uint64)>>>()
      .value
      .asFunction<
          int Function(Pointer, int, int)>()(ptr.ref.lpVtbl, index, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _appendInt(Pointer<COMObject> ptr, WinRTIntType intType, int value) {
  switch (intType) {
    case WinRTIntType.int16:
      return _appendInt16(ptr, value);
    case WinRTIntType.int64:
      return _appendInt64(ptr, value);
    case WinRTIntType.uint8:
      return _appendUint8(ptr, value);
    case WinRTIntType.uint16:
      return _appendUint16(ptr, value);
    case WinRTIntType.uint32:
      return _appendUint32(ptr, value);
    case WinRTIntType.uint64:
      return _appendUint64(ptr, value);
    default:
      return _appendInt32(ptr, value);
  }
}

void _appendInt16(Pointer<COMObject> ptr, int value) {
  final hr = ptr.ref.vtable
      .elementAt(13)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int16)>>>()
      .value
      .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _appendInt32(Pointer<COMObject> ptr, int value) {
  final hr = ptr.ref.vtable
      .elementAt(13)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int32)>>>()
      .value
      .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _appendInt64(Pointer<COMObject> ptr, int value) {
  final hr = ptr.ref.vtable
      .elementAt(13)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int64)>>>()
      .value
      .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _appendUint8(Pointer<COMObject> ptr, int value) {
  final hr = ptr.ref.vtable
      .elementAt(13)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint8)>>>()
      .value
      .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _appendUint16(Pointer<COMObject> ptr, int value) {
  final hr = ptr.ref.vtable
      .elementAt(13)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint16)>>>()
      .value
      .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _appendUint32(Pointer<COMObject> ptr, int value) {
  final hr = ptr.ref.vtable
      .elementAt(13)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32)>>>()
      .value
      .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

void _appendUint64(Pointer<COMObject> ptr, int value) {
  final hr = ptr.ref.vtable
      .elementAt(13)
      .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint64)>>>()
      .value
      .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value);

  if (FAILED(hr)) throw WindowsException(hr);
}

int _getManyCOMObject(Pointer<COMObject> ptr, int startIndex, int capacity,
    Pointer<COMObject> value) {
  final retValuePtr = calloc<Uint32>();

  try {
    final hr = ptr.ref.vtable
            .elementAt(16)
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

int _getManyInt(Pointer<COMObject> ptr, WinRTIntType intType, int startIndex,
    int capacity, Pointer<NativeType> value) {
  switch (intType) {
    case WinRTIntType.int16:
      return _getManyInt16(ptr, startIndex, capacity, value.cast());
    case WinRTIntType.int64:
      return _getManyInt64(ptr, startIndex, capacity, value.cast());
    case WinRTIntType.uint8:
      return _getManyUint8(ptr, startIndex, capacity, value.cast());
    case WinRTIntType.uint16:
      return _getManyUint16(ptr, startIndex, capacity, value.cast());
    case WinRTIntType.uint32:
      return _getManyUint32(ptr, startIndex, capacity, value.cast());
    case WinRTIntType.uint64:
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
                .elementAt(16)
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
                .elementAt(16)
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
                .elementAt(16)
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
                .elementAt(16)
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
                .elementAt(16)
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
                .elementAt(16)
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
                .elementAt(16)
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

void _replaceAllInt(
    Pointer<COMObject> ptr, WinRTIntType intType, List<int> value) {
  switch (intType) {
    case WinRTIntType.int16:
      return _replaceAllInt16(ptr, value);
    case WinRTIntType.int64:
      return _replaceAllInt64(ptr, value);
    case WinRTIntType.uint8:
      return _replaceAllUint8(ptr, value);
    case WinRTIntType.uint16:
      return _replaceAllUint16(ptr, value);
    case WinRTIntType.uint32:
      return _replaceAllUint32(ptr, value);
    case WinRTIntType.uint64:
      return _replaceAllUint64(ptr, value);
    default:
      return _replaceAllInt32(ptr, value);
  }
}

void _replaceAllInt16(Pointer<COMObject> ptr, List<int> value) {
  final pArray = calloc<Int16>(value.length);
  for (var i = 0; i < value.length; i++) {
    pArray[i] = value.elementAt(i);
  }

  try {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Int16>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Int16>)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  } finally {
    free(pArray);
  }
}

void _replaceAllInt32(Pointer<COMObject> ptr, List<int> value) {
  final pArray = calloc<Int32>(value.length);
  for (var i = 0; i < value.length; i++) {
    pArray[i] = value.elementAt(i);
  }

  try {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Int32>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Int32>)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  } finally {
    free(pArray);
  }
}

void _replaceAllInt64(Pointer<COMObject> ptr, List<int> value) {
  final pArray = calloc<Int64>(value.length);
  for (var i = 0; i < value.length; i++) {
    pArray[i] = value.elementAt(i);
  }

  try {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Int64>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Int64>)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  } finally {
    free(pArray);
  }
}

void _replaceAllUint8(Pointer<COMObject> ptr, List<int> value) {
  final pArray = calloc<Uint8>(value.length);
  for (var i = 0; i < value.length; i++) {
    pArray[i] = value.elementAt(i);
  }

  try {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint8>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Uint8>)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  } finally {
    free(pArray);
  }
}

void _replaceAllUint16(Pointer<COMObject> ptr, List<int> value) {
  final pArray = calloc<Uint16>(value.length);
  for (var i = 0; i < value.length; i++) {
    pArray[i] = value.elementAt(i);
  }

  try {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint16>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Uint16>)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  } finally {
    free(pArray);
  }
}

void _replaceAllUint32(Pointer<COMObject> ptr, List<int> value) {
  final pArray = calloc<Uint32>(value.length);
  for (var i = 0; i < value.length; i++) {
    pArray[i] = value.elementAt(i);
  }

  try {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint32>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Uint32>)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  } finally {
    free(pArray);
  }
}

void _replaceAllUint64(Pointer<COMObject> ptr, List<int> value) {
  final pArray = calloc<Uint64>(value.length);
  for (var i = 0; i < value.length; i++) {
    pArray[i] = value.elementAt(i);
  }

  try {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32, Pointer<Uint64>)>>>()
            .value
            .asFunction<int Function(Pointer, int, Pointer<Uint64>)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);
  } finally {
    free(pArray);
  }
}
