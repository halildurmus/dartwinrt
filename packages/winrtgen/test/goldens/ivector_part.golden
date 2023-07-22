// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'ivector.dart';

final class _IVectorAccessListEntry extends IVector<AccessListEntry> {
  _IVectorAccessListEntry.fromPtr(super.ptr, {required super.iterableIid});

  @override
  AccessListEntry getAt(int index) {
    final retValuePtr = calloc<NativeAccessListEntry>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeAccessListEntry> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeAccessListEntry> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(AccessListEntry value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeAccessListEntry value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      NativeAccessListEntry value,
                      Pointer<Uint32> index,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, AccessListEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeAccessListEntry value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeAccessListEntry value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, AccessListEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeAccessListEntry value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeAccessListEntry value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(AccessListEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            NativeAccessListEntry value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, NativeAccessListEntry value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<AccessListEntry> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeAccessListEntry>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeAccessListEntry> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeAccessListEntry> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<AccessListEntry> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeAccessListEntry>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeAccessListEntry> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeAccessListEntry> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorBackgroundTransferFileRange
    extends IVector<BackgroundTransferFileRange> {
  _IVectorBackgroundTransferFileRange.fromPtr(super.ptr,
      {required super.iterableIid});

  @override
  BackgroundTransferFileRange getAt(int index) {
    final retValuePtr = calloc<NativeBackgroundTransferFileRange>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Uint32 index,
                          Pointer<NativeBackgroundTransferFileRange>
                              retValuePtr)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int index,
                  Pointer<NativeBackgroundTransferFileRange>
                      retValuePtr)>()(ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(BackgroundTransferFileRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeBackgroundTransferFileRange value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      NativeBackgroundTransferFileRange value,
                      Pointer<Uint32> index,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, BackgroundTransferFileRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeBackgroundTransferFileRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeBackgroundTransferFileRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, BackgroundTransferFileRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeBackgroundTransferFileRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeBackgroundTransferFileRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(BackgroundTransferFileRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            NativeBackgroundTransferFileRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl,
                    NativeBackgroundTransferFileRange value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<BackgroundTransferFileRange> items}) getMany(
      int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeBackgroundTransferFileRange>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeBackgroundTransferFileRange> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeBackgroundTransferFileRange> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<BackgroundTransferFileRange> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeBackgroundTransferFileRange>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                        Pointer<NativeBackgroundTransferFileRange> items)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                int itemsSize,
                Pointer<NativeBackgroundTransferFileRange>
                    items)>()(ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorBasicGeoposition extends IVector<BasicGeoposition> {
  _IVectorBasicGeoposition.fromPtr(super.ptr, {required super.iterableIid});

  @override
  BasicGeoposition getAt(int index) {
    final retValuePtr = calloc<NativeBasicGeoposition>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeBasicGeoposition> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeBasicGeoposition> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(BasicGeoposition value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeBasicGeoposition value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      NativeBasicGeoposition value,
                      Pointer<Uint32> index,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, BasicGeoposition value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeBasicGeoposition value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeBasicGeoposition value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, BasicGeoposition value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeBasicGeoposition value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeBasicGeoposition value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(BasicGeoposition value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            NativeBasicGeoposition value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, NativeBasicGeoposition value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<BasicGeoposition> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeBasicGeoposition>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeBasicGeoposition> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeBasicGeoposition> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<BasicGeoposition> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeBasicGeoposition>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeBasicGeoposition> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeBasicGeoposition> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorBool extends IVector<bool> {
  _IVectorBool.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(bool value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                        HRESULT Function(
                            VTablePointer lpVtbl, Uint32 index, Bool value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, bool value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, bool value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Uint32 index, Bool value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, bool value)>()(
        ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(bool value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Bool value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<bool> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Bool>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<bool> items) {
    final itemsArray = calloc<Bool>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Bool> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Bool> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorColor extends IVector<Color> {
  _IVectorColor.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Color getAt(int index) {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeColor> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeColor> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(Color value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  NativeColor value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, NativeColor value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeColor value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeColor value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeColor value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeColor value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeColor value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeColor value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Color> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeColor>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeColor> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeColor> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Color> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeColor>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeColor> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeColor> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorDateTime extends IVector<DateTime> {
  _IVectorDateTime.fromPtr(super.ptr, {required super.iterableIid});

  @override
  DateTime getAt(int index) {
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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartDateTime();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(DateTime value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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
              ptr.ref.lpVtbl, value.toWinRTDateTime(), index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, DateTime value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, DateTime value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(DateTime value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<DateTime> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int64>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toDateTimeList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<DateTime> items) {
    final itemsArray = calloc<Int64>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toWinRTDateTime();
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Int64> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Int64> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorDouble extends IVector<double> {
  _IVectorDouble.fromPtr(super.ptr,
      {required super.iterableIid, super.doubleType});

  @override
  double getAt(int index) {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Double> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Double> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(double value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Double value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, double value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, double value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Double value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                double value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, double value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Double value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                double value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(double value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Double value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<double> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Double>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Double> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Double> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<double> items) {
    final itemsArray = calloc<Double>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Double> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Double> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorDuration extends IVector<Duration> {
  _IVectorDuration.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Duration getAt(int index) {
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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartDuration();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(Duration value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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
              ptr.ref.lpVtbl, value.toWinRTDuration(), index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Duration value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value.toWinRTDuration());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Duration value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value.toWinRTDuration());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Duration value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.toWinRTDuration());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Duration> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int64>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toDurationList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Duration> items) {
    final itemsArray = calloc<Int64>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toWinRTDuration();
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Int64> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Int64> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorFloat extends IVector<double> {
  _IVectorFloat.fromPtr(super.ptr,
      {required super.iterableIid, super.doubleType});

  @override
  double getAt(int index) {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<Float> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<Float> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(double value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Float value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, double value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, double value) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Float value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                double value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, double value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Float value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                double value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(double value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Float value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<double> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Float>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<Float> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<Float> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<double> items) {
    final itemsArray = calloc<Float>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Float> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Float> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorGpioChangeRecord extends IVector<GpioChangeRecord> {
  _IVectorGpioChangeRecord.fromPtr(super.ptr, {required super.iterableIid});

  @override
  GpioChangeRecord getAt(int index) {
    final retValuePtr = calloc<NativeGpioChangeRecord>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeGpioChangeRecord> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeGpioChangeRecord> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(GpioChangeRecord value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeGpioChangeRecord value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      NativeGpioChangeRecord value,
                      Pointer<Uint32> index,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, GpioChangeRecord value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeGpioChangeRecord value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeGpioChangeRecord value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, GpioChangeRecord value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeGpioChangeRecord value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeGpioChangeRecord value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(GpioChangeRecord value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            NativeGpioChangeRecord value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, NativeGpioChangeRecord value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<GpioChangeRecord> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeGpioChangeRecord>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeGpioChangeRecord> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeGpioChangeRecord> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<GpioChangeRecord> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeGpioChangeRecord>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeGpioChangeRecord> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeGpioChangeRecord> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorGuid extends IVector<Guid> {
  _IVectorGuid.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(Guid value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNativeGUID();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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
              ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Guid value) {
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Uint32 index, GUID value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, GUID value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Guid value) {
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Uint32 index, GUID value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, GUID value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Guid value) {
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, GUID value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, GUID value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Guid> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<GUID>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Guid> items) {
    final allocator = Arena();
    final itemsArray = calloc<GUID>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNativeGUID(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<GUID> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<GUID> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorInt16 extends IVector<int> {
  _IVectorInt16.fromPtr(super.ptr, {required super.iterableIid, super.intType});

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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(int value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int16 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int16 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int16 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int16>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> items) {
    final itemsArray = calloc<Int16>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Int16> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Int16> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorInt32 extends IVector<int> {
  _IVectorInt32.fromPtr(super.ptr, {required super.iterableIid, super.intType});

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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(int value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int32 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int32 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int32>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> items) {
    final itemsArray = calloc<Int32>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Int32> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Int32> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorInt64 extends IVector<int> {
  _IVectorInt64.fromPtr(super.ptr, {required super.iterableIid, super.intType});

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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(int value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Int64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int64>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> items) {
    final itemsArray = calloc<Int64>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Int64> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Int64> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorMediaTimeRange extends IVector<MediaTimeRange> {
  _IVectorMediaTimeRange.fromPtr(super.ptr, {required super.iterableIid});

  @override
  MediaTimeRange getAt(int index) {
    final retValuePtr = calloc<NativeMediaTimeRange>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeMediaTimeRange> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeMediaTimeRange> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(MediaTimeRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeMediaTimeRange value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeMediaTimeRange value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, MediaTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeMediaTimeRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeMediaTimeRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, MediaTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeMediaTimeRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeMediaTimeRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(MediaTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            NativeMediaTimeRange value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, NativeMediaTimeRange value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<MediaTimeRange> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeMediaTimeRange>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeMediaTimeRange> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeMediaTimeRange> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<MediaTimeRange> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeMediaTimeRange>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeMediaTimeRange> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeMediaTimeRange> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorMseTimeRange extends IVector<MseTimeRange> {
  _IVectorMseTimeRange.fromPtr(super.ptr, {required super.iterableIid});

  @override
  MseTimeRange getAt(int index) {
    final retValuePtr = calloc<NativeMseTimeRange>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeMseTimeRange> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeMseTimeRange> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(MseTimeRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeMseTimeRange value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeMseTimeRange value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, MseTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeMseTimeRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeMseTimeRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, MseTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeMseTimeRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeMseTimeRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(MseTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeMseTimeRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeMseTimeRange value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<MseTimeRange> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeMseTimeRange>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeMseTimeRange> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeMseTimeRange> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<MseTimeRange> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeMseTimeRange>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeMseTimeRange> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeMseTimeRange> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorNitRange extends IVector<NitRange> {
  _IVectorNitRange.fromPtr(super.ptr, {required super.iterableIid});

  @override
  NitRange getAt(int index) {
    final retValuePtr = calloc<NativeNitRange>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeNitRange> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeNitRange> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(NitRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeNitRange value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeNitRange value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, NitRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeNitRange value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeNitRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, NitRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeNitRange value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeNitRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(NitRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeNitRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeNitRange value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<NitRange> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeNitRange>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeNitRange> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeNitRange> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<NitRange> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeNitRange>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeNitRange> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeNitRange> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorInspectable<T> extends IVector<T> {
  _IVectorInspectable.fromPtr(super.ptr,
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
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as T;
    }

    return creator(retValuePtr);
  }

  @override
  (bool, {int index}) indexOf(T value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, (value as IInspectable).ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<T> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<COMObject>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(creator, length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<T> items) {
    final itemsArray = calloc<VTablePointer>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items.cast<IInspectable>()[i].ptr.ref.lpVtbl;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<VTablePointer> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<VTablePointer> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorObject extends IVector<Object?> {
  _IVectorObject.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Object? getAt(int index) {
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
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromPtr(retValuePtr).value;
  }

  @override
  (bool, {int index}) indexOf(Object? value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
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
          value?.intoBox().ptr.ref.lpVtbl ?? nullptr,
          index,
          retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Object? value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, value?.intoBox().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Object? value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, value?.intoBox().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Object? value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, value?.intoBox().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Object?> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<COMObject>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toObjectList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Object?> items) {
    final itemsArray = calloc<VTablePointer>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i]?.intoBox().ptr.ref.lpVtbl ?? nullptr;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<VTablePointer> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<VTablePointer> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorUri extends IVector<Uri?> {
  _IVectorUri.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Uri? getAt(int index) {
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
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return retValuePtr.toWinRTUri().toDartUri();
  }

  @override
  (bool, {int index}) indexOf(Uri? value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
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
          value?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr,
          index,
          retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Uri? value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, value?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Uri? value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, VTablePointer value)>()(
        ptr.ref.lpVtbl, index, value?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Uri? value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, value?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Uri?> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<COMObject>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toDartUriList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Uri?> items) {
    final itemsArray = calloc<VTablePointer>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i]?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<VTablePointer> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<VTablePointer> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorPoint extends IVector<Point> {
  _IVectorPoint.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Point getAt(int index) {
    final retValuePtr = calloc<NativePoint>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativePoint> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativePoint> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(Point value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  NativePoint value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, NativePoint value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Point value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativePoint value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativePoint value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Point value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativePoint value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativePoint value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Point value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativePoint value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativePoint value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Point> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativePoint>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativePoint> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativePoint> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Point> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativePoint>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativePoint> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativePoint> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorPointerDeviceUsage extends IVector<PointerDeviceUsage> {
  _IVectorPointerDeviceUsage.fromPtr(super.ptr, {required super.iterableIid});

  @override
  PointerDeviceUsage getAt(int index) {
    final retValuePtr = calloc<NativePointerDeviceUsage>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                          Pointer<NativePointerDeviceUsage> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int index,
                  Pointer<NativePointerDeviceUsage>
                      retValuePtr)>()(ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(PointerDeviceUsage value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativePointerDeviceUsage value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      NativePointerDeviceUsage value,
                      Pointer<Uint32> index,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, PointerDeviceUsage value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativePointerDeviceUsage value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativePointerDeviceUsage value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, PointerDeviceUsage value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativePointerDeviceUsage value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativePointerDeviceUsage value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(PointerDeviceUsage value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            NativePointerDeviceUsage value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, NativePointerDeviceUsage value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<PointerDeviceUsage> items}) getMany(
      int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativePointerDeviceUsage>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativePointerDeviceUsage> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativePointerDeviceUsage> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<PointerDeviceUsage> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativePointerDeviceUsage>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativePointerDeviceUsage> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativePointerDeviceUsage> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorRect extends IVector<Rect> {
  _IVectorRect.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Rect getAt(int index) {
    final retValuePtr = calloc<NativeRect>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeRect> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeRect> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(Rect value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  NativeRect value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, NativeRect value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Rect value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeRect value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeRect value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Rect value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeRect value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeRect value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Rect value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeRect value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, NativeRect value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Rect> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeRect>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeRect> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeRect> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Rect> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeRect>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeRect> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeRect> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorRectInt32 extends IVector<RectInt32> {
  _IVectorRectInt32.fromPtr(super.ptr, {required super.iterableIid});

  @override
  RectInt32 getAt(int index) {
    final retValuePtr = calloc<NativeRectInt32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeRectInt32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeRectInt32> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(RectInt32 value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeRectInt32 value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeRectInt32 value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, RectInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeRectInt32 value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeRectInt32 value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, RectInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeRectInt32 value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeRectInt32 value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(RectInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeRectInt32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeRectInt32 value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<RectInt32> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeRectInt32>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeRectInt32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeRectInt32> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<RectInt32> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeRectInt32>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeRectInt32> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeRectInt32> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorSize extends IVector<Size> {
  _IVectorSize.fromPtr(super.ptr, {required super.iterableIid});

  @override
  Size getAt(int index) {
    final retValuePtr = calloc<NativeSize>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeSize> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeSize> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(Size value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  NativeSize value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, NativeSize value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Size value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeSize value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeSize value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Size value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeSize value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeSize value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Size value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeSize value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, NativeSize value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Size> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeSize>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeSize> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeSize> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Size> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeSize>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeSize> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeSize> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorSizeUInt32 extends IVector<SizeUInt32> {
  _IVectorSizeUInt32.fromPtr(super.ptr, {required super.iterableIid});

  @override
  SizeUInt32 getAt(int index) {
    final retValuePtr = calloc<NativeSizeUInt32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeSizeUInt32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeSizeUInt32> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(SizeUInt32 value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeSizeUInt32 value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeSizeUInt32 value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, SizeUInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeSizeUInt32 value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeSizeUInt32 value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, SizeUInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeSizeUInt32 value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeSizeUInt32 value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(SizeUInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeSizeUInt32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeSizeUInt32 value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<SizeUInt32> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeSizeUInt32>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeSizeUInt32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeSizeUInt32> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<SizeUInt32> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeSizeUInt32>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeSizeUInt32> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeSizeUInt32> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorSortEntry extends IVector<SortEntry> {
  _IVectorSortEntry.fromPtr(super.ptr, {required super.iterableIid});

  @override
  SortEntry getAt(int index) {
    final retValuePtr = calloc<NativeSortEntry>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeSortEntry> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeSortEntry> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(SortEntry value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeSortEntry value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeSortEntry value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, SortEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeSortEntry value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeSortEntry value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, SortEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeSortEntry value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeSortEntry value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(SortEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeSortEntry value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeSortEntry value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<SortEntry> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeSortEntry>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeSortEntry> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeSortEntry> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<SortEntry> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeSortEntry>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeSortEntry> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeSortEntry> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorStorePackageUpdateStatus
    extends IVector<StorePackageUpdateStatus> {
  _IVectorStorePackageUpdateStatus.fromPtr(super.ptr,
      {required super.iterableIid});

  @override
  StorePackageUpdateStatus getAt(int index) {
    final retValuePtr = calloc<NativeStorePackageUpdateStatus>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 index,
                              Pointer<NativeStorePackageUpdateStatus>
                                  retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeStorePackageUpdateStatus> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(StorePackageUpdateStatus value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeStorePackageUpdateStatus value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      NativeStorePackageUpdateStatus value,
                      Pointer<Uint32> index,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, StorePackageUpdateStatus value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeStorePackageUpdateStatus value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeStorePackageUpdateStatus value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, StorePackageUpdateStatus value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeStorePackageUpdateStatus value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeStorePackageUpdateStatus value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(StorePackageUpdateStatus value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            NativeStorePackageUpdateStatus value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl,
                    NativeStorePackageUpdateStatus value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<StorePackageUpdateStatus> items}) getMany(
      int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeStorePackageUpdateStatus>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeStorePackageUpdateStatus> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeStorePackageUpdateStatus> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<StorePackageUpdateStatus> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeStorePackageUpdateStatus>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeStorePackageUpdateStatus> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeStorePackageUpdateStatus> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorString extends IVector<String> {
  _IVectorString.fromPtr(super.ptr, {required super.iterableIid});

  @override
  String getAt(int index) {
    final retValuePtr = calloc<IntPtr>();

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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(String value) {
    final retValuePtr = calloc<Bool>();
    final valueHString = value.toHString();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      WindowsDeleteString(valueHString);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, String value) {
    final valueHString = value.toHString();

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, IntPtr value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, valueHString);

    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, String value) {
    final valueHString = value.toHString();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, IntPtr value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, valueHString);

    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(String value) {
    final valueHString = value.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, valueHString);

    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<String> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<IntPtr>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<String> items) {
    final itemsHandles = <int>[];
    final itemsArray = calloc<HSTRING>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toHString();
      itemsHandles.add(itemsArray[i]);
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<IntPtr> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<IntPtr> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    itemsHandles.forEach(WindowsDeleteString);
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorTextRange extends IVector<TextRange> {
  _IVectorTextRange.fromPtr(super.ptr, {required super.iterableIid});

  @override
  TextRange getAt(int index) {
    final retValuePtr = calloc<NativeTextRange>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeTextRange> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeTextRange> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(TextRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeTextRange value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeTextRange value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, TextRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeTextRange value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeTextRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, TextRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeTextRange value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeTextRange value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(TextRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeTextRange value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeTextRange value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<TextRange> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeTextRange>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeTextRange> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeTextRange> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<TextRange> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeTextRange>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeTextRange> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeTextRange> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorTextSegment extends IVector<TextSegment> {
  _IVectorTextSegment.fromPtr(super.ptr, {required super.iterableIid});

  @override
  TextSegment getAt(int index) {
    final retValuePtr = calloc<NativeTextSegment>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeTextSegment> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeTextSegment> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(TextSegment value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeTextSegment value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeTextSegment value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, TextSegment value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeTextSegment value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeTextSegment value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, TextSegment value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeTextSegment value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index,
                    NativeTextSegment value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(TextSegment value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeTextSegment value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeTextSegment value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<TextSegment> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeTextSegment>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeTextSegment> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeTextSegment> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<TextSegment> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeTextSegment>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeTextSegment> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeTextSegment> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorUint8 extends IVector<int> {
  _IVectorUint8.fromPtr(super.ptr, {required super.iterableIid, super.intType});

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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(int value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint8 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint8 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint8 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint8>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> items) {
    final itemsArray = calloc<Uint8>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Uint8> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Uint8> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorUint16 extends IVector<int> {
  _IVectorUint16.fromPtr(super.ptr,
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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(int value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint16 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint16 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint16 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint16>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> items) {
    final itemsArray = calloc<Uint16>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Uint16> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Uint16> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorUint32 extends IVector<int> {
  _IVectorUint32.fromPtr(super.ptr,
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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(int value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint32 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint32 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint32 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint32>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> items) {
    final itemsArray = calloc<Uint32>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Uint32> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Uint32> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorUint64 extends IVector<int> {
  _IVectorUint64.fromPtr(super.ptr,
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

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(int value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Uint32 index, Uint64 value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                int value)>()(ptr.ref.lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint64 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint64>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<int> items) {
    final itemsArray = calloc<Uint64>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Uint64> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Uint64> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorWindowId extends IVector<WindowId> {
  _IVectorWindowId.fromPtr(super.ptr, {required super.iterableIid});

  @override
  WindowId getAt(int index) {
    final retValuePtr = calloc<NativeWindowId>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                              Pointer<NativeWindowId> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int index,
                      Pointer<NativeWindowId> retValuePtr)>()(
          ptr.ref.lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      retValuePtr.free();
    }
  }

  @override
  (bool, {int index}) indexOf(WindowId value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeWindowId value,
                              Pointer<Uint32> index,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeWindowId value,
                      Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      valueNativeStructPtr.free();
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, WindowId value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeWindowId value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeWindowId value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, WindowId value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            NativeWindowId value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int index, NativeWindowId value)>()(
        ptr.ref.lpVtbl, index, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(WindowId value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, NativeWindowId value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeWindowId value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<WindowId> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeWindowId>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 startIndex,
                              Uint32 itemsSize,
                              Pointer<NativeWindowId> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int startIndex,
                      int itemsSize,
                      Pointer<NativeWindowId> items,
                      Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<WindowId> items) {
    final allocator = Arena();
    final itemsArray = calloc<NativeWindowId>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items[i].toNative(allocator: allocator).ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<NativeWindowId> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<NativeWindowId> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    allocator.releaseAll();
    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorWinRTEnum<T> extends IVector<T> {
  _IVectorWinRTEnum.fromPtr(super.ptr,
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

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(T value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Int32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Int32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<T> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int32>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toEnumList(enumCreator, length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<T> items) {
    final itemsArray = calloc<Int32>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items.cast<WinRTEnum>()[i].value;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Int32> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Int32> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVectorWinRTFlagsEnum<T> extends IVector<T> {
  _IVectorWinRTFlagsEnum.fromPtr(super.ptr,
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

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(T value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
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
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Uint32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                            Uint32 value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int index, int value)>()(
        ptr.ref.lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(T value) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint32 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<T> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint32>(itemsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
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
          ptr.ref.lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toEnumList(enumCreator, length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<T> items) {
    final itemsArray = calloc<Uint32>(items.length);
    for (var i = 0; i < items.length; i++) {
      itemsArray[i] = items.cast<WinRTEnum>()[i].value;
    }

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
                            Pointer<Uint32> items)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int itemsSize,
                    Pointer<Uint32> items)>()(
        ptr.ref.lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
