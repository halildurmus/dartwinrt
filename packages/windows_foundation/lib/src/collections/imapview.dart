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
import 'ikeyvaluepair.dart';

part 'imapview_part.dart';

/// Represents an immutable view into a map.
///
/// {@category interface}
abstract class IMapView<K, V> extends IInspectable
    implements IIterable<IKeyValuePair<K, V>> {
  // vtable begins at 6, is 4 entries long.
  IMapView(
    super.ptr, {
    required String iterableIid,
    V Function(Pointer<COMObject>)? creator,
    K Function(int)? enumKeyCreator,
    V Function(int)? enumCreator,
    IntType? intType,
  })  : _creator = creator,
        _enumCreator = enumCreator,
        _iterableIid = iterableIid {
    _iterableCreator = (ptr) => IKeyValuePair<K, V>.fromPtr(ptr,
        creator: creator,
        enumKeyCreator: enumKeyCreator,
        enumCreator: enumCreator,
        intType: intType);
  }

  final String _iterableIid;
  final V Function(Pointer<COMObject>)? _creator;
  final V Function(int)? _enumCreator;
  late final IKeyValuePair<K, V> Function(Pointer<COMObject>)? _iterableCreator;

  /// Creates an instance of [IMapView] from the given [ptr] and [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<IKeyValuePair<K, V>>`
  /// interface (e.g. `'{dfabb6e1-0411-5a8f-aa87-354e7110f099}'`).
  ///
  /// [K] must be of type `Guid`, `int`, `String`, or `WinRTEnum` (e.g.
  /// `PedometerStepKind`).
  ///
  /// [V] must be of type `Object?`, `String`, `IInspectable?` (e.g.
  /// `IJsonValue?`), or `WinRTEnum` (e.g. `ChatMessageStatus`).
  ///
  /// [creator] must be specified if [V] is `IInspectable?`.
  /// ```dart
  /// final mapView = IMapView<String, IJsonValue?>.fromPtr(ptr,
  ///     creator: IJsonValue.fromPtr,
  ///     iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}');
  /// ```
  ///
  /// [enumCreator] must be specified if [V] is `WinRTEnum`.
  /// ```dart
  /// final mapView = IMapView<String, ChatMessageStatus>.fromPtr(ptr,
  ///     enumCreator: ChatMessageStatus.from,
  ///     iterableIid: '{57d87c13-48e9-546f-9b4e-a3906e1e7c24}');
  /// ```
  factory IMapView.fromPtr(
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
        return _IMapViewGuidInspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid) as IMapView<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapViewGuidObject.fromPtr(ptr, iterableIid: iterableIid)
            as IMapView<K, V>;
      }
    }

    if (K == int && isSubtypeOfInspectable<V>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      if (intType == null) throw ArgumentError.notNull('intType');
      switch (intType) {
        case IntType.int16:
          return _IMapViewInt16Inspectable<V>.fromPtr(ptr,
              creator: creator, iterableIid: iterableIid) as IMapView<K, V>;
        case IntType.int32:
          return _IMapViewInt32Inspectable<V>.fromPtr(ptr,
              creator: creator, iterableIid: iterableIid) as IMapView<K, V>;
        case IntType.int64:
          return _IMapViewInt64Inspectable<V>.fromPtr(ptr,
              creator: creator, iterableIid: iterableIid) as IMapView<K, V>;
        case IntType.uint8:
          return _IMapViewUint8Inspectable<V>.fromPtr(ptr,
              creator: creator, iterableIid: iterableIid) as IMapView<K, V>;
        case IntType.uint16:
          return _IMapViewUint16Inspectable<V>.fromPtr(ptr,
              creator: creator, iterableIid: iterableIid) as IMapView<K, V>;
        case IntType.uint32:
          return _IMapViewUint32Inspectable<V>.fromPtr(ptr,
              creator: creator, iterableIid: iterableIid) as IMapView<K, V>;
        case IntType.uint64:
          return _IMapViewUint64Inspectable<V>.fromPtr(ptr,
              creator: creator, iterableIid: iterableIid) as IMapView<K, V>;
      }
    }

    if (K == String) {
      if (V == String) {
        return _IMapViewStringString.fromPtr(ptr, iterableIid: iterableIid)
            as IMapView<K, V>;
      }

      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IMapViewStringInspectable<V>.fromPtr(ptr,
            creator: creator, iterableIid: iterableIid) as IMapView<K, V>;
      }

      if (isSubtypeOfWinRTEnum<V>()) {
        if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

        if (isSubtypeOfWinRTFlagsEnum<V>()) {
          return _IMapViewStringWinRTFlagsEnum<V>.fromPtr(ptr,
              enumCreator: enumCreator,
              iterableIid: iterableIid) as IMapView<K, V>;
        }

        return _IMapViewStringWinRTEnum<V>.fromPtr(ptr,
            enumCreator: enumCreator,
            iterableIid: iterableIid) as IMapView<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapViewStringObject.fromPtr(ptr, iterableIid: iterableIid)
            as IMapView<K, V>;
      }
    }

    if (isSubtypeOfWinRTEnum<K>() && isSubtypeOfInspectable<V>()) {
      if (enumKeyCreator == null) throw ArgumentError.notNull('enumKeyCreator');
      if (creator == null) throw ArgumentError.notNull('creator');

      if (isSubtypeOfWinRTFlagsEnum<K>()) {
        return _IMapViewWinRTFlagsEnumInspectable<K, V>.fromPtr(ptr,
            creator: creator,
            enumKeyCreator: enumKeyCreator,
            iterableIid: iterableIid);
      }

      return _IMapViewWinRTEnumInspectable.fromPtr(ptr,
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

  /// Determines whether the map contains the specified key.
  bool hasKey(K value);

  /// Splits the map view into two views.
  void split(IMapView<K, V> first, IMapView<K, V> second) {
    final hr = ptr.ref.lpVtbl.value
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Pointer<COMObject>,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject>,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, first.ptr, second.ptr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  late final _iIterable = IIterable<IKeyValuePair<K, V>>.fromPtr(
      toInterface(_iterableIid),
      creator: _iterableCreator);

  @override
  IIterator<IKeyValuePair<K, V>> first() => _iIterable.first();

  /// Creates an unmodifiable [Map] from the current [IMapView] instance.
  Map<K, V> toMap() {
    if (size == 0) return Map.unmodifiable({});

    final iterator = first();
    final keyValuePairs = <IKeyValuePair<K, V>>[];
    iterator.getMany(size, keyValuePairs);
    final map = Map.fromEntries(
        keyValuePairs.map((kvp) => MapEntry(kvp.key, kvp.value)));
    return Map.unmodifiable(map);
  }
}
