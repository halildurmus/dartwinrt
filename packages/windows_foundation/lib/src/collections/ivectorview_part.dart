// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'ivectorview.dart';

final class _IVectorViewBool extends IVectorView<bool> {
  _IVectorViewBool.fromPtr(super.ptr, {required super.iterableIid});

  @override
  bool getAt(int index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Bool> retValuePtr)>()(
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
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Bool value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, bool value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<bool> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Bool>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Bool> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Bool> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewGuid extends IVectorView<Guid> {
  _IVectorViewGuid.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Guid getAt(int index) {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<GUID> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<GUID> retValuePtr)>()(
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

    try {
      final valueNativeGuidPtr = value.toNativeGUID();

      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  GUID value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, GUID value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, valueNativeGuidPtr.ref, index, retValuePtr);

      free(valueNativeGuidPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<Guid> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<GUID>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<GUID> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<GUID> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewInspectable<T> extends IVectorView<T> {
  _IVectorViewInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.creator})
      : super(creator: creator);

  final T Function(Pointer<COMObject>) creator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return creator(retValuePtr);
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl,
          (value as IInspectable).ptr.ref.lpVtbl,
          index,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<T> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<COMObject> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<COMObject> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewInt16 extends IVectorView<int> {
  _IVectorViewInt16.fromPtr(super.ptr,
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
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Int16> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Int16> retValuePtr)>()(
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
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int16 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<int> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Int16> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Int16> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewInt32 extends IVectorView<int> {
  _IVectorViewInt32.fromPtr(super.ptr,
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
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Int32> retValuePtr)>()(
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
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int32 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<int> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Int32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Int32> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewInt64 extends IVectorView<int> {
  _IVectorViewInt64.fromPtr(super.ptr,
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
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Int64> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Int64> retValuePtr)>()(
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
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int64 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<int> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Int64> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Int64> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewString extends IVectorView<String> {
  _IVectorViewString.fromPtr(super.ptr, {required super.iterableIid});

  @override
  String getAt(int index) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<IntPtr> retValuePtr)>()(
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

    try {
      final valueHString = value.toHString();

      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  IntPtr value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, valueHString, index, retValuePtr);

      WindowsDeleteString(valueHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<String> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<IntPtr> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<IntPtr> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewUint8 extends IVectorView<int> {
  _IVectorViewUint8.fromPtr(super.ptr,
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
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint8> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint8> retValuePtr)>()(
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
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint8 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<int> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Uint8> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Uint8> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewUint16 extends IVectorView<int> {
  _IVectorViewUint16.fromPtr(super.ptr,
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
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint16> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint16> retValuePtr)>()(
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
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint16 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<int> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Uint16> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Uint16> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewUint32 extends IVectorView<int> {
  _IVectorViewUint32.fromPtr(super.ptr,
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
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint32> retValuePtr)>()(
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
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<int> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Uint32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Uint32> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewUint64 extends IVectorView<int> {
  _IVectorViewUint64.fromPtr(super.ptr,
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
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint64> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint64> retValuePtr)>()(
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
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint64 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<int> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Uint64> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Uint64> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewUri extends IVectorView<Uri> {
  _IVectorViewUri.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Uri getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final winrtUri = retValuePtr.toWinRTUri();
    return winrtUri.toDartUri();
  }

  @override
  bool indexOf(Uri value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueUri = value.toWinRTUri();

      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueUri.ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<Uri> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<COMObject> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<COMObject> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewWinRTEnum<T> extends IVectorView<T> {
  _IVectorViewWinRTEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  final T Function(int) enumCreator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int32 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<T> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Int32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Int32> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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

final class _IVectorViewWinRTFlagsEnum<T> extends IVectorView<T> {
  _IVectorViewWinRTFlagsEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  final T Function(int) enumCreator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(T value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Uint32 value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<T> items) {
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
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Uint32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Uint32> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, pItemsArray, retValuePtr);

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
