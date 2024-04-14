// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'imap.dart';

final class _IMapGuidInspectable<V> extends IMap<Guid, V> {
  _IMapGuidInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapGuidInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapGuidInspectableVtbl>().ref;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final keyNativeStructPtr = key.toNativeGUID();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(Guid key) {
    final retValuePtr = calloc<Bool>();

    try {
      final keyNativeStructPtr = key.toNativeGUID();

      final hr = _vtable.HasKey.asFunction<
              int Function(
                  VTablePointer lpVtbl, GUID key, Pointer<Bool> retValuePtr)>()(
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

      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, GUID key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, keyNativeStructPtr.ref,
          (value as IInspectable).lpVtbl, retValuePtr);

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

    final hr = _vtable.Remove.asFunction<
        int Function(
            VTablePointer lpVtbl, GUID key)>()(lpVtbl, keyNativeStructPtr.ref);

    free(keyNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapGuidInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, GUID key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, GUID key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, GUID key, VTablePointer value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, GUID key)>> Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapGuidObject extends IMap<Guid, Object?> {
  _IMapGuidObject.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapGuidObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IMapGuidObjectVtbl>().ref;

  @override
  Object? lookup(Guid key) {
    final retValuePtr = calloc<COMObject>();
    final keyNativeStructPtr = key.toNativeGUID();

    final hr = _vtable.Lookup.asFunction<
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

      final hr = _vtable.HasKey.asFunction<
              int Function(
                  VTablePointer lpVtbl, GUID key, Pointer<Bool> retValuePtr)>()(
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

      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, GUID key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, keyNativeStructPtr.ref,
          value?.boxValue().lpVtbl ?? nullptr, retValuePtr);

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

    final hr = _vtable.Remove.asFunction<
        int Function(
            VTablePointer lpVtbl, GUID key)>()(lpVtbl, keyNativeStructPtr.ref);

    free(keyNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapGuidObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, GUID key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, GUID key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, GUID key, VTablePointer value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, GUID key)>> Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapInt16Inspectable<V> extends IMap<int, V> {
  _IMapInt16Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapInt16InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapInt16InspectableVtbl>().ref;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapInt16InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int16 key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int16 key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int16 key, VTablePointer value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int16 key)>> Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapInt32Inspectable<V> extends IMap<int, V> {
  _IMapInt32Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapInt32InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapInt32InspectableVtbl>().ref;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapInt32InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 key, VTablePointer value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 key)>> Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapInt64Inspectable<V> extends IMap<int, V> {
  _IMapInt64Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapInt64InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapInt64InspectableVtbl>().ref;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapInt64InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int64 key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 key, VTablePointer value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int64 key)>> Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapObjectObject extends IMap<Object, Object?> {
  _IMapObjectObject.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapObjectObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IMapObjectObjectVtbl>().ref;

  @override
  Object? lookup(Object key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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
      final hr = _vtable.HasKey.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer key,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.boxValue().lpVtbl, retValuePtr);

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
      final hr = _vtable.Insert.asFunction<
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
    final hr = _vtable.Remove.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer key)>()(
        lpVtbl, key.boxValue().lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapObjectObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer key,
              Pointer<Bool> retValuePtr)>> HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer key,
              VTablePointer value, Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer key)>> Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapStringInspectable<V> extends IMap<String, V> {
  _IMapStringInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapStringInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapStringInspectableVtbl>().ref;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(String key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
              int Function(
                  VTablePointer lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toHString(), (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapStringInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
              VTablePointer value, Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapStringObject extends IMap<String, Object?> {
  _IMapStringObject.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapStringObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IMapStringObjectVtbl>().ref;

  @override
  Object? lookup(String key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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
      final hr = _vtable.HasKey.asFunction<
              int Function(
                  VTablePointer lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, key.toHString(),
          value?.boxValue().lpVtbl ?? nullptr, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(String key) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapStringObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
              VTablePointer value, Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapStringString extends IMap<String, String> {
  _IMapStringString.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapStringStringVtbl _vtable =
      ptr.ref.vtable.cast<__IMapStringStringVtbl>().ref;

  @override
  String lookup(String key) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.Lookup.asFunction<
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
      final hr = _vtable.HasKey.asFunction<
              int Function(
                  VTablePointer lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = _vtable.Insert.asFunction<
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
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapStringStringVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
              Pointer<IntPtr> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key, IntPtr value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapStringWinRTEnum<V> extends IMap<String, V> {
  _IMapStringWinRTEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.vEnumCreator})
      : super(vEnumCreator: vEnumCreator);

  late final __IMapStringWinRTEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IMapStringWinRTEnumVtbl>().ref;
  final EnumCreator<V> vEnumCreator;

  @override
  V lookup(String key) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.Lookup.asFunction<
              int Function(
                  VTablePointer lpVtbl, int key, Pointer<Int32> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return vEnumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
              int Function(
                  VTablePointer lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = _vtable.Insert.asFunction<
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
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapStringWinRTEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
              Pointer<Int32> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key, Int32 value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapStringWinRTFlagsEnum<V> extends IMap<String, V> {
  _IMapStringWinRTFlagsEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.vEnumCreator})
      : super(vEnumCreator: vEnumCreator);

  late final __IMapStringWinRTFlagsEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IMapStringWinRTFlagsEnumVtbl>().ref;
  final EnumCreator<V> vEnumCreator;

  @override
  V lookup(String key) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.Lookup.asFunction<
              int Function(VTablePointer lpVtbl, int key,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, key.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return vEnumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool hasKey(String key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
              int Function(
                  VTablePointer lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = _vtable.Insert.asFunction<
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
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapStringWinRTFlagsEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key,
              Pointer<Uint32> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr key, Uint32 value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr key)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapUint8Inspectable<V> extends IMap<int, V> {
  _IMapUint8Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapUint8InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapUint8InspectableVtbl>().ref;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapUint8InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint8 key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint8 key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint8 key, VTablePointer value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint8 key)>> Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapUint16Inspectable<V> extends IMap<int, V> {
  _IMapUint16Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapUint16InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapUint16InspectableVtbl>().ref;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapUint16InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint16 key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint16 key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint16 key,
              VTablePointer value, Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint16 key)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapUint32Inspectable<V> extends IMap<int, V> {
  _IMapUint32Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapUint32InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapUint32InspectableVtbl>().ref;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapUint32InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 key,
              VTablePointer value, Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 key)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapUint64Inspectable<V> extends IMap<int, V> {
  _IMapUint64Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapUint64InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapUint64InspectableVtbl>().ref;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(int key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(int key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key, (value as IInspectable).lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(int key) {
    final hr = _vtable.Remove.asFunction<
        int Function(VTablePointer lpVtbl, int key)>()(lpVtbl, key);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapUint64InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint64 key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 key,
              VTablePointer value, Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint64 key)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapUriString extends IMap<Uri, String> {
  _IMapUriString.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapUriStringVtbl _vtable =
      ptr.ref.vtable.cast<__IMapUriStringVtbl>().ref;

  @override
  String lookup(Uri key) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.Lookup.asFunction<
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
      final hr = _vtable.HasKey.asFunction<
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer key, int value,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, key.toWinRTUri().lpVtbl, value.toHString(), retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void remove(Uri key) {
    final hr = _vtable.Remove.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer key)>()(
        lpVtbl, key.toWinRTUri().lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapUriStringVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer key,
              Pointer<IntPtr> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer key,
              Pointer<Bool> retValuePtr)>> HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer key,
              IntPtr value, Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer key)>> Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapWinRTEnumInspectable<K, V> extends IMap<K, V> {
  _IMapWinRTEnumInspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      required this.kEnumCreator,
      required this.vObjectCreator})
      : super(kEnumCreator: kEnumCreator, vObjectCreator: vObjectCreator);

  late final __IMapWinRTEnumInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapWinRTEnumInspectableVtbl>().ref;
  final EnumCreator<K> kEnumCreator;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(K key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
              int Function(
                  VTablePointer lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
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
    final hr = _vtable.Remove.asFunction<
        int Function(
            VTablePointer lpVtbl, int key)>()(lpVtbl, (key as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapWinRTEnumInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 key, VTablePointer value,
              Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 key)>> Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}

final class _IMapWinRTFlagsEnumInspectable<K, V> extends IMap<K, V> {
  _IMapWinRTFlagsEnumInspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      required this.kEnumCreator,
      required this.vObjectCreator})
      : super(kEnumCreator: kEnumCreator, vObjectCreator: vObjectCreator);

  late final __IMapWinRTFlagsEnumInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapWinRTFlagsEnumInspectableVtbl>().ref;
  final EnumCreator<K> kEnumCreator;
  final COMObjectCreator<V> vObjectCreator;

  @override
  V lookup(K key) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.Lookup.asFunction<
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

    return vObjectCreator(retValuePtr);
  }

  @override
  bool hasKey(K key) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.HasKey.asFunction<
              int Function(
                  VTablePointer lpVtbl, int key, Pointer<Bool> retValuePtr)>()(
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
      final hr = _vtable.Insert.asFunction<
              int Function(VTablePointer lpVtbl, int key, VTablePointer value,
                  Pointer<Bool> retValuePtr)>()(
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
    final hr = _vtable.Remove.asFunction<
        int Function(
            VTablePointer lpVtbl, int key)>()(lpVtbl, (key as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IMapWinRTFlagsEnumInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 key,
              Pointer<COMObject> retValuePtr)>> Lookup;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 key, Pointer<Bool> retValuePtr)>>
      HasKey;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 key,
              VTablePointer value, Pointer<Bool> retValuePtr)>> Insert;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 key)>>
      Remove;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}
