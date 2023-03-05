// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'imap.dart';

class _IMapGuidInspectable<V> extends IMap<Guid, V> {
  _IMapGuidInspectable.fromRawPointer(super.ptr,
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

    free(keyNativeGuidPtr);

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
  bool hasKey(Guid key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyNativeGuidPtr = key.toNativeGUID();

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

      free(keyNativeGuidPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(Guid key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyNativeGuidPtr = key.toNativeGUID();

      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, GUID key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, GUID key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl,
              keyNativeGuidPtr.ref,
              (value as IInspectable).ptr.ref.lpVtbl,
              retValuePtr);

      free(keyNativeGuidPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(Guid key) {
    final keyNativeGuidPtr = key.toNativeGUID();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, GUID key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl,
                GUID key)>()(ptr.ref.lpVtbl, keyNativeGuidPtr.ref);

    free(keyNativeGuidPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapGuidObject extends IMap<Guid, Object?> {
  _IMapGuidObject.fromRawPointer(super.ptr, {required super.iterableIid});

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

    free(keyNativeGuidPtr);

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

  @override
  bool hasKey(Guid key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyNativeGuidPtr = key.toNativeGUID();

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

      free(keyNativeGuidPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(Guid key, Object? value) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyNativeGuidPtr = key.toNativeGUID();
      final valuePtr = value?.intoBox().ptr.ref.lpVtbl ?? nullptr;

      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, GUID key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, GUID key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, keyNativeGuidPtr.ref, valuePtr, retValuePtr);

      free(keyNativeGuidPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(Guid key) {
    final keyNativeGuidPtr = key.toNativeGUID();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, GUID key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl,
                GUID key)>()(ptr.ref.lpVtbl, keyNativeGuidPtr.ref);

    free(keyNativeGuidPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapInt16Inspectable<V> extends IMap<int, V> {
  _IMapInt16Inspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, Int16 key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, key,
              (value as IInspectable).ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Int16 key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapInt32Inspectable<V> extends IMap<int, V> {
  _IMapInt32Inspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, Int32 key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, key,
              (value as IInspectable).ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Int32 key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapInt64Inspectable<V> extends IMap<int, V> {
  _IMapInt64Inspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, Int64 key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, key,
              (value as IInspectable).ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Int64 key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapStringInspectable<V> extends IMap<String, V> {
  _IMapStringInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.creator});

  @override
  V lookup(String key) {
    final retValuePtr = calloc<COMObject>();
    final keyHString = key.toHString();

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

    WindowsDeleteString(keyHString);

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
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();

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

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();

      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl,
              keyHString, (value as IInspectable).ptr.ref.lpVtbl, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = key.toHString();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, keyHString);

    WindowsDeleteString(keyHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapStringObject extends IMap<String, Object?> {
  _IMapStringObject.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  Object? lookup(String key) {
    final retValuePtr = calloc<COMObject>();
    final keyHString = key.toHString();

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

    WindowsDeleteString(keyHString);

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

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();

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

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, Object? value) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();
      final valuePtr = value?.intoBox().ptr.ref.lpVtbl ?? nullptr;

      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, keyHString, valuePtr, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = key.toHString();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, keyHString);

    WindowsDeleteString(keyHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapStringString extends IMap<String, String> {
  _IMapStringString.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  String lookup(String key) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final keyHString = key.toHString();

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

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();

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

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, String value) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();
      final valueHString = value.toHString();

      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                                  IntPtr value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, int value,
                          Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, keyHString, valueHString, retValuePtr);

      WindowsDeleteString(keyHString);
      WindowsDeleteString(valueHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = key.toHString();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, keyHString);

    WindowsDeleteString(keyHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapStringWinRTEnum<V> extends IMap<String, V> {
  _IMapStringWinRTEnum.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumCreator});

  @override
  V lookup(String key) {
    final retValuePtr = calloc<Int32>();

    try {
      final keyHString = key.toHString();

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

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();

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

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();

      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                                  Int32 value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, int value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl,
              keyHString, (value as WinRTEnum).value, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = key.toHString();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, keyHString);

    WindowsDeleteString(keyHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapStringWinRTFlagsEnum<V> extends IMap<String, V> {
  _IMapStringWinRTFlagsEnum.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumCreator});

  @override
  V lookup(String key) {
    final retValuePtr = calloc<Uint32>();

    try {
      final keyHString = key.toHString();

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

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();

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

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyHString = key.toHString();

      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, IntPtr key,
                                  Uint32 value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, int value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl,
              keyHString, (value as WinRTEnum).value, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = key.toHString();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, keyHString);

    WindowsDeleteString(keyHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapUint8Inspectable<V> extends IMap<int, V> {
  _IMapUint8Inspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, Uint8 key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, key,
              (value as IInspectable).ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Uint8 key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapUint16Inspectable<V> extends IMap<int, V> {
  _IMapUint16Inspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, Uint16 key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, key,
              (value as IInspectable).ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Uint16 key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapUint32Inspectable<V> extends IMap<int, V> {
  _IMapUint32Inspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, Uint32 key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, key,
              (value as IInspectable).ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Uint32 key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapUint64Inspectable<V> extends IMap<int, V> {
  _IMapUint64Inspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, Uint64 key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, key,
              (value as IInspectable).ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Uint64 key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapWinRTEnumInspectable<K, V> extends IMap<K, V> {
  _IMapWinRTEnumInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(K key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, Int32 key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(
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
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Int32 key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl,
                int key)>()(ptr.ref.lpVtbl, (key as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapWinRTFlagsEnumInspectable<K, V> extends IMap<K, V> {
  _IMapWinRTFlagsEnumInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(K key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL lpVtbl, Uint32 key,
                                  LPVTBL value, Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int key, LPVTBL value,
                          Pointer<Bool> retValuePtr)>()(
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
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Uint32 key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl,
                int key)>()(ptr.ref.lpVtbl, (key as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
