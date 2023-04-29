// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'iiterator.dart';

class _IIteratorBool extends IIterator<bool> {
  _IIteratorBool.fromPtr(super.ptr);

  @override
  bool get current {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<bool> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Bool>(valueSize);

      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 valueSize,
                                  Pointer<Bool> value,
                                  Pointer<Uint32> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int valueSize,
                          Pointer<Bool> value, Pointer<Uint32> retValuePtr)>()(
              ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorGuid extends IIterator<Guid> {
  _IIteratorGuid.fromPtr(super.ptr);

  @override
  Guid get current {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<GUID> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<Guid> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<GUID>(valueSize);

      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 valueSize,
                                  Pointer<GUID> value,
                                  Pointer<Uint32> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int valueSize,
                          Pointer<GUID> value, Pointer<Uint32> retValuePtr)>()(
              ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorInspectable<T> extends IIterator<T> {
  _IIteratorInspectable.fromPtr(super.ptr, {required this.creator});

  final T Function(Pointer<COMObject>) creator;

  @override
  T get current {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return creator(retValuePtr);
  }

  @override
  int getMany(int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<COMObject>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<COMObject> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(creator, length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorInt16 extends IIterator<int> {
  _IIteratorInt16.fromPtr(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int16> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int16> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Int16>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<Int16> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<Int16> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorInt32 extends IIterator<int> {
  _IIteratorInt32.fromPtr(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Int32>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<Int32> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorInt64 extends IIterator<int> {
  _IIteratorInt64.fromPtr(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int64> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Int64>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<Int64> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<Int64> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorString extends IIterator<String> {
  _IIteratorString.fromPtr(super.ptr);

  @override
  String get current {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<String> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<IntPtr>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<IntPtr> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<IntPtr> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorUint8 extends IIterator<int> {
  _IIteratorUint8.fromPtr(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Uint8> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint8> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint8>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint8> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<Uint8> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorUint16 extends IIterator<int> {
  _IIteratorUint16.fromPtr(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint16> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint16> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint16>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint16> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<Uint16> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorUint32 extends IIterator<int> {
  _IIteratorUint32.fromPtr(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint32>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<Uint32> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorUint64 extends IIterator<int> {
  _IIteratorUint64.fromPtr(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint64> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint64> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint64>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint64> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<Uint64> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorUri extends IIterator<Uri> {
  _IIteratorUri.fromPtr(super.ptr);

  @override
  Uri get current {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final winrtUri = retValuePtr.toWinRTUri();
    return winrtUri.toDartUri();
  }

  @override
  int getMany(int valueSize, List<Uri> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<COMObject>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<COMObject> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toDartUriList(length: retValuePtr.value));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorWinRTEnum<T> extends IIterator<T> {
  _IIteratorWinRTEnum.fromPtr(super.ptr, {required this.enumCreator});

  final T Function(int) enumCreator;

  @override
  T get current {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Int32>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<Int32> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value).map(enumCreator));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IIteratorWinRTFlagsEnum<T> extends IIterator<T> {
  _IIteratorWinRTFlagsEnum.fromPtr(super.ptr, {required this.enumCreator});

  final T Function(int) enumCreator;

  @override
  T get current {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pArray = calloc<Uint32>(valueSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int valueSize,
                      Pointer<Uint32> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

      if (retValuePtr.value > 0) {
        value.addAll(pArray.toList(length: retValuePtr.value).map(enumCreator));
      }
      free(pArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
