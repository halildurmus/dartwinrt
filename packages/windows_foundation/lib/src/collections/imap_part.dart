// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

part of 'imap.dart';

class _IMapGuidIInspectable<V> extends IMap<Guid, V> {
  _IMapGuidIInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(Guid key, V value) {
    final retValuePtr = calloc<Bool>();
    final keyNativeGuidPtr = key.toNativeGUID();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, GUID key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL, GUID key, LPVTBL value, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          keyNativeGuidPtr.ref,
          (value as IInspectable).ptr.ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(keyNativeGuidPtr);

      free(retValuePtr);
    }
  }

  @override
  void remove(Guid key) {
    final keyNativeGuidPtr = key.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, GUID key)>>>()
            .value
            .asFunction<int Function(LPVTBL, GUID key)>()(
        ptr.ref.lpVtbl, keyNativeGuidPtr.ref);

    if (FAILED(hr)) throw WindowsException(hr);

    free(keyNativeGuidPtr);
  }
}

class _IMapGuidObject extends IMap<Guid, Object?> {
  _IMapGuidObject.fromRawPointer(super.ptr, {required super.iterableIid});

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

  @override
  bool insert(Guid key, Object? value) {
    final retValuePtr = calloc<Bool>();
    final keyNativeGuidPtr = key.toNativeGUID();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, GUID key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL, GUID key, LPVTBL value, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          keyNativeGuidPtr.ref,
          value?.intoBox().ref.lpVtbl ?? nullptr,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(keyNativeGuidPtr);

      free(retValuePtr);
    }
  }

  @override
  void remove(Guid key) {
    final keyNativeGuidPtr = key.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, GUID key)>>>()
            .value
            .asFunction<int Function(LPVTBL, GUID key)>()(
        ptr.ref.lpVtbl, keyNativeGuidPtr.ref);

    if (FAILED(hr)) throw WindowsException(hr);

    free(keyNativeGuidPtr);
  }
}

class _IMapInt16IInspectable<V> extends IMap<int, V> {
  _IMapInt16IInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Int16 key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
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
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Int16 key)>>>()
        .value
        .asFunction<int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapInt32IInspectable<V> extends IMap<int, V> {
  _IMapInt32IInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Int32 key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
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
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Int32 key)>>>()
        .value
        .asFunction<int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapInt64IInspectable<V> extends IMap<int, V> {
  _IMapInt64IInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Int64 key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
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
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Int64 key)>>>()
        .value
        .asFunction<int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapStringIInspectable<V> extends IMap<String, V> {
  _IMapStringIInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, IntPtr key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          keyHString,
          (value as IInspectable).ptr.ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);

      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = convertToHString(key);

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, keyHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(keyHString);
  }
}

class _IMapStringObject extends IMap<String, Object?> {
  _IMapStringObject.fromRawPointer(super.ptr, {required super.iterableIid});

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

  @override
  bool insert(String key, Object? value) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, IntPtr key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
          ptr.ref.lpVtbl,
          keyHString,
          value?.intoBox().ref.lpVtbl ?? nullptr,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);

      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = convertToHString(key);

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, keyHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(keyHString);
  }
}

class _IMapStringString extends IMap<String, String> {
  _IMapStringString.fromRawPointer(super.ptr, {required super.iterableIid});

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

  @override
  bool insert(String key, String value) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);
    final valueHString = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, IntPtr key, IntPtr value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, int value, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, keyHString, valueHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);
      WindowsDeleteString(valueHString);
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = convertToHString(key);

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, keyHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(keyHString);
  }
}

class _IMapStringWinRTEnum<V> extends IMap<String, V> {
  _IMapStringWinRTEnum.fromRawPointer(super.ptr,
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

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, IntPtr key, Int32 value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, int value, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, keyHString, (value as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);

      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = convertToHString(key);

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, keyHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(keyHString);
  }
}

class _IMapStringWinRTFlagsEnum<V> extends IMap<String, V> {
  _IMapStringWinRTFlagsEnum.fromRawPointer(super.ptr,
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

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();
    final keyHString = convertToHString(key);

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, IntPtr key, Uint32 value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, int value, Pointer<Bool>)>()(
          ptr.ref.lpVtbl, keyHString, (value as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(keyHString);

      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final keyHString = convertToHString(key);

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr key)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, keyHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(keyHString);
  }
}

class _IMapUint8IInspectable<V> extends IMap<int, V> {
  _IMapUint8IInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Uint8 key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
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
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint8 key)>>>()
        .value
        .asFunction<int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapUint16IInspectable<V> extends IMap<int, V> {
  _IMapUint16IInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Uint16 key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
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
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint16 key)>>>()
        .value
        .asFunction<int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapUint32IInspectable<V> extends IMap<int, V> {
  _IMapUint32IInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Uint32 key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
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
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint32 key)>>>()
        .value
        .asFunction<int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapUint64IInspectable<V> extends IMap<int, V> {
  _IMapUint64IInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(int key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Uint64 key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
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
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint64 key)>>>()
        .value
        .asFunction<int Function(LPVTBL, int key)>()(ptr.ref.lpVtbl, key);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapWinRTEnumIInspectable<K, V> extends IMap<K, V> {
  _IMapWinRTEnumIInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(K key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Int32 key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
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
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Int32 key)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, int key)>()(ptr.ref.lpVtbl, (key as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

class _IMapWinRTFlagsEnumIInspectable<K, V> extends IMap<K, V> {
  _IMapWinRTFlagsEnumIInspectable.fromRawPointer(super.ptr,
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

  @override
  bool insert(K key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Uint32 key, LPVTBL value,
                              Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int key, LPVTBL value, Pointer<Bool>)>()(
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
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint32 key)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, int key)>()(ptr.ref.lpVtbl, (key as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
