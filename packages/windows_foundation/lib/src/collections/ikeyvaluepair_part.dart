// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'ikeyvaluepair.dart';

final class _IKeyValuePairGuidInspectable<V> extends IKeyValuePair<Guid, V> {
  _IKeyValuePairGuidInspectable.fromPtr(super.ptr, {required this.creator});

  late final __IKeyValuePairGuidInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairGuidInspectableVtbl>().ref;
  final COMObjectCreator<V> creator;

  @override
  Guid get key {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = _vtable.get_Key.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairGuidInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairGuidObject extends IKeyValuePair<Guid, Object?> {
  _IKeyValuePairGuidObject.fromPtr(super.ptr);

  late final __IKeyValuePairGuidObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairGuidObjectVtbl>().ref;

  @override
  Guid get key {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = _vtable.get_Key.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  Object? get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairGuidObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairInt16Inspectable<V> extends IKeyValuePair<int, V> {
  _IKeyValuePairInt16Inspectable.fromPtr(super.ptr, {required this.creator});

  late final __IKeyValuePairInt16InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairInt16InspectableVtbl>().ref;
  final COMObjectCreator<V> creator;

  @override
  int get key {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_Key.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int16> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairInt16InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int16> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairInt32Inspectable<V> extends IKeyValuePair<int, V> {
  _IKeyValuePairInt32Inspectable.fromPtr(super.ptr, {required this.creator});

  late final __IKeyValuePairInt32InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairInt32InspectableVtbl>().ref;
  final COMObjectCreator<V> creator;

  @override
  int get key {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Key.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairInt32InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairInt64Inspectable<V> extends IKeyValuePair<int, V> {
  _IKeyValuePairInt64Inspectable.fromPtr(super.ptr, {required this.creator});

  late final __IKeyValuePairInt64InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairInt64InspectableVtbl>().ref;
  final COMObjectCreator<V> creator;

  @override
  int get key {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = _vtable.get_Key.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairInt64InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairObjectObject extends IKeyValuePair<Object, Object?> {
  _IKeyValuePairObjectObject.fromPtr(super.ptr);

  late final __IKeyValuePairObjectObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairObjectObjectVtbl>().ref;

  @override
  Object get key {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Key.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(retValuePtr).value as Object;
  }

  @override
  Object? get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairObjectObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairStringInspectable<V>
    extends IKeyValuePair<String, V> {
  _IKeyValuePairStringInspectable.fromPtr(super.ptr, {required this.creator});

  late final __IKeyValuePairStringInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairStringInspectableVtbl>().ref;
  final COMObjectCreator<V> creator;

  @override
  String get key {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Key.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairStringInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairStringObject extends IKeyValuePair<String, Object?> {
  _IKeyValuePairStringObject.fromPtr(super.ptr);

  late final __IKeyValuePairStringObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairStringObjectVtbl>().ref;

  @override
  String get key {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Key.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  Object? get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairStringObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairStringString extends IKeyValuePair<String, String> {
  _IKeyValuePairStringString.fromPtr(super.ptr);

  late final __IKeyValuePairStringStringVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairStringStringVtbl>().ref;

  @override
  String get key {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Key.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  String get value {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Value.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IKeyValuePairStringStringVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)>> get_Value;
}

final class _IKeyValuePairStringWinRTEnum<V> extends IKeyValuePair<String, V> {
  _IKeyValuePairStringWinRTEnum.fromPtr(super.ptr, {required this.enumCreator});

  late final __IKeyValuePairStringWinRTEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairStringWinRTEnumVtbl>().ref;
  final EnumCreator<V> enumCreator;

  @override
  String get key {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Key.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Value.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IKeyValuePairStringWinRTEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>> get_Value;
}

final class _IKeyValuePairStringWinRTFlagsEnum<V>
    extends IKeyValuePair<String, V> {
  _IKeyValuePairStringWinRTFlagsEnum.fromPtr(super.ptr,
      {required this.enumCreator});

  late final __IKeyValuePairStringWinRTFlagsEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairStringWinRTFlagsEnumVtbl>().ref;
  final EnumCreator<V> enumCreator;

  @override
  String get key {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Key.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_Value.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IKeyValuePairStringWinRTFlagsEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Value;
}

final class _IKeyValuePairUint8Inspectable<V> extends IKeyValuePair<int, V> {
  _IKeyValuePairUint8Inspectable.fromPtr(super.ptr, {required this.creator});

  late final __IKeyValuePairUint8InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairUint8InspectableVtbl>().ref;
  final COMObjectCreator<V> creator;

  @override
  int get key {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = _vtable.get_Key.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint8> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairUint8InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint8> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairUint16Inspectable<V> extends IKeyValuePair<int, V> {
  _IKeyValuePairUint16Inspectable.fromPtr(super.ptr, {required this.creator});

  late final __IKeyValuePairUint16InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairUint16InspectableVtbl>().ref;
  final COMObjectCreator<V> creator;

  @override
  int get key {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = _vtable.get_Key.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint16> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairUint16InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint16> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairUint32Inspectable<V> extends IKeyValuePair<int, V> {
  _IKeyValuePairUint32Inspectable.fromPtr(super.ptr, {required this.creator});

  late final __IKeyValuePairUint32InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairUint32InspectableVtbl>().ref;
  final COMObjectCreator<V> creator;

  @override
  int get key {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_Key.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairUint32InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairUint64Inspectable<V> extends IKeyValuePair<int, V> {
  _IKeyValuePairUint64Inspectable.fromPtr(super.ptr, {required this.creator});

  late final __IKeyValuePairUint64InspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairUint64InspectableVtbl>().ref;
  final COMObjectCreator<V> creator;

  @override
  int get key {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = _vtable.get_Key.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint64> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairUint64InspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint64> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairUriString extends IKeyValuePair<Uri, String> {
  _IKeyValuePairUriString.fromPtr(super.ptr);

  late final __IKeyValuePairUriStringVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairUriStringVtbl>().ref;

  @override
  Uri get key {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Key.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    return retValuePtr.toWinRTUri().toDartUri();
  }

  @override
  String get value {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Value.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IKeyValuePairUriStringVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)>> get_Value;
}

final class _IKeyValuePairWinRTEnumInspectable<K, V>
    extends IKeyValuePair<K, V> {
  _IKeyValuePairWinRTEnumInspectable.fromPtr(super.ptr,
      {required this.enumKeyCreator, required this.creator});

  late final __IKeyValuePairWinRTEnumInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairWinRTEnumInspectableVtbl>().ref;
  final EnumCreator<K> enumKeyCreator;
  final COMObjectCreator<V> creator;

  @override
  K get key {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Key.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumKeyCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairWinRTEnumInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}

final class _IKeyValuePairWinRTFlagsEnumInspectable<K, V>
    extends IKeyValuePair<K, V> {
  _IKeyValuePairWinRTFlagsEnumInspectable.fromPtr(super.ptr,
      {required this.enumKeyCreator, required this.creator});

  late final __IKeyValuePairWinRTFlagsEnumInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IKeyValuePairWinRTFlagsEnumInspectableVtbl>().ref;
  final EnumCreator<K> enumKeyCreator;
  final COMObjectCreator<V> creator;

  @override
  K get key {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_Key.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumKeyCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  V get value {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
}

final class __IKeyValuePairWinRTFlagsEnumInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Key;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> get_Value;
}
