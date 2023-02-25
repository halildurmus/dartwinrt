// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

part of 'ivector.dart';

class _IVectorBool extends IVector<bool> {
  _IVectorBool.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  bool getAt(int index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Uint32 index, Pointer<Bool>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int index, Pointer<Bool>)>()(
              ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(bool value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Bool value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, bool value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, bool value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Bool value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, bool value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, bool value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Bool value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, bool value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Bool value)>>>()
        .value
        .asFunction<int Function(LPVTBL, bool value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<bool> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Bool>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Bool> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Bool> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<bool> value) {
    final pArray = calloc<Bool>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 valueSize, Pointer<Bool> value)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int valueSize, Pointer<Bool> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorGuid extends IVector<Guid> {
  _IVectorGuid.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  Guid getAt(int index) {
    final retValuePtr = calloc<GUID>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL, Uint32 index, Pointer<GUID>)>>>()
                  .value
                  .asFunction<int Function(LPVTBL, int index, Pointer<GUID>)>()(
              ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(Guid value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final valueNativeGuidPtr = value.toNativeGUID();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, GUID value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, GUID value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, valueNativeGuidPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(valueNativeGuidPtr);

      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Guid value) {
    final valueNativeGuidPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, GUID value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, GUID value)>()(
        ptr.ref.lpVtbl, index, valueNativeGuidPtr.ref);

    if (FAILED(hr)) throw WindowsException(hr);

    free(valueNativeGuidPtr);
  }

  @override
  void insertAt(int index, Guid value) {
    final valueNativeGuidPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, GUID value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, GUID value)>()(
        ptr.ref.lpVtbl, index, valueNativeGuidPtr.ref);

    if (FAILED(hr)) throw WindowsException(hr);

    free(valueNativeGuidPtr);
  }

  @override
  void append(Guid value) {
    final valueNativeGuidPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, GUID value)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, GUID value)>()(ptr.ref.lpVtbl, valueNativeGuidPtr.ref);

    if (FAILED(hr)) throw WindowsException(hr);

    free(valueNativeGuidPtr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<Guid> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<GUID>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<GUID> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<GUID> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Guid> value) {
    final nativeGuids = <Pointer<GUID>>[];
    final pArray = calloc<GUID>(value.length);
    for (var i = 0; i < value.length; i++) {
      final nativeGuidPtr = value.elementAt(i).toNativeGUID();
      pArray[i] = nativeGuidPtr.ref;
      nativeGuids.add(nativeGuidPtr);
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 valueSize, Pointer<GUID> value)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int valueSize, Pointer<GUID> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    nativeGuids.forEach(free);
    free(pArray);
  }
}

class _IVectorInspectable<T> extends IVector<T> {
  _IVectorInspectable.fromRawPointer(super.ptr,
      {required super.iterableIid, super.creator});

  @override
  T getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 index, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return _creator!(retValuePtr);
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, LPVTBL value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(ptr.ref.lpVtbl,
          (value as IInspectable).ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, T value) {
    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, LPVTBL value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, LPVTBL value)>()(
            ptr.ref.lpVtbl, index, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, LPVTBL value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, LPVTBL value)>()(
            ptr.ref.lpVtbl, index, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(T value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<HRESULT Function(LPVTBL, LPVTBL value)>>>()
                .value
                .asFunction<int Function(LPVTBL, LPVTBL value)>()(
            ptr.ref.lpVtbl, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<COMObject>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<COMObject> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(_creator!, length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<T> value) {
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = (value as List<IInspectable>).elementAt(i).ptr.ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 valueSize,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL, int valueSize, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorInt16 extends IVector<int> {
  _IVectorInt16.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Int16>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Int16>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Int16 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Int16 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Int16 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Int16 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int16>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int16> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Int16> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Int16>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 valueSize, Pointer<Int16> value)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int valueSize, Pointer<Int16> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorInt32 extends IVector<int> {
  _IVectorInt32.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Int32>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Int32>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Int32 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Int32 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Int32 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Int32 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Int32> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Int32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 valueSize, Pointer<Int32> value)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int valueSize, Pointer<Int32> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorInt64 extends IVector<int> {
  _IVectorInt64.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Int64>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Int64>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Int64 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Int64 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Int64 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Int64 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int64>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int64> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Int64> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Int64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 valueSize, Pointer<Int64> value)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int valueSize, Pointer<Int64> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorString extends IVector<String> {
  _IVectorString.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  String getAt(int index) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<IntPtr>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(String value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final valueHString = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, IntPtr value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, valueHString, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(valueHString);

      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, String value) {
    final valueHString = convertToHString(value);

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, IntPtr value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, valueHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(valueHString);
  }

  @override
  void insertAt(int index, String value) {
    final valueHString = convertToHString(value);

    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, IntPtr value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, valueHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(valueHString);
  }

  @override
  void append(String value) {
    final valueHString = convertToHString(value);

    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, valueHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(valueHString);
  }

  @override
  int getMany(int startIndex, int valueSize, List<String> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<IntPtr>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<IntPtr> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<IntPtr> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<String> value) {
    final handles = <int>[];
    final pArray = calloc<HSTRING>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = convertToHString(value.elementAt(i));
      handles.add(pArray[i]);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        LPVTBL, Uint32 valueSize, Pointer<IntPtr> value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int valueSize,
                Pointer<IntPtr> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    handles.forEach(WindowsDeleteString);
    free(pArray);
  }
}

class _IVectorUint8 extends IVector<int> {
  _IVectorUint8.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint8>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint8>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Uint8 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Uint8 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Uint8 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint8 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint8>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint8> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint8> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Uint8>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 valueSize, Pointer<Uint8> value)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int valueSize, Pointer<Uint8> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorUint16 extends IVector<int> {
  _IVectorUint16.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint16>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint16>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Uint16 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, Uint16 value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, Uint16 value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint16 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint16>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint16> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint16> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Uint16>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        LPVTBL, Uint32 valueSize, Pointer<Uint16> value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int valueSize,
                Pointer<Uint16> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorUint32 extends IVector<int> {
  _IVectorUint32.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint32>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Uint32 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, Uint32 value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, Uint32 value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint32 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint32> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Uint32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        LPVTBL, Uint32 valueSize, Pointer<Uint32> value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int valueSize,
                Pointer<Uint32> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorUint64 extends IVector<int> {
  _IVectorUint64.fromRawPointer(super.ptr,
      {required super.iterableIid, super.intType});

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint64>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint64>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(int value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(LPVTBL, Uint64 value,
                          Pointer<Uint32> index, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(LPVTBL, int value, Pointer<Uint32> index,
                  Pointer<Bool>)>()(ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, Uint64 value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, Uint64 value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint64 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint64>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint64> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint64> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> value) {
    final pArray = calloc<Uint64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        LPVTBL, Uint32 valueSize, Pointer<Uint64> value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int valueSize,
                Pointer<Uint64> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorUri extends IVector<Uri> {
  _IVectorUri.fromRawPointer(super.ptr, {required super.iterableIid});

  @override
  Uri getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 index, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
    final uriAsString = winrtUri.toString();
    winrtUri.release();

    return Uri.parse(uriAsString);
  }

  @override
  bool indexOf(Uri value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();
    final valueUri = winrt_uri.Uri.createUri(value.toString());

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, LPVTBL value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, valueUri.ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      valueUri.release();

      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Uri value) {
    final valueUri = winrt_uri.Uri.createUri(value.toString());

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, LPVTBL value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, LPVTBL value)>()(
            ptr.ref.lpVtbl, index, valueUri.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);

    valueUri.release();
  }

  @override
  void insertAt(int index, Uri value) {
    final valueUri = winrt_uri.Uri.createUri(value.toString());

    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, LPVTBL value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, LPVTBL value)>()(
            ptr.ref.lpVtbl, index, valueUri.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);

    valueUri.release();
  }

  @override
  void append(Uri value) {
    final valueUri = winrt_uri.Uri.createUri(value.toString());

    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, LPVTBL value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL,
                LPVTBL value)>()(ptr.ref.lpVtbl, valueUri.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);

    valueUri.release();
  }

  @override
  int getMany(int startIndex, int valueSize, List<Uri> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<COMObject>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<COMObject> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray
            .toList(winrt_uri.Uri.fromRawPointer, length: valueSize)
            .map((winrtUri) => Uri.parse(winrtUri.toString())));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Uri> value) {
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      final winrtUri = winrt_uri.Uri.createUri(value.elementAt(i).toString());
      pArray[i] = winrtUri.ptr.ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 valueSize,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL, int valueSize, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorWinRTEnum<T> extends IVector<T> {
  _IVectorWinRTEnum.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumCreator});

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Int32>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Int32>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Int32 value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Int32 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 index, Int32 value)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Int32 value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL,
                int value)>()(ptr.ref.lpVtbl, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Int32> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize).map(_enumCreator!));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<T> value) {
    final pArray = calloc<Int32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = (value as List<WinRTEnum>).elementAt(i).value;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 valueSize, Pointer<Int32> value)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int valueSize, Pointer<Int32> value)>()(
        ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}

class _IVectorWinRTFlagsEnum<T> extends IVector<T> {
  _IVectorWinRTFlagsEnum.fromRawPointer(super.ptr,
      {required super.iterableIid, super.enumCreator});

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, Uint32 index, Pointer<Uint32>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int index, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Uint32 value,
                              Pointer<Uint32> index, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int value, Pointer<Uint32> index,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, T value) {
    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, Uint32 value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 index, Uint32 value)>>>()
                .value
                .asFunction<int Function(LPVTBL, int index, int value)>()(
            ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint32 value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL,
                int value)>()(ptr.ref.lpVtbl, (value as WinRTEnum).value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  @override
  int getMany(int startIndex, int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL,
                              Uint32 startIndex,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, int startIndex, int valueSize,
                      Pointer<Uint32> value, Pointer<Uint32>)>()(
          ptr.ref.lpVtbl, startIndex, valueSize, pArray, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: valueSize).map(_enumCreator!));
      }
      free(pArray);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<T> value) {
    final pArray = calloc<Uint32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = (value as List<WinRTEnum>).elementAt(i).value;
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        LPVTBL, Uint32 valueSize, Pointer<Uint32> value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int valueSize,
                Pointer<Uint32> value)>()(ptr.ref.lpVtbl, value.length, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    free(pArray);
  }
}
