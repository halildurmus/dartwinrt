// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'imapview.dart';

final class _IMapViewGuidInspectable<V> extends IMapView<Guid, V> {
  _IMapViewGuidInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapViewGuidInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewGuidInspectableVtbl>().ref;
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
}

final class __IMapViewGuidInspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewGuidObject extends IMapView<Guid, Object?> {
  _IMapViewGuidObject.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapViewGuidObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewGuidObjectVtbl>().ref;

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
}

final class __IMapViewGuidObjectVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewInt16Inspectable<V> extends IMapView<int, V> {
  _IMapViewInt16Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapViewInt16InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewInt16InspectableVtbl>().ref;
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
}

final class __IMapViewInt16InspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewInt32Inspectable<V> extends IMapView<int, V> {
  _IMapViewInt32Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapViewInt32InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewInt32InspectableVtbl>().ref;
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
}

final class __IMapViewInt32InspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewInt64Inspectable<V> extends IMapView<int, V> {
  _IMapViewInt64Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapViewInt64InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewInt64InspectableVtbl>().ref;
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
}

final class __IMapViewInt64InspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewObjectObject extends IMapView<Object, Object?> {
  _IMapViewObjectObject.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapViewObjectObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewObjectObjectVtbl>().ref;

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
}

final class __IMapViewObjectObjectVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewStringInspectable<V> extends IMapView<String, V> {
  _IMapViewStringInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapViewStringInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewStringInspectableVtbl>().ref;
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
}

final class __IMapViewStringInspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewStringObject extends IMapView<String, Object?> {
  _IMapViewStringObject.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapViewStringObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewStringObjectVtbl>().ref;

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
}

final class __IMapViewStringObjectVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewStringString extends IMapView<String, String> {
  _IMapViewStringString.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapViewStringStringVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewStringStringVtbl>().ref;

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
}

final class __IMapViewStringStringVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewStringWinRTEnum<V> extends IMapView<String, V> {
  _IMapViewStringWinRTEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.vEnumCreator})
      : super(vEnumCreator: vEnumCreator);

  late final __IMapViewStringWinRTEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewStringWinRTEnumVtbl>().ref;
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
}

final class __IMapViewStringWinRTEnumVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewStringWinRTFlagsEnum<V> extends IMapView<String, V> {
  _IMapViewStringWinRTFlagsEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.vEnumCreator})
      : super(vEnumCreator: vEnumCreator);

  late final __IMapViewStringWinRTFlagsEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewStringWinRTFlagsEnumVtbl>().ref;
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
}

final class __IMapViewStringWinRTFlagsEnumVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewUint8Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint8Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapViewUint8InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewUint8InspectableVtbl>().ref;
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
}

final class __IMapViewUint8InspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewUint16Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint16Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapViewUint16InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewUint16InspectableVtbl>().ref;
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
}

final class __IMapViewUint16InspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewUint32Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint32Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapViewUint32InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewUint32InspectableVtbl>().ref;
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
}

final class __IMapViewUint32InspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewUint64Inspectable<V> extends IMapView<int, V> {
  _IMapViewUint64Inspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      super.kIntType,
      required this.vObjectCreator})
      : super(vObjectCreator: vObjectCreator);

  late final __IMapViewUint64InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewUint64InspectableVtbl>().ref;
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
}

final class __IMapViewUint64InspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewUriString extends IMapView<Uri, String> {
  _IMapViewUriString.fromPtr(super.ptr, {required super.iterableIid});

  late final __IMapViewUriStringVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewUriStringVtbl>().ref;

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
}

final class __IMapViewUriStringVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewWinRTEnumInspectable<K, V> extends IMapView<K, V> {
  _IMapViewWinRTEnumInspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      required this.kEnumCreator,
      required this.vObjectCreator})
      : super(kEnumCreator: kEnumCreator, vObjectCreator: vObjectCreator);

  late final __IMapViewWinRTEnumInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewWinRTEnumInspectableVtbl>().ref;
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
}

final class __IMapViewWinRTEnumInspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}

final class _IMapViewWinRTFlagsEnumInspectable<K, V> extends IMapView<K, V> {
  _IMapViewWinRTFlagsEnumInspectable.fromPtr(super.ptr,
      {required super.iterableIid,
      required this.kEnumCreator,
      required this.vObjectCreator})
      : super(kEnumCreator: kEnumCreator, vObjectCreator: vObjectCreator);

  late final __IMapViewWinRTFlagsEnumInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IMapViewWinRTFlagsEnumInspectableVtbl>().ref;
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
}

final class __IMapViewWinRTFlagsEnumInspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> first,
              Pointer<COMObject> second)>> Split;
}
