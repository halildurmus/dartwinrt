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

/// Represents a key-value pair.
///
/// This is typically used as a constraint type when you need to encapsulate
/// two type parameters into one to satisfy the constraints of another generic
/// interface.
///
/// {@category interface}
abstract class IKeyValuePair<K, V> extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IKeyValuePair(super.ptr);

  /// Creates an instance of [IKeyValuePair] from the given [ptr].
  ///
  /// [K] must be of type `Guid`, `int`, `String`, or `WinRTEnum` (e.g.
  /// `PedometerStepKind`).
  ///
  /// [V] must be of type `Object?`, `String`, or `IInspectable?` (e.g.
  /// `IJsonValue?`).
  ///
  /// [creator] must be specified if [V] is `IInspectable?`.
  /// ```dart
  /// final keyValuePair = IKeyValuePair<String, IJsonValue?>.fromRawPointer
  ///     (ptr, creator: IJsonValue.fromRawPointer);
  /// ```
  ///
  /// [enumKeyCreator] must be specified if [K] is `WinRTEnum`.
  /// ```dart
  /// final keyValuePair =
  ///     IKeyValuePair<PedometerStepKind, PedometerReading?>.fromRawPointer
  ///         (ptr, enumKeyCreator: PedometerStepKind.from,
  ///         creator: PedometerReading.fromRawPointer);
  /// ```
  ///
  /// [enumCreator] must be specified if [V] is `WinRTEnum`.
  /// ```dart
  /// final keyValuePair =
  ///     IKeyValuePair<String, ChatMessageStatus>.fromRawPointer(ptr,
  ///         enumCreator: ChatMessageStatus.from);
  /// ```
  factory IKeyValuePair.fromRawPointer(
    Pointer<COMObject> ptr, {
    V Function(Pointer<COMObject>)? creator,
    K Function(int)? enumKeyCreator,
    V Function(int)? enumCreator,
    WinRTIntType? intType,
  }) {
    if (K == Guid) {
      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IKeyValuePairGuidInspectable<V>.fromRawPointer(ptr, creator)
            as IKeyValuePair<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IKeyValuePairGuidObject.fromRawPointer(ptr)
            as IKeyValuePair<K, V>;
      }
    }

    if (K == int && isSubtypeOfInspectable<V>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IKeyValuePairIntInspectable<V>.fromRawPointer(ptr, creator)
          as IKeyValuePair<K, V>;
    }

    if (K == String) {
      if (V == String) {
        return _IKeyValuePairStringString.fromRawPointer(ptr)
            as IKeyValuePair<K, V>;
      }

      if (isSubtypeOfInspectable<V>()) {
        if (creator == null) throw ArgumentError.notNull('creator');
        return _IKeyValuePairStringInspectable<V>.fromRawPointer(ptr, creator)
            as IKeyValuePair<K, V>;
      }

      if (isSubtypeOfWinRTEnum<V>()) {
        if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

        if (isSubtypeOfWinRTFlagsEnum<V>()) {
          return _IKeyValuePairStringFlagsEnum<V>.fromRawPointer(
              ptr, enumCreator) as IKeyValuePair<K, V>;
        }

        return _IKeyValuePairStringEnum<V>.fromRawPointer(ptr, enumCreator)
            as IKeyValuePair<K, V>;
      }

      if (isNullableObjectType<V>()) {
        return _IKeyValuePairStringObject.fromRawPointer(ptr)
            as IKeyValuePair<K, V>;
      }
    }

    if (isSubtypeOfWinRTEnum<K>() && isSubtypeOfInspectable<V>()) {
      if (enumKeyCreator == null) throw ArgumentError.notNull('enumKeyCreator');
      if (creator == null) throw ArgumentError.notNull('creator');

      if (isSubtypeOfWinRTFlagsEnum<K>()) {
        return _IKeyValuePairFlagsEnumInspectable.fromRawPointer(
            ptr, creator, enumKeyCreator);
      }

      return _IKeyValuePairEnumInspectable.fromRawPointer(
          ptr, creator, enumKeyCreator);
    }

    throw UnsupportedError('Unsupported key-value pair: ($K, $V)');
  }

  /// Gets the key of the key-value pair.
  K get key;

  /// Gets the value of the key-value pair.
  V get value;
}

class _IKeyValuePairEnumInspectable<K, V> extends IKeyValuePair<K, V> {
  _IKeyValuePairEnumInspectable(super.ptr, this.creator, this.enumKeyCreator);
  _IKeyValuePairEnumInspectable.fromRawPointer(
      super.ptr, this.creator, this.enumKeyCreator);

  final V Function(Pointer<COMObject>) creator;
  final K Function(int) enumKeyCreator;

  @override
  K get key {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumKeyCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retVal = _valueCOMObject(ptr);
    if (retVal == null) return null as V;
    return creator(retVal);
  }
}

class _IKeyValuePairFlagsEnumInspectable<K, V>
    extends _IKeyValuePairEnumInspectable<K, V> {
  _IKeyValuePairFlagsEnumInspectable.fromRawPointer(
      super.ptr, super.creator, super.enumKeyCreator);

  @override
  K get key {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumKeyCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

class _IKeyValuePairGuidInspectable<V> extends IKeyValuePair<Guid, V> {
  _IKeyValuePairGuidInspectable.fromRawPointer(super.ptr, this.creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  Guid get key => _keyGuid(ptr);

  @override
  V get value {
    final retVal = _valueCOMObject(ptr);
    if (retVal == null) return null as V;
    return creator(retVal);
  }
}

class _IKeyValuePairGuidObject extends IKeyValuePair<Guid, Object?> {
  _IKeyValuePairGuidObject.fromRawPointer(super.ptr);

  @override
  Guid get key => _keyGuid(ptr);

  @override
  Object? get value => _valueObject(ptr);
}

class _IKeyValuePairIntInspectable<V> extends IKeyValuePair<int, V> {
  _IKeyValuePairIntInspectable.fromRawPointer(super.ptr, this.creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  int get key {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
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

  @override
  V get value {
    final retVal = _valueCOMObject(ptr);
    if (retVal == null) return null as V;
    return creator(retVal);
  }
}

class _IKeyValuePairStringEnum<V> extends IKeyValuePair<String, V> {
  _IKeyValuePairStringEnum(super.ptr, this.enumCreator);
  _IKeyValuePairStringEnum.fromRawPointer(super.ptr, this.enumCreator);

  final V Function(int) enumCreator;

  @override
  String get key => _keyString(ptr);

  @override
  V get value {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

class _IKeyValuePairStringFlagsEnum<V> extends _IKeyValuePairStringEnum<V> {
  _IKeyValuePairStringFlagsEnum.fromRawPointer(super.ptr, super.enumCreator);

  @override
  V get value {
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

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

class _IKeyValuePairStringInspectable<V> extends IKeyValuePair<String, V> {
  _IKeyValuePairStringInspectable.fromRawPointer(super.ptr, this.creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  String get key => _keyString(ptr);

  @override
  V get value {
    final retVal = _valueCOMObject(ptr);
    if (retVal == null) return null as V;
    return creator(retVal);
  }
}

class _IKeyValuePairStringObject extends IKeyValuePair<String, Object?> {
  _IKeyValuePairStringObject.fromRawPointer(super.ptr);

  @override
  String get key => _keyString(ptr);

  @override
  Object? get value => _valueObject(ptr);
}

class _IKeyValuePairStringString extends IKeyValuePair<String, String> {
  _IKeyValuePairStringString.fromRawPointer(super.ptr);

  @override
  String get key => _keyString(ptr);

  @override
  String get value {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Pointer<HSTRING>)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<HSTRING>)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}

Guid _keyGuid(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<GUID>();

  try {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<GUID>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<GUID>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.toDartGuid();
  } finally {
    free(retValuePtr);
  }
}

String _keyString(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<HSTRING>();

  try {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(Pointer, Pointer<HSTRING>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<HSTRING>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.toDartString();
  } finally {
    WindowsDeleteString(retValuePtr.value);
    free(retValuePtr);
  }
}

Pointer<COMObject>? _valueCOMObject(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<COMObject>();

  final hr = ptr.ref.lpVtbl.value
      .elementAt(7)
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

  if (retValuePtr.ref.isNull) {
    free(retValuePtr);
    return null;
  }

  return retValuePtr;
}

Object? _valueObject(Pointer<COMObject> ptr) {
  final retValuePtr = calloc<COMObject>();

  final hr = ptr.ref.lpVtbl.value
      .elementAt(7)
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

  if (retValuePtr.ref.isNull) {
    free(retValuePtr);
    return null;
  }

  return IPropertyValue.fromRawPointer(retValuePtr).value;
}
