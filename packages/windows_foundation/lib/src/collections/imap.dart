// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_media/windows_media.dart';

import '../../internal.dart';
import '../helpers.dart';
import '../iinspectable.dart';
import '../types.dart';
import '../winrt_enum.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ikeyvaluepair.dart';
import 'imapview.dart';
import 'propertyset.dart';
import 'stringmap.dart';

/// Represents an associative collection, also known as a map or a dictionary.
///
/// {@category interface}
abstract class IMap<K, V> extends IInspectable
    implements IIterable<IKeyValuePair<K, V>> {
  // vtable begins at 6, is 7 entries long.
  IMap(super.ptr);

  /// Creates an empty [IMap].
  ///
  /// [K] must be of type `Guid` or `String` and [V] must be of type
  /// `Object?` or `String`.
  factory IMap.empty() {
    if (K == Guid && isNullableObjectType<V>()) {
      final mediaPropertySet = MediaPropertySet();
      final mapPtr = mediaPropertySet.toInterface(IID_IMap_Guid_Object);
      mediaPropertySet.release();

      return IMap.fromRawPointer(mapPtr,
          iterableIid: IID_IIterable_IKeyValuePair_Guid_Object);
    }

    if (K == String) {
      if (V == String) {
        final stringMap = StringMap();
        final mapPtr = stringMap.toInterface(IID_IMap_String_String);
        stringMap.release();

        return IMap.fromRawPointer(mapPtr,
            iterableIid: IID_IIterable_IKeyValuePair_String_String);
      }

      if (isNullableObjectType<V>()) {
        final propertySet = PropertySet();
        final mapPtr = propertySet.toInterface(IID_IMap_String_Object);
        propertySet.release();

        return IMap.fromRawPointer(mapPtr,
            iterableIid: IID_IIterable_IKeyValuePair_String_Object);
      }
    }

    throw ArgumentError('Unsupported key-value pair: IMap<$K, $V>');
  }

  /// Creates an [IMap] with the same keys and values as [other].
  ///
  /// [other] must be of type `Map<Guid, Object?>`, `Map<String, Object?>`,
  /// or `Map<String, String>`.
  factory IMap.fromMap(Map<K, V> other) {
    final map = IMap<K, V>.empty();
    other.forEach(map.insert);
    return map;
  }

  /// Creates an instance of [IMap] from the given [ptr] and [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<IKeyValuePair<K, V>>`
  /// interface (e.g. `'{fe2f3d47-5d47-5499-8374-430c7cda0204}'`).
  ///
  /// [K] must be of type `Guid`, `int`, `String`, or `WinRTEnum` (e.g.
  /// `PedometerStepKind`).
  ///
  /// [V] must be of type `Object?`, `String`, or `IInspectable?` (e.g.
  /// `IJsonValue`).
  ///
  /// [creator] must be specified if [V] is a `IInspectable?`.
  /// ```dart
  /// final map = IMap<String, IJsonValue?>.fromRawPointer(ptr,
  ///     creator: IJsonValue.fromRawPointer,
  ///     iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}');
  /// ```
  ///
  /// [enumCreator] must be specified if [V] is `WinRTEnum`.
  /// ```dart
  /// final map = IMap<String, ChatMessageStatus>.fromRawPointer(ptr,
  ///     enumCreator: ChatMessageStatus.from,
  ///     iterableIid: '{57d87c13-48e9-546f-9b4e-a3906e1e7c24}');
  /// ```
  factory IMap.fromRawPointer(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    V Function(Pointer<COMObject>)? creator,
    K Function(int)? enumKeyCreator,
    V Function(int)? enumCreator,
  }) {
    if (K == Guid) {
      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IMapGuidInspectable<V>.fromRawPointer(ptr, creator, iterableIid)
            as IMap<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapGuidObject.fromRawPointer(ptr, iterableIid) as IMap<K, V>;
      }
    }

    if (K == int && isSubtypeOfInspectable<V>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IMapIntInspectable<V>.fromRawPointer(ptr, creator, iterableIid)
          as IMap<K, V>;
    }

    if (K == String) {
      if (V == String) {
        return _IMapStringString.fromRawPointer(ptr, iterableIid) as IMap<K, V>;
      }

      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IMapStringInspectable<V>.fromRawPointer(
            ptr, creator, iterableIid) as IMap<K, V>;
      }

      if (isSubtypeOfWinRTEnum<V>()) {
        if (enumCreator == null) throw ArgumentError.notNull('enumCreator');
        return _IMapStringEnum<V>.fromRawPointer(ptr, enumCreator, iterableIid)
            as IMap<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapStringObject.fromRawPointer(ptr, iterableIid) as IMap<K, V>;
      }
    }

    if (isSubtypeOfWinRTEnum<K>() && isSubtypeOfInspectable<V>()) {
      if (enumKeyCreator == null) throw ArgumentError.notNull('enumKeyCreator');
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IMapEnumInspectable.fromRawPointer(
          ptr, creator, enumKeyCreator, iterableIid);
    }

    throw UnsupportedError('Unsupported key-value pair: ($K, $V)');
  }

  /// Returns the item at the specified key in the map.
  V lookup(K key);

  /// Gets the number of items in the map.
  int get size {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
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

  /// Determines whether the map contains the specified key.
  bool hasKey(K value);

  /// Returns an immutable view of the map.
  Map<K, V> getView();

  /// Inserts or replaces an item in the map.
  bool insert(K key, V value);

  /// Removes an item from the map.
  void remove(K key);

  /// Removes all items from the map.
  void clear() {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer)>>>()
        .value
        .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  IIterator<IKeyValuePair<K, V>> first();

  /// Creates an unmodifiable [Map] from the current [IMap] instance.
  Map<K, V> toMap();
}

class _IMapEnumInspectable<K, V> extends IMap<K, V> {
  _IMapEnumInspectable.fromRawPointer(
      super.ptr, this.creator, this.enumKeyCreator, this.iterableIid);

  final V Function(Pointer<COMObject>) creator;
  final K Function(int) enumKeyCreator;
  final String iterableIid;

  IKeyValuePair<K, V> _iterableCreator(Pointer<COMObject> ptr) =>
      IKeyValuePair.fromRawPointer(ptr,
          creator: creator, enumKeyCreator: enumKeyCreator);

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.lpVtbl.value
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer, Int32, Pointer<COMObject>)>>>()
                .value
                .asFunction<int Function(Pointer, int, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(K value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Int32, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, (value as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  Map<K, V> getView() =>
      _getView(ptr, iterableIid, enumKeyCreator: enumKeyCreator);

  @override
  bool insert(K key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, Int32, LPVTBL, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, LPVTBL, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          (key as WinRTEnum).value,
          (value as IInspectable).ptr.ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(K key) {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(11)
            .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int32)>>>()
            .value
            .asFunction<int Function(Pointer, int)>()(
        ptr.ref.lpVtbl, (key as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  late final _iIterable = IIterable<IKeyValuePair<K, V>>.fromRawPointer(
      toInterface(iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<K, V>> first() => _iIterable.first();

  @override
  Map<K, V> toMap() =>
      size == 0 ? Map.unmodifiable({}) : _toMap(first(), length: size);
}

class _IMapGuidInspectable<V> extends IMap<Guid, V> {
  _IMapGuidInspectable.fromRawPointer(
      super.ptr, this.creator, this.iterableIid);

  final V Function(Pointer<COMObject>) creator;
  final String iterableIid;

  IKeyValuePair<Guid, V> _iterableCreator(Pointer<COMObject> ptr) =>
      IKeyValuePair.fromRawPointer(ptr, creator: creator);

  @override
  V lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final nativeGuidPtr = key.toNativeGUID();

    final hr = ptr.ref.lpVtbl.value
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, GUID, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, GUID, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, nativeGuidPtr.ref, retValuePtr);

    if (FAILED(hr)) {
      free(nativeGuidPtr);
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(nativeGuidPtr);

    return creator(retValuePtr);
  }

  @override
  bool hasKey(Guid value) {
    final retValuePtr = calloc<Bool>();
    final nativeGuidPtr = value.toNativeGUID();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, GUID, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, GUID, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, nativeGuidPtr.ref, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(nativeGuidPtr);
      free(retValuePtr);
    }
  }

  @override
  Map<Guid, V> getView() => _getView(ptr, iterableIid, creator: creator);

  @override
  bool insert(Guid key, V value) {
    final retValuePtr = calloc<Bool>();
    final nativeGuidPtr = key.toNativeGUID();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, GUID, LPVTBL, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, GUID, LPVTBL, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          nativeGuidPtr.ref,
          value == null ? nullptr : boxValue(value).ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(nativeGuidPtr);
      free(retValuePtr);
    }
  }

  @override
  void remove(Guid key) {
    final nativeGuidPtr = key.toNativeGUID();
    final hr = ptr.ref.lpVtbl.value
            .elementAt(11)
            .cast<Pointer<NativeFunction<HRESULT Function(Pointer, GUID)>>>()
            .value
            .asFunction<int Function(Pointer, GUID)>()(
        ptr.ref.lpVtbl, nativeGuidPtr.ref);

    free(nativeGuidPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  late final _iIterable = IIterable<IKeyValuePair<Guid, V>>.fromRawPointer(
      toInterface(iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<Guid, V>> first() => _iIterable.first();

  @override
  Map<Guid, V> toMap() =>
      size == 0 ? Map.unmodifiable({}) : _toMap(first(), length: size);
}

class _IMapGuidObject extends IMap<Guid, Object?> {
  _IMapGuidObject.fromRawPointer(super.ptr, this.iterableIid);

  final String iterableIid;

  @override
  Object? lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final nativeGuidPtr = key.toNativeGUID();

    final hr = ptr.ref.lpVtbl.value
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, GUID, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, GUID, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, nativeGuidPtr.ref, retValuePtr);

    if (FAILED(hr)) {
      free(nativeGuidPtr);
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(nativeGuidPtr);

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromRawPointer(retValuePtr).value;
  }

  @override
  bool hasKey(Guid value) {
    final retValuePtr = calloc<Bool>();
    final nativeGuidPtr = value.toNativeGUID();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, GUID, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, GUID, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, nativeGuidPtr.ref, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(nativeGuidPtr);
      free(retValuePtr);
    }
  }

  @override
  Map<Guid, Object?> getView() => _getView(ptr, iterableIid);

  @override
  bool insert(Guid key, Object? value) {
    final retValuePtr = calloc<Bool>();
    final nativeGuidPtr = key.toNativeGUID();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, GUID, LPVTBL, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, GUID, LPVTBL, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          nativeGuidPtr.ref,
          value == null ? nullptr : boxValue(value).ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(nativeGuidPtr);
      free(retValuePtr);
    }
  }

  @override
  void remove(Guid key) {
    final nativeGuidPtr = key.toNativeGUID();
    final hr = ptr.ref.lpVtbl.value
            .elementAt(11)
            .cast<Pointer<NativeFunction<HRESULT Function(Pointer, GUID)>>>()
            .value
            .asFunction<int Function(Pointer, GUID)>()(
        ptr.ref.lpVtbl, nativeGuidPtr.ref);

    free(nativeGuidPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  late final _iIterable =
      IIterable<IKeyValuePair<Guid, Object?>>.fromRawPointer(
          toInterface(iterableIid),
          creator: IKeyValuePair.fromRawPointer);

  @override
  IIterator<IKeyValuePair<Guid, Object?>> first() => _iIterable.first();

  @override
  Map<Guid, Object?> toMap() =>
      size == 0 ? Map.unmodifiable({}) : _toMap(first(), length: size);
}

class _IMapIntInspectable<V> extends IMap<int, V> {
  _IMapIntInspectable.fromRawPointer(super.ptr, this.creator, this.iterableIid);

  final V Function(Pointer<COMObject>) creator;
  final String iterableIid;

  IKeyValuePair<int, V> _iterableCreator(Pointer<COMObject> ptr) =>
      IKeyValuePair.fromRawPointer(ptr, creator: creator);

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.lpVtbl.value
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer, Uint32, Pointer<COMObject>)>>>()
                .value
                .asFunction<int Function(Pointer, int, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(int value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Uint32, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  Map<int, V> getView() => _getView(ptr, iterableIid);

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, Uint32, LPVTBL, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, LPVTBL, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          key,
          (value as IInspectable).ptr.ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Uint32)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  late final _iIterable = IIterable<IKeyValuePair<int, V>>.fromRawPointer(
      toInterface(iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<int, V>> first() => _iIterable.first();

  @override
  Map<int, V> toMap() =>
      size == 0 ? Map.unmodifiable({}) : _toMap(first(), length: size);
}

class _IMapStringEnum<V> extends IMap<String, V> {
  _IMapStringEnum.fromRawPointer(super.ptr, this.enumCreator, this.iterableIid);

  final V Function(int) enumCreator;
  final String iterableIid;

  IKeyValuePair<String, V> _iterableCreator(Pointer<COMObject> ptr) =>
      IKeyValuePair.fromRawPointer(ptr, enumCreator: enumCreator);

  @override
  V lookup(String key) {
    final retValuePtr = calloc<Int32>();
    final hKey = convertToHString(key);

    try {
      final hr =
          ptr.ref.lpVtbl.value
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  Pointer, HSTRING, Pointer<Int32>)>>>()
                  .value
                  .asFunction<int Function(Pointer, int, Pointer<Int32>)>()(
              ptr.ref.lpVtbl, hKey, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      WindowsDeleteString(hKey);
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String value) {
    final retValuePtr = calloc<Bool>();
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, HSTRING, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, hValue, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
      WindowsDeleteString(hValue);
    }
  }

  @override
  Map<String, V> getView() =>
      _getView(ptr, iterableIid, enumCreator: enumCreator);

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();
    final hKey = convertToHString(key);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, HSTRING, Int32, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, int, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, hKey, (value as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(hKey);
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hKey = convertToHString(key);

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, HSTRING)>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hKey);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hKey);
    }
  }

  late final _iIterable = IIterable<IKeyValuePair<String, V>>.fromRawPointer(
      toInterface(iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<String, V>> first() => _iIterable.first();

  @override
  Map<String, V> toMap() => size == 0
      ? Map.unmodifiable({})
      : _toMap(first(), length: size, creator: _iterableCreator);
}

class _IMapStringInspectable<V> extends IMap<String, V> {
  _IMapStringInspectable.fromRawPointer(
      super.ptr, this.creator, this.iterableIid);

  final V Function(Pointer<COMObject>) creator;
  final String iterableIid;

  IKeyValuePair<String, V> _iterableCreator(Pointer<COMObject> ptr) =>
      IKeyValuePair.fromRawPointer(ptr, creator: creator);

  @override
  V lookup(String key) {
    final retValuePtr = calloc<COMObject>();
    final hKey = convertToHString(key);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, HSTRING, Pointer<COMObject>)>>>()
              .value
              .asFunction<int Function(Pointer, int, Pointer<COMObject>)>()(
          ptr.ref.lpVtbl, hKey, retValuePtr);

      if (FAILED(hr)) {
        free(retValuePtr);
        throw WindowsException(hr);
      }

      return creator(retValuePtr);
    } finally {
      WindowsDeleteString(hKey);
    }
  }

  @override
  bool hasKey(String value) {
    final retValuePtr = calloc<Bool>();
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, HSTRING, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, hValue, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
      WindowsDeleteString(hValue);
    }
  }

  @override
  Map<String, V> getView() => _getView(ptr, iterableIid, creator: creator);

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();
    final hKey = convertToHString(key);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, HSTRING, LPVTBL, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, LPVTBL, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          hKey,
          value == null ? nullptr : boxValue(value).ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(hKey);
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hKey = convertToHString(key);

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, HSTRING)>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hKey);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hKey);
    }
  }

  late final _iIterable = IIterable<IKeyValuePair<String, V>>.fromRawPointer(
      toInterface(iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<String, V>> first() => _iIterable.first();

  @override
  Map<String, V> toMap() => size == 0
      ? Map.unmodifiable({})
      : _toMap(first(), length: size, creator: _iterableCreator);
}

class _IMapStringObject extends IMap<String, Object?> {
  _IMapStringObject.fromRawPointer(super.ptr, this.iterableIid);

  final String iterableIid;

  @override
  Object? lookup(String key) {
    final retValuePtr = calloc<COMObject>();
    final hKey = convertToHString(key);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, HSTRING, Pointer<COMObject>)>>>()
              .value
              .asFunction<int Function(Pointer, int, Pointer<COMObject>)>()(
          ptr.ref.lpVtbl, hKey, retValuePtr);

      if (FAILED(hr)) {
        free(retValuePtr);
        throw WindowsException(hr);
      }

      if (retValuePtr.ref.lpVtbl == nullptr) {
        free(retValuePtr);
        return null;
      }

      return IPropertyValue.fromRawPointer(retValuePtr).value;
    } finally {
      WindowsDeleteString(hKey);
    }
  }

  @override
  bool hasKey(String value) {
    final retValuePtr = calloc<Bool>();
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, HSTRING, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, hValue, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
      WindowsDeleteString(hValue);
    }
  }

  @override
  Map<String, Object?> getView() => _getView(ptr, iterableIid);

  @override
  bool insert(String key, Object? value) {
    final retValuePtr = calloc<Bool>();
    final hKey = convertToHString(key);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, HSTRING, LPVTBL, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, LPVTBL, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          hKey,
          value == null ? nullptr : boxValue(value).ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(hKey);
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hKey = convertToHString(key);

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, HSTRING)>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hKey);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hKey);
    }
  }

  late final _iIterable =
      IIterable<IKeyValuePair<String, Object?>>.fromRawPointer(
          toInterface(iterableIid),
          creator: IKeyValuePair.fromRawPointer);

  @override
  IIterator<IKeyValuePair<String, Object?>> first() => _iIterable.first();

  @override
  Map<String, Object?> toMap() =>
      size == 0 ? Map.unmodifiable({}) : _toMap(first(), length: size);
}

class _IMapStringString extends IMap<String, String> {
  _IMapStringString.fromRawPointer(super.ptr, this.iterableIid);

  final String iterableIid;

  @override
  String lookup(String key) {
    final retValuePtr = calloc<HSTRING>();
    final hKey = convertToHString(key);

    try {
      final hr =
          ptr.ref.lpVtbl.value
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  Pointer, HSTRING, Pointer<HSTRING>)>>>()
                  .value
                  .asFunction<int Function(Pointer, int, Pointer<HSTRING>)>()(
              ptr.ref.lpVtbl, hKey, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(hKey);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String value) {
    final retValuePtr = calloc<Bool>();
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, HSTRING, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, hValue, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
      WindowsDeleteString(hValue);
    }
  }

  @override
  Map<String, String> getView() => _getView(ptr, iterableIid);

  @override
  bool insert(String key, String value) {
    final retValuePtr = calloc<Bool>();
    final hKey = convertToHString(key);
    final hValue = convertToHString(value);

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, HSTRING, HSTRING, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(Pointer, int, int, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, hKey, hValue, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(hKey);
      WindowsDeleteString(hValue);
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hKey = convertToHString(key);

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<HRESULT Function(Pointer, HSTRING)>>>()
          .value
          .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, hKey);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hKey);
    }
  }

  late final _iIterable =
      IIterable<IKeyValuePair<String, String>>.fromRawPointer(
          toInterface(iterableIid),
          creator: IKeyValuePair.fromRawPointer);

  @override
  IIterator<IKeyValuePair<String, String>> first() => _iIterable.first();

  @override
  Map<String, String> toMap() =>
      size == 0 ? Map.unmodifiable({}) : _toMap(first(), length: size);
}

Map<K, V> _getView<K, V>(
  Pointer<COMObject> ptr,
  String iterableIid, {
  V Function(Pointer<COMObject>)? creator,
  K Function(int)? enumKeyCreator,
  V Function(int)? enumCreator,
}) {
  final retValuePtr = calloc<COMObject>();

  final hr = ptr.ref.vtable
      .elementAt(9)
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

  final mapView = IMapView<K, V>.fromRawPointer(
    retValuePtr,
    creator: creator,
    enumCreator: enumCreator,
    enumKeyCreator: enumKeyCreator,
    iterableIid: iterableIid,
  );
  final map = mapView.toMap();
  mapView.release();

  return map;
}

Map<K, V> _toMap<K, V>(
  IIterator<IKeyValuePair<K, V>> iterator, {
  int length = 1,
  IKeyValuePair<K, V> Function(Pointer<COMObject>)? creator,
}) {
  final pKeyValuePairArray = calloc<COMObject>(length);

  try {
    iterator.getMany(length, pKeyValuePairArray);
    final keyValuePairs = pKeyValuePairArray.toList<IKeyValuePair<K, V>>(
        creator ?? IKeyValuePair.fromRawPointer,
        length: length);
    final map = Map.fromEntries(
        keyValuePairs.map((kvp) => MapEntry(kvp.key, kvp.value)));

    for (final kvp in keyValuePairs) {
      kvp.release();
    }

    return Map.unmodifiable(map);
  } finally {
    iterator.release();
    free(pKeyValuePairArray);
  }
}
