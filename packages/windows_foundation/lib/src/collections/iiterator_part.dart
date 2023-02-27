// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

part of 'iiterator.dart';

class _IIteratorBool extends IIterator<bool> {
  _IIteratorBool.fromRawPointer(super.ptr);

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
                              LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<bool> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Bool>(valueSize);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl,
                                  Uint32 valueSize,
                                  Pointer<Bool> value,
                                  Pointer<Uint32> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int valueSize,
                          Pointer<Bool> value, Pointer<Uint32> retValuePtr)>()(
              ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorGuid extends IIterator<Guid> {
  _IIteratorGuid.fromRawPointer(super.ptr);

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
                              LPVTBL lpVtbl, Pointer<GUID> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<GUID> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<Guid> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<GUID>(valueSize);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl,
                                  Uint32 valueSize,
                                  Pointer<GUID> value,
                                  Pointer<Uint32> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int valueSize,
                          Pointer<GUID> value, Pointer<Uint32> retValuePtr)>()(
              ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorInspectable<T> extends IIterator<T> {
  _IIteratorInspectable.fromRawPointer(super.ptr, {super.creator});

  @override
  T get current {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return _creator!(retValuePtr);
  }

  @override
  int getMany(int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<COMObject>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<COMObject> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorInt16 extends IIterator<int> {
  _IIteratorInt16.fromRawPointer(super.ptr);

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
                              LPVTBL lpVtbl, Pointer<Int16> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int16> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int16>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<Int16> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<Int16> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorInt32 extends IIterator<int> {
  _IIteratorInt32.fromRawPointer(super.ptr);

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
                              LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<Int32> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorInt64 extends IIterator<int> {
  _IIteratorInt64.fromRawPointer(super.ptr);

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
                              LPVTBL lpVtbl, Pointer<Int64> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int64> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int64>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<Int64> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<Int64> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorString extends IIterator<String> {
  _IIteratorString.fromRawPointer(super.ptr);

  @override
  String get current {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

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

    final pArray = calloc<IntPtr>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<IntPtr> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<IntPtr> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorUint8 extends IIterator<int> {
  _IIteratorUint8.fromRawPointer(super.ptr);

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
                              LPVTBL lpVtbl, Pointer<Uint8> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Uint8> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint8>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint8> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<Uint8> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorUint16 extends IIterator<int> {
  _IIteratorUint16.fromRawPointer(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Uint16> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Uint16> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint16>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint16> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<Uint16> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorUint32 extends IIterator<int> {
  _IIteratorUint32.fromRawPointer(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<Uint32> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorUint64 extends IIterator<int> {
  _IIteratorUint64.fromRawPointer(super.ptr);

  @override
  int get current {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Uint64> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Uint64> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<int> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint64>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint64> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<Uint64> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorUri extends IIterator<Uri> {
  _IIteratorUri.fromRawPointer(super.ptr);

  @override
  Uri get current {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

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
  int getMany(int valueSize, List<Uri> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<COMObject>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<COMObject> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<COMObject> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorWinRTEnum<T> extends IIterator<T> {
  _IIteratorWinRTEnum.fromRawPointer(super.ptr, {super.enumCreator});

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
                              LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Int32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<Int32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<Int32> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}

class _IIteratorWinRTFlagsEnum<T> extends IIterator<T> {
  _IIteratorWinRTFlagsEnum.fromRawPointer(super.ptr, {super.enumCreator});

  @override
  T get current {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int valueSize, List<T> value) {
    final retValuePtr = calloc<Uint32>();

    final pArray = calloc<Uint32>(valueSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              Uint32 valueSize,
                              Pointer<Uint32> value,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int valueSize,
                      Pointer<Uint32> value, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, valueSize, pArray, retValuePtr);

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
}
