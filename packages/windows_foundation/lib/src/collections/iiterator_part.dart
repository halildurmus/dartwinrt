// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'iiterator.dart';

final class _IIteratorBool extends IIterator<bool> {
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
  int getMany(int itemsSize, List<bool> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Bool>(itemsSize);

      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 itemsSize,
                                  Pointer<Bool> items,
                                  Pointer<Uint32> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int itemsSize,
                          Pointer<Bool> items, Pointer<Uint32> retValuePtr)>()(
              ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorGuid extends IIterator<Guid> {
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
  int getMany(int itemsSize, List<Guid> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<GUID>(itemsSize);

      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 itemsSize,
                                  Pointer<GUID> items,
                                  Pointer<Uint32> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int itemsSize,
                          Pointer<GUID> items, Pointer<Uint32> retValuePtr)>()(
              ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorInspectable<T> extends IIterator<T> {
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
  int getMany(int itemsSize, List<T> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<COMObject>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<COMObject> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(creator, length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorInt16 extends IIterator<int> {
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
  int getMany(int itemsSize, List<int> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Int16>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<Int16> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Int16> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorInt32 extends IIterator<int> {
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
  int getMany(int itemsSize, List<int> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Int32>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<Int32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Int32> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorInt64 extends IIterator<int> {
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
  int getMany(int itemsSize, List<int> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Int64>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<Int64> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Int64> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorString extends IIterator<String> {
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
  int getMany(int itemsSize, List<String> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<IntPtr>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<IntPtr> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<IntPtr> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorUint8 extends IIterator<int> {
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
  int getMany(int itemsSize, List<int> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Uint8>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<Uint8> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Uint8> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorUint16 extends IIterator<int> {
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
  int getMany(int itemsSize, List<int> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Uint16>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<Uint16> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Uint16> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorUint32 extends IIterator<int> {
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
  int getMany(int itemsSize, List<int> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Uint32>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<Uint32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Uint32> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorUint64 extends IIterator<int> {
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
  int getMany(int itemsSize, List<int> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Uint64>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<Uint64> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Uint64> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorUri extends IIterator<Uri> {
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
  int getMany(int itemsSize, List<Uri> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<COMObject>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<COMObject> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(pItemsArray.toDartUriList(length: retValuePtr.value));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorWinRTEnum<T> extends IIterator<T> {
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
  int getMany(int itemsSize, List<T> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Int32>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<Int32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Int32> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(
            pItemsArray.toList(length: retValuePtr.value).map(enumCreator));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IIteratorWinRTFlagsEnum<T> extends IIterator<T> {
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
  int getMany(int itemsSize, List<T> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Uint32>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 itemsSize,
                              Pointer<Uint32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Uint32> items, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, itemsSize, pItemsArray, retValuePtr);

      if (retValuePtr.value > 0) {
        items.addAll(
            pItemsArray.toList(length: retValuePtr.value).map(enumCreator));
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
