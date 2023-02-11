// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';
import '../helpers.dart';
import '../iinspectable.dart';
import '../winrt_enum.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ikeyvaluepair.dart';

/// Represents an immutable view into a map.
///
/// {@category interface}
abstract class IMapView<K, V> extends IInspectable
    implements IIterable<IKeyValuePair<K, V>> {
  // vtable begins at 6, is 4 entries long.
  IMapView(super.ptr);

  /// Creates an instance of [IMapView] from the given [ptr] and [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<IKeyValuePair<K, V>>`
  /// interface (e.g. `'{dfabb6e1-0411-5a8f-aa87-354e7110f099}'`).
  ///
  /// [K] must be of type `Guid`, `int`, `String`, or `WinRTEnum` (e.g.
  /// `PedometerStepKind`).
  ///
  /// [V] must be of type `Object?`, `String`, or `IInspectable?` (e.g.
  /// `IJsonValue`).
  ///
  /// [creator] must be specified if [V] is `IInspectable?`.
  /// ```dart
  /// final mapView = IMapView<String, IJsonValue?>.fromRawPointer(ptr,
  ///     creator: IJsonValue.fromRawPointer,
  ///     iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}');
  /// ```
  ///
  /// [enumCreator] must be specified if [V] is `WinRTEnum`.
  /// ```dart
  /// final mapView = IMapView<String, ChatMessageStatus>.fromRawPointer(ptr,
  ///     enumCreator: ChatMessageStatus.from,
  ///     iterableIid: '{57d87c13-48e9-546f-9b4e-a3906e1e7c24}');
  /// ```
  factory IMapView.fromRawPointer(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    V Function(Pointer<COMObject>)? creator,
    K Function(int)? enumKeyCreator,
    V Function(int)? enumCreator,
  }) {
    if (K == Guid) {
      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IMapViewGuidInspectable<V>.fromRawPointer(
            ptr, creator, iterableIid) as IMapView<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapViewGuidObject.fromRawPointer(ptr, iterableIid)
            as IMapView<K, V>;
      }
    }

    if (K == int && isSubtypeOfInspectable<V>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IMapViewIntInspectable<V>.fromRawPointer(
          ptr, creator, iterableIid) as IMapView<K, V>;
    }

    if (K == String) {
      if (V == String) {
        return _IMapViewStringString.fromRawPointer(ptr, iterableIid)
            as IMapView<K, V>;
      }

      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IMapViewStringInspectable<V>.fromRawPointer(
            ptr, creator, iterableIid) as IMapView<K, V>;
      }

      if (isSubtypeOfWinRTEnum<V>()) {
        if (enumCreator == null) throw ArgumentError.notNull('enumCreator');
        return _IMapViewStringEnum<V>.fromRawPointer(
            ptr, enumCreator, iterableIid) as IMapView<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapViewStringObject.fromRawPointer(ptr, iterableIid)
            as IMapView<K, V>;
      }
    }

    if (isSubtypeOfWinRTEnum<K>() && isSubtypeOfInspectable<V>()) {
      if (enumKeyCreator == null) throw ArgumentError.notNull('enumKeyCreator');
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IMapViewEnumInspectable.fromRawPointer(
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

  /// Splits the map view into two views.
  void split(IMapView<K, V> first, IMapView<K, V> second) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        Pointer, Pointer<COMObject>, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(Pointer, Pointer<COMObject>,
                Pointer<COMObject>)>()(ptr.ref.lpVtbl, first.ptr, second.ptr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  IIterator<IKeyValuePair<K, V>> first();

  /// Creates an unmodifiable [Map] from the current [IMapView] instance.
  Map<K, V> toMap();
}

class _IMapViewEnumInspectable<K, V> extends IMapView<K, V> {
  _IMapViewEnumInspectable.fromRawPointer(
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

  late final _iIterable = IIterable<IKeyValuePair<K, V>>.fromRawPointer(
      toInterface(iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<K, V>> first() => _iIterable.first();

  @override
  Map<K, V> toMap() =>
      size == 0 ? Map.unmodifiable({}) : _toMap(first(), length: size);
}

class _IMapViewGuidInspectable<V> extends IMapView<Guid, V> {
  _IMapViewGuidInspectable.fromRawPointer(
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(Guid value) => _hasKeyGuid(ptr, value);

  late final _iIterable = IIterable<IKeyValuePair<Guid, V>>.fromRawPointer(
      toInterface(iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<Guid, V>> first() => _iIterable.first();

  @override
  Map<Guid, V> toMap() => size == 0
      ? Map.unmodifiable({})
      : _toMap(first(), length: size, creator: _iterableCreator);
}

class _IMapViewGuidObject extends IMapView<Guid, Object?> {
  _IMapViewGuidObject.fromRawPointer(super.ptr, this.iterableIid);

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
  bool hasKey(Guid value) => _hasKeyGuid(ptr, value);

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

class _IMapViewIntInspectable<V> extends IMapView<int, V> {
  _IMapViewIntInspectable.fromRawPointer(
      super.ptr, this.creator, this.iterableIid);

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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null as V;
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

  late final _iIterable = IIterable<IKeyValuePair<int, V>>.fromRawPointer(
      toInterface(iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<int, V>> first() => _iIterable.first();

  @override
  Map<int, V> toMap() => size == 0
      ? Map.unmodifiable({})
      : _toMap(first(), length: size, creator: _iterableCreator);
}

class _IMapViewStringEnum<V> extends IMapView<String, V> {
  _IMapViewStringEnum.fromRawPointer(
      super.ptr, this.enumCreator, this.iterableIid);

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
  bool hasKey(String value) => _hasKeyString(ptr, value);

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

class _IMapViewStringInspectable<V> extends IMapView<String, V> {
  _IMapViewStringInspectable.fromRawPointer(
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

      if (retValuePtr.ref.lpVtbl == nullptr) {
        free(retValuePtr);
        return null as V;
      }

      return creator(retValuePtr);
    } finally {
      WindowsDeleteString(hKey);
    }
  }

  @override
  bool hasKey(String value) => _hasKeyString(ptr, value);

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

class _IMapViewStringObject extends IMapView<String, Object?> {
  _IMapViewStringObject.fromRawPointer(super.ptr, this.iterableIid);

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
  bool hasKey(String value) => _hasKeyString(ptr, value);

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

class _IMapViewStringString extends IMapView<String, String> {
  _IMapViewStringString.fromRawPointer(super.ptr, this.iterableIid);

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
  bool hasKey(String value) => _hasKeyString(ptr, value);

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

bool _hasKeyGuid(Pointer<COMObject> ptr, Guid value) {
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

bool _hasKeyString(Pointer<COMObject> ptr, String value) {
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
