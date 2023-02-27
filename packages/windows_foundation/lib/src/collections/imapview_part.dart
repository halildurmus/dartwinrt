// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

part of 'imapview.dart';

class _IMapViewGuidInspectable<V> extends IMapView<Guid, V> {
  _IMapViewGuidInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.creator});

  @override
  V lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final keyNativeGuidPtr = key.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, GUID key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, GUID key, Pointer<COMObject> retValuePtr)>()(
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
                          HRESULT Function(LPVTBL lpVtbl, GUID key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, GUID key, Pointer<Bool> retValuePtr)>()(
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

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, GUID key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, GUID key, Pointer<COMObject> retValuePtr)>()(
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
                          HRESULT Function(LPVTBL lpVtbl, GUID key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, GUID key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, keyNativeGuidPtr.ref, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(keyNativeGuidPtr);
      free(retValuePtr);
    }
  }
}

class _IMapViewInt16Inspectable<V> extends IMapView<int, V> {
  _IMapViewInt16Inspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int16 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Int16 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewInt32Inspectable<V> extends IMapView<int, V> {
  _IMapViewInt32Inspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int32 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Int32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewInt64Inspectable<V> extends IMapView<int, V> {
  _IMapViewInt64Inspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int64 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Int64 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewStringInspectable<V> extends IMapView<String, V> {
  _IMapViewStringInspectable.fromRawPointer(super.ptr,
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
                        HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
                        HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<IntPtr> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Int32> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Uint32> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, keyHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);
      free(retValuePtr);
    }
  }
}

class _IMapViewUint8Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint8Inspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint8 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Uint8 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint16Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint16Inspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint16 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Uint16 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint32Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint32Inspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint32 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Uint32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint64Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint64Inspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType, super.creator});

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint64 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Uint64 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewWinRTEnumInspectable<K, V> extends IMapView<K, V> {
  _IMapViewWinRTEnumInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumKeyCreator, super.creator});

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int32 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Int32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewWinRTFlagsEnumInspectable<K, V> extends IMapView<K, V> {
  _IMapViewWinRTFlagsEnumInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumKeyCreator, super.creator});

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint32 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int key, Pointer<COMObject> retValuePtr)>()(
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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Uint32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
