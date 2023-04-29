// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'imapview.dart';

class _IMapViewGuidInspectable<V> extends IMapView<Guid, V> {
  _IMapViewGuidInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.creator})
      : super(creator: creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final keyNativeGuidPtr = key.toNativeGUID();

    final hr = ptr.ref.vtable
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

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, GUID key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, GUID key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, keyNativeGuidPtr.ref, retValuePtr);

      free(keyNativeGuidPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewGuidObject extends IMapView<Guid, Object?> {
  _IMapViewGuidObject.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Object? lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final keyNativeGuidPtr = key.toNativeGUID();

    final hr = ptr.ref.vtable
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

    return IPropertyValue.fromPtr(retValuePtr).value;
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
                          HRESULT Function(VTablePointer lpVtbl, GUID key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, GUID key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, keyNativeGuidPtr.ref, retValuePtr);

      free(keyNativeGuidPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewInt16Inspectable<V> extends IMapView<int, V> {
  _IMapViewInt16Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int16 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int key,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, Int16 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewInt32Inspectable<V> extends IMapView<int, V> {
  _IMapViewInt32Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
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
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, Int32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewInt64Inspectable<V> extends IMapView<int, V> {
  _IMapViewInt64Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int key,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, Int64 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewStringInspectable<V> extends IMapView<String, V> {
  _IMapViewStringInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.creator})
      : super(creator: creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(String key) {
    final retValuePtr = calloc<COMObject>();
    final keyHString = key.toHString();

    final hr = ptr.ref.vtable
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

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, keyHString, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewStringObject extends IMapView<String, Object?> {
  _IMapViewStringObject.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Object? lookup(String key) {
    final retValuePtr = calloc<COMObject>();
    final keyHString = key.toHString();

    final hr = ptr.ref.vtable
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

    return IPropertyValue.fromPtr(retValuePtr).value;
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
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, keyHString, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewStringString extends IMapView<String, String> {
  _IMapViewStringString.fromPtr(super.ptr, {required super.iterableIid});

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
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<IntPtr> retValuePtr)>()(
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
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, keyHString, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewStringWinRTEnum<V> extends IMapView<String, V> {
  _IMapViewStringWinRTEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  final V Function(int) enumCreator;

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
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, keyHString, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
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
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, keyHString, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewStringWinRTFlagsEnum<V> extends IMapView<String, V> {
  _IMapViewStringWinRTFlagsEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  final V Function(int) enumCreator;

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
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, keyHString, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
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
                          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, keyHString, retValuePtr);

      WindowsDeleteString(keyHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint8Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint8Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint8 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int key,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, Uint8 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint16Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint16Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint16 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int key,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, Uint16 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint32Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint32Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
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
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, Uint32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewUint64Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint64Inspectable.fromPtr(super.ptr,
      {required super.iterableIid, super.intType, required this.creator})
      : super(creator: creator);

  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint64 key,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int key,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, key, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, Uint64 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, key, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewWinRTEnumInspectable<K, V> extends IMapView<K, V> {
  _IMapViewWinRTEnumInspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      required this.enumKeyCreator,
      required this.creator})
      : super(enumKeyCreator: enumKeyCreator, creator: creator);

  final K Function(int) enumKeyCreator;
  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
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
        ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, Int32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IMapViewWinRTFlagsEnumInspectable<K, V> extends IMapView<K, V> {
  _IMapViewWinRTFlagsEnumInspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      required this.enumKeyCreator,
      required this.creator})
      : super(enumKeyCreator: enumKeyCreator, creator: creator);

  final K Function(int) enumKeyCreator;
  final V Function(Pointer<COMObject>) creator;

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
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
        ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as V;
    }

    return creator(retValuePtr);
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
                          HRESULT Function(VTablePointer lpVtbl, Uint32 key,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int key,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, (key as WinRTEnum).value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
