// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

part of 'imapview.dart';

class _IMapViewGuidIInspectable<V> extends IMapView<Guid, V> {
  _IMapViewGuidIInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.creator});

  @override
  V lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final keyNativeGuidPtr = key.toNativeGUID();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, GUID key, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, GUID key, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, keyNativeGuidPtr.ref, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(keyNativeGuidPtr);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(Guid key) {
    final retValuePtr = calloc<Bool>();
    final keyNativeGuidPtr = key.toNativeGUID();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, GUID key, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(LPVTBL, GUID key, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, keyNativeGuidPtr.ref, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(keyNativeGuidPtr);
      free(retValuePtr);
    }
  }
}

class _IMapViewGuidObject extends IMapView<Guid, Object?> {
  _IMapViewGuidObject.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  Object? lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final keyNativeGuidPtr = key.toNativeGUID();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, GUID key, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, GUID key, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, keyNativeGuidPtr.ref, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(keyNativeGuidPtr);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromRawPointer(retValuePtr).value;
  }

  @override
  bool hasKey(Guid key) {
    final retValuePtr = calloc<Bool>();
    final keyNativeGuidPtr = key.toNativeGUID();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, GUID key, Pointer<Bool>)>>>()
              .value
              .asFunction<int Function(LPVTBL, GUID key, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, keyNativeGuidPtr.ref, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(keyNativeGuidPtr);
      free(retValuePtr);
    }
  }
}

class _IMapViewInt16IInspectable<V> extends IMapView<int, V> {
  _IMapViewInt16IInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(LPVTBL, Int16 key, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int key,
                Pointer<COMObject>)>()(ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Int16 key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewInt32IInspectable<V> extends IMapView<int, V> {
  _IMapViewInt32IInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(LPVTBL, Int32 key, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int key,
                Pointer<COMObject>)>()(ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Int32 key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewInt64IInspectable<V> extends IMapView<int, V> {
  _IMapViewInt64IInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(LPVTBL, Int64 key, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int key,
                Pointer<COMObject>)>()(ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Int64 key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewStringIInspectable<V> extends IMapView<String, V> {
  _IMapViewStringIInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.creator});

  @override
  V lookup(String key) {
    final retValuePtr = calloc<COMObject>();
    final keyHString = convertToHString(key);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, IntPtr key, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int key, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, keyHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(keyHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, IntPtr key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, keyHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);
      free(retValuePtr);
    }
  }
}

class _IMapViewStringObject extends IMapView<String, Object?> {
  _IMapViewStringObject.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  Object? lookup(String key) {
    final retValuePtr = calloc<COMObject>();
    final keyHString = convertToHString(key);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, IntPtr key, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int key, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, keyHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(keyHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromRawPointer(retValuePtr).value;
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, IntPtr key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, keyHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);
      free(retValuePtr);
    }
  }
}

class _IMapViewStringString extends IMapView<String, String> {
  _IMapViewStringString.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  String lookup(String key) {
    final retValuePtr = calloc<HSTRING>();
    final keyHString = convertToHString(key);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, IntPtr key, Pointer<IntPtr>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<IntPtr>)>()(
              ptr.ref.lpVtbl, keyHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(keyHString);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, IntPtr key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, keyHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);
      free(retValuePtr);
    }
  }
}

class _IMapViewStringWinRTEnum<V> extends IMapView<String, V> {
  _IMapViewStringWinRTEnum.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumCreator});

  @override
  V lookup(String key) {
    final retValuePtr = calloc<Int32>();
    final keyHString = convertToHString(key);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, IntPtr key, Pointer<Int32>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Int32>)>()(
              ptr.ref.lpVtbl, keyHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      WindowsDeleteString(keyHString);
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, IntPtr key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, keyHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);
      free(retValuePtr);
    }
  }
}

class _IMapViewStringWinRTFlagsEnum<V> extends IMapView<String, V> {
  _IMapViewStringWinRTFlagsEnum.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumCreator});

  @override
  V lookup(String key) {
    final retValuePtr = calloc<Uint32>();
    final keyHString = convertToHString(key);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, IntPtr key, Pointer<Uint32>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Uint32>)>()(
              ptr.ref.lpVtbl, keyHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      WindowsDeleteString(keyHString);
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, IntPtr key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, keyHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);
      free(retValuePtr);
    }
  }
}

class _IMapViewUint8IInspectable<V> extends IMapView<int, V> {
  _IMapViewUint8IInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(LPVTBL, Uint8 key, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int key,
                Pointer<COMObject>)>()(ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Uint8 key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint16IInspectable<V> extends IMapView<int, V> {
  _IMapViewUint16IInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint16 key, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int key, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Uint16 key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint32IInspectable<V> extends IMapView<int, V> {
  _IMapViewUint32IInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 key, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int key, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Uint32 key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint64IInspectable<V> extends IMapView<int, V> {
  _IMapViewUint64IInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint64 key, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int key, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Uint64 key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewWinRTEnumIInspectable<K, V> extends IMapView<K, V> {
  _IMapViewWinRTEnumIInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumKeyCreator, super.creator});

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Int32 key, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, int key, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(K key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Int32 key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewWinRTFlagsEnumIInspectable<K, V> extends IMapView<K, V> {
  _IMapViewWinRTFlagsEnumIInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumKeyCreator, super.creator});

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 key, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int key, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return _creator!(retValuePtr);
  }

  @override
  bool hasKey(K key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Uint32 key, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int key, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
