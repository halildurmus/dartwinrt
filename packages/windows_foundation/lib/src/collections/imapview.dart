// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide WinRTStringConversion;

import '../../internal.dart';
import '../types.dart';
import '../winrt_enum.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ikeyvaluepair.dart';

part 'imapview_part.dart';

/// Represents an immutable view into a map.
abstract interface class IMapView<K, V> extends IInspectable
    implements IIterable<IKeyValuePair<K, V>> {
  IMapView(
    super.ptr, {
    required String iterableIid,
    EnumCreator<K>? kEnumCreator,
    IntType? kIntType,
    EnumCreator<V>? vEnumCreator,
    COMObjectCreator<V>? vObjectCreator,
  })  : _iterableIid = iterableIid,
        _kEnumCreator = kEnumCreator,
        _kIntType = kIntType,
        _vEnumCreator = vEnumCreator,
        _vObjectCreator = vObjectCreator {
    _iterableCreator = (ptr) => IKeyValuePair<K, V>.fromPtr(
          ptr,
          kEnumCreator: kEnumCreator,
          kIntType: kIntType,
          vEnumCreator: vEnumCreator,
          vObjectCreator: vObjectCreator,
        );
  }

  final String _iterableIid;
  final EnumCreator<K>? _kEnumCreator;
  final IntType? _kIntType;
  final EnumCreator<V>? _vEnumCreator;
  final COMObjectCreator<V>? _vObjectCreator;
  late final COMObjectCreator<IKeyValuePair<K, V>>? _iterableCreator;

  /// Creates an instance of [IMapView] from the given [ptr] and [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<IKeyValuePair<K, V>>`
  /// interface (e.g., `'{dfabb6e1-0411-5a8f-aa87-354e7110f099}'`).
  ///
  /// [K] must be of type `Guid`, `int`, `Object`, `String`, `Uri`, or
  /// `WinRTEnum` (e.g., `PedometerStepKind`).
  ///
  /// [V] must be of type `Object?`, `String`, `IInspectable?` (e.g.,
  /// `IJsonValue?`), or `WinRTEnum` (e.g., `ChatMessageStatus`).
  ///
  /// [vObjectCreator] must be specified if [V] is `IInspectable?`.
  /// ```dart
  /// final mapView = IMapView<String, IJsonValue?>.fromPtr(ptr,
  ///     iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}',
  ///     vObjectCreator: IJsonValue.fromPtr);
  /// ```
  ///
  /// [vEnumCreator] must be specified if [V] is `WinRTEnum`.
  /// ```dart
  /// final mapView = IMapView<String, ChatMessageStatus>.fromPtr(ptr,
  ///     iterableIid: '{57d87c13-48e9-546f-9b4e-a3906e1e7c24}',
  ///     vEnumCreator: ChatMessageStatus.from);
  /// ```
  factory IMapView.fromPtr(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    EnumCreator<K>? kEnumCreator,
    IntType? kIntType,
    EnumCreator<V>? vEnumCreator,
    COMObjectCreator<V>? vObjectCreator,
  }) {
    if (K == Guid) {
      if (isSubtypeOfInspectable<V>()) {
        if (vObjectCreator == null) {
          throw ArgumentError.notNull('vObjectCreator');
        }

        return _IMapViewGuidInspectable<V>.fromPtr(
          ptr,
          vObjectCreator: vObjectCreator,
          iterableIid: iterableIid,
        ) as IMapView<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapViewGuidObject.fromPtr(ptr, iterableIid: iterableIid)
            as IMapView<K, V>;
      }
    }

    if (K == int && isSubtypeOfInspectable<V>()) {
      if (vObjectCreator == null) throw ArgumentError.notNull('vObjectCreator');
      if (kIntType == null) throw ArgumentError.notNull('kIntType');
      final mapView = switch (kIntType) {
        IntType.int16 => _IMapViewInt16Inspectable<V>.fromPtr(
            ptr,
            kIntType: kIntType,
            vObjectCreator: vObjectCreator,
            iterableIid: iterableIid,
          ),
        IntType.int32 => _IMapViewInt32Inspectable<V>.fromPtr(
            ptr,
            kIntType: kIntType,
            vObjectCreator: vObjectCreator,
            iterableIid: iterableIid,
          ),
        IntType.int64 => _IMapViewInt64Inspectable<V>.fromPtr(
            ptr,
            kIntType: kIntType,
            vObjectCreator: vObjectCreator,
            iterableIid: iterableIid,
          ),
        IntType.uint8 => _IMapViewUint8Inspectable<V>.fromPtr(
            ptr,
            kIntType: kIntType,
            vObjectCreator: vObjectCreator,
            iterableIid: iterableIid,
          ),
        IntType.uint16 => _IMapViewUint16Inspectable<V>.fromPtr(
            ptr,
            kIntType: kIntType,
            vObjectCreator: vObjectCreator,
            iterableIid: iterableIid,
          ),
        IntType.uint32 => _IMapViewUint32Inspectable<V>.fromPtr(
            ptr,
            kIntType: kIntType,
            vObjectCreator: vObjectCreator,
            iterableIid: iterableIid,
          ),
        IntType.uint64 => _IMapViewUint64Inspectable<V>.fromPtr(
            ptr,
            kIntType: kIntType,
            vObjectCreator: vObjectCreator,
            iterableIid: iterableIid,
          )
      };
      return mapView as IMapView<K, V>;
    }

    if (K == String) {
      if (V == String) {
        return _IMapViewStringString.fromPtr(ptr, iterableIid: iterableIid)
            as IMapView<K, V>;
      }

      if (isSubtypeOfInspectable<V>()) {
        if (vObjectCreator == null) {
          throw ArgumentError.notNull('vObjectCreator');
        }

        return _IMapViewStringInspectable<V>.fromPtr(
          ptr,
          vObjectCreator: vObjectCreator,
          iterableIid: iterableIid,
        ) as IMapView<K, V>;
      }

      if (isSubtypeOfWinRTFlagsEnum<V>()) {
        if (vEnumCreator == null) throw ArgumentError.notNull('vEnumCreator');
        return _IMapViewStringWinRTFlagsEnum<V>.fromPtr(
          ptr,
          vEnumCreator: vEnumCreator,
          iterableIid: iterableIid,
        ) as IMapView<K, V>;
      }

      if (isSubtypeOfWinRTEnum<V>()) {
        if (vEnumCreator == null) throw ArgumentError.notNull('vEnumCreator');
        return _IMapViewStringWinRTEnum<V>.fromPtr(
          ptr,
          vEnumCreator: vEnumCreator,
          iterableIid: iterableIid,
        ) as IMapView<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IMapViewStringObject.fromPtr(ptr, iterableIid: iterableIid)
            as IMapView<K, V>;
      }
    }

    if (isSubtypeOfWinRTEnum<K>() && isSubtypeOfInspectable<V>()) {
      if (kEnumCreator == null) throw ArgumentError.notNull('kEnumCreator');
      if (vObjectCreator == null) throw ArgumentError.notNull('vObjectCreator');

      if (isSubtypeOfWinRTFlagsEnum<K>()) {
        return _IMapViewWinRTFlagsEnumInspectable<K, V>.fromPtr(
          ptr,
          kEnumCreator: kEnumCreator,
          vObjectCreator: vObjectCreator,
          iterableIid: iterableIid,
        );
      }

      return _IMapViewWinRTEnumInspectable.fromPtr(
        ptr,
        kEnumCreator: kEnumCreator,
        vObjectCreator: vObjectCreator,
        iterableIid: iterableIid,
      );
    }

    if (K == Uri && V == String) {
      return _IMapViewUriString.fromPtr(ptr, iterableIid: iterableIid)
          as IMapView<K, V>;
    }

    if (K == Object && isNullableObjectType<V>()) {
      return _IMapViewObjectObject.fromPtr(ptr, iterableIid: iterableIid)
          as IMapView<K, V>;
    }

    throw UnsupportedError('Unsupported key-value pair: ($K, $V)');
  }

  late final _IMapViewVtbl __vtable = ptr.ref.vtable.cast<_IMapViewVtbl>().ref;

  /// Returns the item at the specified key in the map.
  V lookup(K key);

  /// Gets the number of items in the map.
  int get size {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = __vtable.get_Size.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  /// Determines whether the map contains the specified key.
  bool hasKey(K value);

  /// Splits the map view into two views.
  ({IMapView<K, V>? first, IMapView<K, V>? second}) split() {
    final first = calloc<COMObject>();
    final second = calloc<COMObject>();

    final hr = __vtable.Split.asFunction<
        int Function(VTablePointer lpVtbl, Pointer<COMObject> first,
            Pointer<COMObject> second)>()(lpVtbl, first, second);

    if (FAILED(hr)) {
      free(first);
      free(second);
      throwWindowsException(hr);
    }

    var firstIsNull = false;
    if (first.isNull) {
      free(first);
      firstIsNull = true;
    }
    var secondIsNull = false;
    if (second.isNull) {
      free(second);
      secondIsNull = true;
    }

    return (
      first: firstIsNull
          ? null
          : IMapView<K, V>.fromPtr(
              first,
              iterableIid: _iterableIid,
              kEnumCreator: _kEnumCreator,
              kIntType: _kIntType,
              vEnumCreator: _vEnumCreator,
              vObjectCreator: _vObjectCreator,
            ),
      second: secondIsNull
          ? null
          : IMapView<K, V>.fromPtr(
              second,
              iterableIid: _iterableIid,
              kEnumCreator: _kEnumCreator,
              kIntType: _kIntType,
              vEnumCreator: _vEnumCreator,
              vObjectCreator: _vObjectCreator,
            )
    );
  }

  late final _iIterable = IIterable<IKeyValuePair<K, V>>.fromPtr(
    toInterface(_iterableIid),
    tObjectCreator: _iterableCreator,
  );

  @override
  IIterator<IKeyValuePair<K, V>> first() => _iIterable.first();

  /// Creates an unmodifiable [Map] from the current [IMapView] instance.
  Map<K, V> toMap() {
    if (size == 0) return Map.unmodifiable({});

    final iterator = first();
    final (_, :items) = iterator.getMany(size);
    final map =
        Map.fromEntries(items.map((kvp) => MapEntry(kvp.key, kvp.value)));
    return Map.unmodifiable(map);
  }

  /// The value for the given [key], or `null` if [key] is not in the map.
  V operator [](K key) => lookup(key);
}

final class _IMapViewVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              /* T key, */
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              /* T key, */ Pointer<Bool> retValuePtr)>> HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}
