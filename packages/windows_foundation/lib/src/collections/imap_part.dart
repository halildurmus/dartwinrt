// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'imap.dart';

final class _IMapGuidInspectable<V> extends IMap<Guid, V> {
  _IMapGuidInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.creator})
      : super(creator: creator);

  final COMObjectCreator<V> creator;

  @override
  V lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final keyNativeStructPtr = key.toNativeGUID();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, GUID key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, GUID key,
                    Pointer<COMObject> retValuePtr)>()(
        lpVtbl, keyNativeStructPtr.ref, retValuePtr);

    free(keyNativeStructPtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(Guid key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyNativeStructPtr = key.toNativeGUID();

      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, GUID key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, GUID key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, keyNativeStructPtr.ref, retValuePtr);

      free(keyNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(Guid key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyNativeStructPtr = key.toNativeGUID();

      final hr =
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  GUID key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, GUID key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl,
              keyNativeStructPtr.ref,
              (value as IInspectable).lpVtbl,
              retValuePtr);

      free(keyNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(Guid key) {
    final keyNativeStructPtr = key.toNativeGUID();

    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, GUID key)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, GUID key)>()(
        lpVtbl, keyNativeStructPtr.ref);

    free(keyNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapGuidObject extends IMap<Guid, Object?> {
  _IMapGuidObject.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Object? lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final keyNativeStructPtr = key.toNativeGUID();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, GUID key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, GUID key,
                    Pointer<COMObject> retValuePtr)>()(
        lpVtbl, keyNativeStructPtr.ref, retValuePtr);

    free(keyNativeStructPtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromPtr(retValuePtr).value;
  }

  @override
  bool hasKey(Guid key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyNativeStructPtr = key.toNativeGUID();

      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, GUID key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, GUID key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, keyNativeStructPtr.ref, retValuePtr);

      free(keyNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(Guid key, Object? value) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyNativeStructPtr = key.toNativeGUID();

      final hr =
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  GUID key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, GUID key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl,
              keyNativeStructPtr.ref,
              value?.boxValue().lpVtbl ?? nullptr,
              retValuePtr);

      free(keyNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(Guid key) {
    final keyNativeStructPtr = key.toNativeGUID();

    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, GUID key)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, GUID key)>()(
        lpVtbl, keyNativeStructPtr.ref);

    free(keyNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapInt16Inspectable<V> extends IMap<int, V> {
  _IMapInt16Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final COMObjectCreator<V> creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int16 key,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int key,
                Pointer<COMObject> retValuePtr)>()(lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int16 key,
                          Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int key,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

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
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int16 key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int16 key)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapInt32Inspectable<V> extends IMap<int, V> {
  _IMapInt32Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final COMObjectCreator<V> creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int32 key,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int key,
                Pointer<COMObject> retValuePtr)>()(lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 key,
                          Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int key,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

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
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int32 key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int32 key)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapInt64Inspectable<V> extends IMap<int, V> {
  _IMapInt64Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final COMObjectCreator<V> creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int64 key,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int key,
                Pointer<COMObject> retValuePtr)>()(lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int64 key,
                          Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int key,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

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
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int64 key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int64 key)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapObjectObject extends IMap<Object, Object?> {
  _IMapObjectObject.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Object? lookup(Object key) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer key,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer key,
                        Pointer<COMObject> retValuePtr)>()(
            lpVtbl, key.boxValue().lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromPtr(retValuePtr).value;
  }

  @override
  bool hasKey(Object key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, VTablePointer key,
                          Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer key,
                  Pointer<Bool>
                      retValuePtr)>()(lpVtbl, key.boxValue().lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(Object key, Object? value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, VTablePointer key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl,
              key.boxValue().lpVtbl,
              value?.boxValue().lpVtbl ?? nullptr,
              retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(Object key) {
    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer key)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer key)>()(
        lpVtbl, key.boxValue().lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapStringInspectable<V> extends IMap<String, V> {
  _IMapStringInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.creator})
      : super(creator: creator);

  final COMObjectCreator<V> creator;

  @override
  V lookup(String key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int key,
                    Pointer<COMObject> retValuePtr)>()(
        lpVtbl, key.toHString(), retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  IntPtr key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl,
              key.toHString(),
              (value as IInspectable).lpVtbl,
              retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int key)>()(
        lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapStringObject extends IMap<String, Object?> {
  _IMapStringObject.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Object? lookup(String key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int key,
                    Pointer<COMObject> retValuePtr)>()(
        lpVtbl, key.toHString(), retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromPtr(retValuePtr).value;
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, Object? value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  IntPtr key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl,
              key.toHString(),
              value?.boxValue().lpVtbl ?? nullptr,
              retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int key)>()(
        lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapStringString extends IMap<String, String> {
  _IMapStringString.fromPtr(super.ptr, {required super.iterableIid});

  @override
  String lookup(String key) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<IntPtr> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, String value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              IntPtr value, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key, int value,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toHString(), value.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int key)>()(
        lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapStringWinRTEnum<V> extends IMap<String, V> {
  _IMapStringWinRTEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  final EnumCreator<V> enumCreator;

  @override
  V lookup(String key) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Int32> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Int32 value, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key, int value,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toHString(), (value as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int key)>()(
        lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapStringWinRTFlagsEnum<V> extends IMap<String, V> {
  _IMapStringWinRTFlagsEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  final EnumCreator<V> enumCreator;

  @override
  V lookup(String key) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Uint32> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(String key, V value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Uint32 value, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key, int value,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toHString(), (value as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int key)>()(
        lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapUint8Inspectable<V> extends IMap<int, V> {
  _IMapUint8Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final COMObjectCreator<V> creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint8 key,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int key,
                Pointer<COMObject> retValuePtr)>()(lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint8 key,
                          Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int key,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

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
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint8 key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint8 key)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapUint16Inspectable<V> extends IMap<int, V> {
  _IMapUint16Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final COMObjectCreator<V> creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint16 key,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int key,
                Pointer<COMObject> retValuePtr)>()(lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint16 key,
                          Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int key,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

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
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint16 key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint16 key)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapUint32Inspectable<V> extends IMap<int, V> {
  _IMapUint32Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final COMObjectCreator<V> creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 key,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int key,
                Pointer<COMObject> retValuePtr)>()(lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint32 key,
                          Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int key,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

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
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 key)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapUint64Inspectable<V> extends IMap<int, V> {
  _IMapUint64Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final COMObjectCreator<V> creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint64 key,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int key,
                Pointer<COMObject> retValuePtr)>()(lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint64 key,
                          Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int key,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

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
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint64 key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint64 key)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapUriString extends IMap<Uri, String> {
  _IMapUriString.fromPtr(super.ptr, {required super.iterableIid});

  @override
  String lookup(Uri key) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr =
          vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer key,
                                  Pointer<IntPtr> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, VTablePointer key,
                          Pointer<IntPtr> retValuePtr)>()(
              lpVtbl, key.toWinRTUri().lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(Uri key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, VTablePointer key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toWinRTUri().lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool insert(Uri key, String value) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer key,
                                  IntPtr value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, VTablePointer key,
                          int value, Pointer<Bool> retValuePtr)>()(
              lpVtbl, key.toWinRTUri().lpVtbl, value.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(Uri key) {
    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer key)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer key)>()(
        lpVtbl, key.toWinRTUri().lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapWinRTEnumInspectable<K, V> extends IMap<K, V> {
  _IMapWinRTEnumInspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      required this.enumKeyCreator,
      required this.creator})
      : super(enumKeyCreator: enumKeyCreator, creator: creator);

  final EnumCreator<K> enumKeyCreator;
  final COMObjectCreator<V> creator;

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int key,
                    Pointer<COMObject> retValuePtr)>()(
        lpVtbl, (key as WinRTEnum).value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(K key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Int32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, (key as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

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
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int32 key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl,
              (key as WinRTEnum).value,
              (value as IInspectable).lpVtbl,
              retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(K key) {
    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 key)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int key)>()(
        lpVtbl, (key as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMapWinRTFlagsEnumInspectable<K, V> extends IMap<K, V> {
  _IMapWinRTFlagsEnumInspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      required this.enumKeyCreator,
      required this.creator})
      : super(enumKeyCreator: enumKeyCreator, creator: creator);

  final EnumCreator<K> enumKeyCreator;
  final COMObjectCreator<V> creator;

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int key,
                    Pointer<COMObject> retValuePtr)>()(
        lpVtbl, (key as WinRTEnum).value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
  }

  @override
  bool hasKey(K key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          lpVtbl, (key as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

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
          vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 key,
                                  VTablePointer value,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int key,
                          VTablePointer value, Pointer<Bool> retValuePtr)>()(
              lpVtbl,
              (key as WinRTEnum).value,
              (value as IInspectable).lpVtbl,
              retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(K key) {
    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 key)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int key)>()(
        lpVtbl, (key as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
