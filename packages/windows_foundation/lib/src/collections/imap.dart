// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_media/windows_media.dart';

import '../../internal.dart';
import '../types.dart';
import '../winrt_enum.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ikeyvaluepair.dart';
import 'imapview.dart';
import 'propertyset.dart';
import 'stringmap.dart';

part 'imap_part.dart';

/// Represents an associative collection, also known as a map or a dictionary.
///
/// {@category interface}
abstract interface class IMap<K, V> extends IInspectable
    implements IIterable<IKeyValuePair<K, V>> {
  // vtable begins at 6, is 7 entries long.
  IMap(
    super.ptr, {
    required String iterableIid,
    V Function(Pointer<COMObject>)? creator,
    K Function(int)? enumKeyCreator,
    V Function(int)? enumCreator,
    IntType? intType,
  })  : _creator = creator,
        _enumKeyCreator = enumKeyCreator,
        _enumCreator = enumCreator,
        _iterableIid = iterableIid,
        _intType = intType {
    _iterableCreator = (ptr) => IKeyValuePair<K, V>.fromPtr(ptr,
        creator: creator,
        enumKeyCreator: enumKeyCreator,
        enumCreator: enumCreator,
        intType: intType);
  }

  final String _iterableIid;
  final V Function(Pointer<COMObject>)? _creator;
  final V Function(int)? _enumCreator;
  final K Function(int)? _enumKeyCreator;
  late final IKeyValuePair<K, V> Function(Pointer<COMObject>)? _iterableCreator;
  final IntType? _intType;

  /// Creates an empty [IMap].
  ///
  /// [K] must be of type `Guid` or `String` and [V] must be of type
  /// `Object?` or `String`.
  factory IMap.empty() {
    if (K == Guid && isNullableObjectType<V>()) {
      final mediaPropertySet = MediaPropertySet();
      return IMap.fromPtr(mediaPropertySet.toInterface(IID_IMap_Guid_Object),
          iterableIid: IID_IIterable_IKeyValuePair_Guid_Object);
    }

    if (K == String) {
      if (V == String) {
        final stringMap = StringMap();
        return IMap.fromPtr(stringMap.toInterface(IID_IMap_String_String),
            iterableIid: IID_IIterable_IKeyValuePair_String_String);
      }

      if (isNullableObjectType<V>()) {
        final propertySet = PropertySet();
        return IMap.fromPtr(propertySet.toInterface(IID_IMap_String_Object),
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
  /// [V] must be of type `Object?`, `String`, `IInspectable?` (e.g.
  /// `IJsonValue?`), or `WinRTEnum` (e.g. `ChatMessageStatus`).
  ///
  /// [creator] must be specified if [V] is a `IInspectable?`.
  /// ```dart
  /// final map = IMap<String, IJsonValue?>.fromPtr(ptr,
  ///     creator: IJsonValue.fromPtr,
  ///     iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}');
  /// ```
  ///
  /// [enumCreator] must be specified if [V] is `WinRTEnum`.
  /// ```dart
  /// final map = IMap<String, ChatMessageStatus>.fromPtr(ptr,
  ///     enumCreator: ChatMessageStatus.from,
  ///     iterableIid: '{57d87c13-48e9-546f-9b4e-a3906e1e7c24}');
  /// ```
  factory IMap.fromPtr(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    V Function(Pointer<COMObject>)? creator,
    K Function(int)? enumKeyCreator,
    V Function(int)? enumCreator,
    IntType? intType,
  }) {
    if (K == Guid) {
      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IMapGuidInspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid) as IMap<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapGuidObject.fromPtr(ptr, iterableIid: iterableIid)
            as IMap<K, V>;
      }
    }

    if (K == int && isSubtypeOfInspectable<V>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      if (intType == null) throw ArgumentError.notNull('intType');
      final map = switch (intType) {
        IntType.int16 => _IMapInt16Inspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid),
        IntType.int32 => _IMapInt32Inspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid),
        IntType.int64 => _IMapInt64Inspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid),
        IntType.uint8 => _IMapUint8Inspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid),
        IntType.uint16 => _IMapUint16Inspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid),
        IntType.uint32 => _IMapUint32Inspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid),
        IntType.uint64 => _IMapUint64Inspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid)
      };
      return map as IMap<K, V>;
    }

    if (K == String) {
      if (V == String) {
        return _IMapStringString.fromPtr(ptr, iterableIid: iterableIid)
            as IMap<K, V>;
      }

      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IMapStringInspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid) as IMap<K, V>;
      }

      if (isSubtypeOfWinRTEnum<V>()) {
        if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

        if (isSubtypeOfWinRTFlagsEnum<V>()) {
          return _IMapStringWinRTFlagsEnum<V>.fromPtr(ptr,
              enumCreator: enumCreator, iterableIid: iterableIid) as IMap<K, V>;
        }

        return _IMapStringWinRTEnum<V>.fromPtr(ptr,
            enumCreator: enumCreator, iterableIid: iterableIid) as IMap<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapStringObject.fromPtr(ptr, iterableIid: iterableIid)
            as IMap<K, V>;
      }
    }

    if (isSubtypeOfWinRTEnum<K>() && isSubtypeOfInspectable<V>()) {
      if (enumKeyCreator == null) throw ArgumentError.notNull('enumKeyCreator');
      if (creator == null) throw ArgumentError.notNull('creator');

      if (isSubtypeOfWinRTFlagsEnum<K>()) {
        return _IMapWinRTFlagsEnumInspectable<K, V>.fromPtr(ptr,
            creator: creator,
            enumKeyCreator: enumKeyCreator,
            iterableIid: iterableIid);
      }

      return _IMapWinRTEnumInspectable.fromPtr(ptr,
          creator: creator,
          enumKeyCreator: enumKeyCreator,
          iterableIid: iterableIid);
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

  /// Determines whether the map contains the specified key.
  bool hasKey(K value);

  /// Returns an immutable view of the map.
  Map<K, V> getView() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(9)
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

    final mapView = IMapView<K, V>.fromPtr(retValuePtr,
        creator: _creator,
        enumKeyCreator: _enumKeyCreator,
        enumCreator: _enumCreator,
        intType: _intType,
        iterableIid: _iterableIid);
    return mapView.toMap();
  }

  /// Inserts or replaces an item in the map.
  bool insert(K key, V value);

  /// Removes an item from the map.
  void remove(K key);

  /// Removes all items from the map.
  void clear() {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  late final _iIterable = IIterable<IKeyValuePair<K, V>>.fromPtr(
      toInterface(_iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<K, V>> first() => _iIterable.first();

  /// Creates an unmodifiable [Map] from the current [IMap] instance.
  Map<K, V> toMap() {
    if (size == 0) return Map.unmodifiable({});

    final iterator = first();
    final keyValuePairs = <IKeyValuePair<K, V>>[];
    iterator.getMany(size, keyValuePairs);
    final map = Map.fromEntries(
        keyValuePairs.map((kvp) => MapEntry(kvp.key, kvp.value)));
    return Map.unmodifiable(map);
  }

  /// The value for the given [key], or `null` if [key] is not in the map.
  V operator [](K key) => lookup(key);

  /// Associates the [key] with the given [value].
  ///
  /// If the key was already in the map, its associated value is changed.
  /// Otherwise the key/value pair is added to the map.
  void operator []=(K key, V value) => insert(key, value);
}
