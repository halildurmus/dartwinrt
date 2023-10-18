// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'ivector.dart';

final class _IVectorAccessListEntry extends IVector<AccessListEntry> {
  _IVectorAccessListEntry.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorAccessListEntryVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorAccessListEntryVtbl>().ref;

  @override
  AccessListEntry getAt(int index) {
    final retValuePtr = calloc<NativeAccessListEntry>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeAccessListEntry> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(AccessListEntry value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeAccessListEntry value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, AccessListEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeAccessListEntry value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, AccessListEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeAccessListEntry value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(AccessListEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeAccessListEntry value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<AccessListEntry> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeAccessListEntry>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeAccessListEntry> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeAccessListEntry> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorAccessListEntryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeAccessListEntry> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeAccessListEntry value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeAccessListEntry value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeAccessListEntry value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, NativeAccessListEntry value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeAccessListEntry> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeAccessListEntry> items)>> ReplaceAll;
}

final class _IVectorBackgroundTransferFileRange
    extends IVector<BackgroundTransferFileRange> {
  _IVectorBackgroundTransferFileRange.fromPtr(super.ptr,
      {required super.iterableIid});

  late final __IVectorBackgroundTransferFileRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorBackgroundTransferFileRangeVtbl>().ref;

  @override
  BackgroundTransferFileRange getAt(int index) {
    final retValuePtr = calloc<NativeBackgroundTransferFileRange>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeBackgroundTransferFileRange> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(BackgroundTransferFileRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  NativeBackgroundTransferFileRange value,
                  Pointer<Uint32> index,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, BackgroundTransferFileRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeBackgroundTransferFileRange value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, BackgroundTransferFileRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeBackgroundTransferFileRange value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(BackgroundTransferFileRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl,
                NativeBackgroundTransferFileRange value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<BackgroundTransferFileRange> items}) getMany(
      int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeBackgroundTransferFileRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeBackgroundTransferFileRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeBackgroundTransferFileRange> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorBackgroundTransferFileRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeBackgroundTransferFileRange> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              NativeBackgroundTransferFileRange value,
              Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeBackgroundTransferFileRange value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeBackgroundTransferFileRange value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              NativeBackgroundTransferFileRange value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeBackgroundTransferFileRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeBackgroundTransferFileRange> items)>> ReplaceAll;
}

final class _IVectorBasicGeoposition extends IVector<BasicGeoposition> {
  _IVectorBasicGeoposition.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorBasicGeopositionVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorBasicGeopositionVtbl>().ref;

  @override
  BasicGeoposition getAt(int index) {
    final retValuePtr = calloc<NativeBasicGeoposition>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeBasicGeoposition> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(BasicGeoposition value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeBasicGeoposition value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, BasicGeoposition value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeBasicGeoposition value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, BasicGeoposition value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeBasicGeoposition value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(BasicGeoposition value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeBasicGeoposition value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<BasicGeoposition> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeBasicGeoposition>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeBasicGeoposition> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeBasicGeoposition> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorBasicGeopositionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeBasicGeoposition> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeBasicGeoposition value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeBasicGeoposition value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeBasicGeoposition value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, NativeBasicGeoposition value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeBasicGeoposition> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeBasicGeoposition> items)>> ReplaceAll;
}

final class _IVectorBool extends IVector<bool> {
  _IVectorBool.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorBoolVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorBoolVtbl>().ref;

  @override
  bool getAt(int index) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(VTablePointer lpVtbl, bool value, Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, bool value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, bool value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, bool value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, bool value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(bool value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, bool value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<bool> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Bool>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Bool> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Bool> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorBoolVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Bool> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Bool value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 index, Bool value)>>
      SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 index, Bool value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Bool> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 itemsSize, Pointer<Bool> items)>>
      ReplaceAll;
}

final class _IVectorColor extends IVector<Color> {
  _IVectorColor.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorColorVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorColorVtbl>().ref;

  @override
  Color getAt(int index) {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<NativeColor> retValuePtr)>()(lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(Color value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeColor value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, NativeColor value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, NativeColor value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeColor value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Color> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeColor>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<NativeColor> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<NativeColor> items)>()(lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorColorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeColor> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeColor value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativeColor value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativeColor value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeColor value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeColor> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeColor> items)>> ReplaceAll;
}

final class _IVectorDateTime extends IVector<DateTime> {
  _IVectorDateTime.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorDateTimeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorDateTimeVtbl>().ref;

  @override
  DateTime getAt(int index) {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Int64> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, value.toWinRTDateTime(), index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, DateTime value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, DateTime value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(DateTime value) {
    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<DateTime> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int64>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Int64> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Int64> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorDateTimeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Int64> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int64 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int64 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int64 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int64> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int64> items)>> ReplaceAll;
}

final class _IVectorDouble extends IVector<double> {
  _IVectorDouble.fromPtr(super.ptr,
      {required super.iterableIid, super.doubleType});

  late final __IVectorDoubleVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorDoubleVtbl>().ref;

  @override
  double getAt(int index) {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Double> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(
              VTablePointer lpVtbl,
              double value,
              Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, double value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, double value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, double value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, double value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(double value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, double value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<double> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Double>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Double> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray<Double>();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Double> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorDoubleVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Double> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Double value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Double value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Double value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Double value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Double> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Double> items)>> ReplaceAll;
}

final class _IVectorDuration extends IVector<Duration> {
  _IVectorDuration.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorDurationVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorDurationVtbl>().ref;

  @override
  Duration getAt(int index) {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Int64> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, value.toWinRTDuration(), index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Duration value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value.toWinRTDuration());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Duration value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value.toWinRTDuration());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Duration value) {
    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toWinRTDuration());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Duration> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int64>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Int64> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Int64> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorDurationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Int64> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int64 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int64 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int64 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int64> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int64> items)>> ReplaceAll;
}

final class _IVectorFloat extends IVector<double> {
  _IVectorFloat.fromPtr(super.ptr,
      {required super.iterableIid, super.doubleType});

  late final __IVectorFloatVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorFloatVtbl>().ref;

  @override
  double getAt(int index) {
    final retValuePtr = calloc<Float>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Float> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(
              VTablePointer lpVtbl,
              double value,
              Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, double value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, double value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, double value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, double value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(double value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, double value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<double> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Float>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Float> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray<Float>();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Float> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorFloatVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Float> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Float value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Float value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Float value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Float value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Float> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Float> items)>> ReplaceAll;
}

final class _IVectorGpioChangeRecord extends IVector<GpioChangeRecord> {
  _IVectorGpioChangeRecord.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorGpioChangeRecordVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorGpioChangeRecordVtbl>().ref;

  @override
  GpioChangeRecord getAt(int index) {
    final retValuePtr = calloc<NativeGpioChangeRecord>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeGpioChangeRecord> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(GpioChangeRecord value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeGpioChangeRecord value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, GpioChangeRecord value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeGpioChangeRecord value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, GpioChangeRecord value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeGpioChangeRecord value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(GpioChangeRecord value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeGpioChangeRecord value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<GpioChangeRecord> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeGpioChangeRecord>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeGpioChangeRecord> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeGpioChangeRecord> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorGpioChangeRecordVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeGpioChangeRecord> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeGpioChangeRecord value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeGpioChangeRecord value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeGpioChangeRecord value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, NativeGpioChangeRecord value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeGpioChangeRecord> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeGpioChangeRecord> items)>> ReplaceAll;
}

final class _IVectorGuid extends IVector<Guid> {
  _IVectorGuid.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorGuidVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorGuidVtbl>().ref;

  @override
  Guid getAt(int index) {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<GUID> retValuePtr)>()(lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(Guid value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNativeGUID();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, GUID value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Guid value) {
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, GUID value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Guid value) {
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, GUID value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Guid value) {
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, GUID value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Guid> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<GUID>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<GUID> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<GUID> items)>()(lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorGuidVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<GUID> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, GUID value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 index, GUID value)>>
      SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 index, GUID value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, GUID value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<GUID> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 itemsSize, Pointer<GUID> items)>>
      ReplaceAll;
}

final class _IVectorInt16 extends IVector<int> {
  _IVectorInt16.fromPtr(super.ptr, {required super.iterableIid, super.intType});

  late final __IVectorInt16Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorInt16Vtbl>().ref;

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Int16> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(VTablePointer lpVtbl, int value, Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int16>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Int16> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray<Int16>();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Int16> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorInt16Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Int16> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int16 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int16 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int16 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int16 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int16> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int16> items)>> ReplaceAll;
}

final class _IVectorInt32 extends IVector<int> {
  _IVectorInt32.fromPtr(super.ptr, {required super.iterableIid, super.intType});

  late final __IVectorInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorInt32Vtbl>().ref;

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Int32> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(VTablePointer lpVtbl, int value, Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Int32> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray<Int32>();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Int32> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorInt32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Int32> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int32 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int32 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int32> items)>> ReplaceAll;
}

final class _IVectorInt64 extends IVector<int> {
  _IVectorInt64.fromPtr(super.ptr, {required super.iterableIid, super.intType});

  late final __IVectorInt64Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorInt64Vtbl>().ref;

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Int64> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(VTablePointer lpVtbl, int value, Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int64>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Int64> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray<Int64>();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Int64> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorInt64Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Int64> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int64 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int64 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int64 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int64> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int64> items)>> ReplaceAll;
}

final class _IVectorMediaTimeRange extends IVector<MediaTimeRange> {
  _IVectorMediaTimeRange.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorMediaTimeRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorMediaTimeRangeVtbl>().ref;

  @override
  MediaTimeRange getAt(int index) {
    final retValuePtr = calloc<NativeMediaTimeRange>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeMediaTimeRange> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(MediaTimeRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeMediaTimeRange value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, MediaTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, NativeMediaTimeRange value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, MediaTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, NativeMediaTimeRange value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(MediaTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeMediaTimeRange value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<MediaTimeRange> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeMediaTimeRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeMediaTimeRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeMediaTimeRange> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorMediaTimeRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeMediaTimeRange> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeMediaTimeRange value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeMediaTimeRange value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeMediaTimeRange value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, NativeMediaTimeRange value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeMediaTimeRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeMediaTimeRange> items)>> ReplaceAll;
}

final class _IVectorMseTimeRange extends IVector<MseTimeRange> {
  _IVectorMseTimeRange.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorMseTimeRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorMseTimeRangeVtbl>().ref;

  @override
  MseTimeRange getAt(int index) {
    final retValuePtr = calloc<NativeMseTimeRange>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeMseTimeRange> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(MseTimeRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeMseTimeRange value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, MseTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, NativeMseTimeRange value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, MseTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, NativeMseTimeRange value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(MseTimeRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeMseTimeRange value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<MseTimeRange> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeMseTimeRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeMseTimeRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeMseTimeRange> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorMseTimeRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeMseTimeRange> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeMseTimeRange value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeMseTimeRange value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeMseTimeRange value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeMseTimeRange value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeMseTimeRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeMseTimeRange> items)>> ReplaceAll;
}

final class _IVectorNitRange extends IVector<NitRange> {
  _IVectorNitRange.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorNitRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorNitRangeVtbl>().ref;

  @override
  NitRange getAt(int index) {
    final retValuePtr = calloc<NativeNitRange>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeNitRange> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(NitRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeNitRange value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, NitRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeNitRange value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, NitRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeNitRange value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(NitRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeNitRange value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<NitRange> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeNitRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeNitRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<NativeNitRange> items)>()(lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorNitRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeNitRange> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeNitRange value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativeNitRange value)>> SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeNitRange value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeNitRange value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeNitRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeNitRange> items)>> ReplaceAll;
}

final class _IVectorInspectable<T> extends IVector<T> {
  _IVectorInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.creator})
      : super(creator: creator);

  late final __IVectorInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorInspectableVtbl>().ref;
  final COMObjectCreator<T> creator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.GetAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, (value as IInspectable).lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, T value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, VTablePointer value)>()(
        lpVtbl, index, (value as IInspectable).lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, VTablePointer value)>()(
        lpVtbl, index, (value as IInspectable).lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, (value as IInspectable).lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<T> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<COMObject>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.cast<IInspectable>().toArray();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<VTablePointer> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<COMObject> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, VTablePointer value)>> SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, VTablePointer value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<COMObject> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<VTablePointer> items)>> ReplaceAll;
}

final class _IVectorObject extends IVector<Object?> {
  _IVectorObject.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorObjectVtbl>().ref;

  @override
  Object? getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.GetAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, value?.boxValue().lpVtbl ?? nullptr, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Object? value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, VTablePointer value)>()(
        lpVtbl, index, value?.boxValue().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Object? value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, VTablePointer value)>()(
        lpVtbl, index, value?.boxValue().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Object? value) {
    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.boxValue().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Object?> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<COMObject>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<VTablePointer> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<COMObject> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, VTablePointer value)>> SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, VTablePointer value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<COMObject> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<VTablePointer> items)>> ReplaceAll;
}

final class _IVectorUri extends IVector<Uri?> {
  _IVectorUri.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorUriVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorUriVtbl>().ref;

  @override
  Uri? getAt(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.GetAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, value?.toWinRTUri().lpVtbl ?? nullptr, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Uri? value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, VTablePointer value)>()(
        lpVtbl, index, value?.toWinRTUri().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Uri? value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, VTablePointer value)>()(
        lpVtbl, index, value?.toWinRTUri().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Uri? value) {
    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toWinRTUri().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Uri?> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<COMObject>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (
        retValuePtr.value,
        items: items.toUriList(length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }

  @override
  void replaceAll(List<Uri?> items) {
    final itemsArray = items.toArray();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<VTablePointer> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorUriVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<COMObject> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, VTablePointer value)>> SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, VTablePointer value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<COMObject> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<VTablePointer> items)>> ReplaceAll;
}

final class _IVectorPoint extends IVector<Point> {
  _IVectorPoint.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorPointVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorPointVtbl>().ref;

  @override
  Point getAt(int index) {
    final retValuePtr = calloc<NativePoint>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<NativePoint> retValuePtr)>()(lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(Point value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativePoint value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Point value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, NativePoint value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Point value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, NativePoint value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Point value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativePoint value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Point> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativePoint>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<NativePoint> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<NativePoint> items)>()(lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorPointVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativePoint> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativePoint value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativePoint value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativePoint value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativePoint value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativePoint> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativePoint> items)>> ReplaceAll;
}

final class _IVectorPointerDeviceUsage extends IVector<PointerDeviceUsage> {
  _IVectorPointerDeviceUsage.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorPointerDeviceUsageVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorPointerDeviceUsageVtbl>().ref;

  @override
  PointerDeviceUsage getAt(int index) {
    final retValuePtr = calloc<NativePointerDeviceUsage>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativePointerDeviceUsage> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(PointerDeviceUsage value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativePointerDeviceUsage value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, PointerDeviceUsage value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativePointerDeviceUsage value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, PointerDeviceUsage value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativePointerDeviceUsage value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(PointerDeviceUsage value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(
                VTablePointer lpVtbl, NativePointerDeviceUsage value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<PointerDeviceUsage> items}) getMany(
      int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativePointerDeviceUsage>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativePointerDeviceUsage> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativePointerDeviceUsage> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorPointerDeviceUsageVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativePointerDeviceUsage> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativePointerDeviceUsage value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativePointerDeviceUsage value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativePointerDeviceUsage value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, NativePointerDeviceUsage value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativePointerDeviceUsage> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativePointerDeviceUsage> items)>> ReplaceAll;
}

final class _IVectorRect extends IVector<Rect> {
  _IVectorRect.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorRectVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorRectVtbl>().ref;

  @override
  Rect getAt(int index) {
    final retValuePtr = calloc<NativeRect>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<NativeRect> retValuePtr)>()(lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(Rect value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeRect value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Rect value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, NativeRect value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Rect value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, NativeRect value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Rect value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeRect value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Rect> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeRect>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<NativeRect> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<NativeRect> items)>()(lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorRectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeRect> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeRect value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativeRect value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativeRect value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeRect value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeRect> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeRect> items)>> ReplaceAll;
}

final class _IVectorRectInt32 extends IVector<RectInt32> {
  _IVectorRectInt32.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorRectInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorRectInt32Vtbl>().ref;

  @override
  RectInt32 getAt(int index) {
    final retValuePtr = calloc<NativeRectInt32>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeRectInt32> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(RectInt32 value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeRectInt32 value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, RectInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeRectInt32 value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, RectInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeRectInt32 value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(RectInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeRectInt32 value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<RectInt32> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeRectInt32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeRectInt32> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeRectInt32> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorRectInt32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeRectInt32> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeRectInt32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeRectInt32 value)>>
      SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeRectInt32 value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeRectInt32 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeRectInt32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeRectInt32> items)>> ReplaceAll;
}

final class _IVectorSize extends IVector<Size> {
  _IVectorSize.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorSizeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorSizeVtbl>().ref;

  @override
  Size getAt(int index) {
    final retValuePtr = calloc<NativeSize>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<NativeSize> retValuePtr)>()(lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(Size value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeSize value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, Size value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, NativeSize value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, Size value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, NativeSize value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(Size value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeSize value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<Size> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeSize>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<NativeSize> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<NativeSize> items)>()(lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorSizeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeSize> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeSize value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativeSize value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativeSize value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeSize value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeSize> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeSize> items)>> ReplaceAll;
}

final class _IVectorSizeUInt32 extends IVector<SizeUInt32> {
  _IVectorSizeUInt32.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorSizeUInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorSizeUInt32Vtbl>().ref;

  @override
  SizeUInt32 getAt(int index) {
    final retValuePtr = calloc<NativeSizeUInt32>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeSizeUInt32> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(SizeUInt32 value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeSizeUInt32 value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, SizeUInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeSizeUInt32 value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, SizeUInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeSizeUInt32 value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(SizeUInt32 value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeSizeUInt32 value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<SizeUInt32> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeSizeUInt32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeSizeUInt32> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeSizeUInt32> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorSizeUInt32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeSizeUInt32> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeSizeUInt32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeSizeUInt32 value)>>
      SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeSizeUInt32 value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeSizeUInt32 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeSizeUInt32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeSizeUInt32> items)>> ReplaceAll;
}

final class _IVectorSortEntry extends IVector<SortEntry> {
  _IVectorSortEntry.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorSortEntryVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorSortEntryVtbl>().ref;

  @override
  SortEntry getAt(int index) {
    final retValuePtr = calloc<NativeSortEntry>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeSortEntry> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(SortEntry value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeSortEntry value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, SortEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeSortEntry value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, SortEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeSortEntry value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(SortEntry value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeSortEntry value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<SortEntry> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeSortEntry>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeSortEntry> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeSortEntry> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorSortEntryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeSortEntry> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeSortEntry value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeSortEntry value)>>
      SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeSortEntry value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeSortEntry value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeSortEntry> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeSortEntry> items)>> ReplaceAll;
}

final class _IVectorStorePackageUpdateStatus
    extends IVector<StorePackageUpdateStatus> {
  _IVectorStorePackageUpdateStatus.fromPtr(super.ptr,
      {required super.iterableIid});

  late final __IVectorStorePackageUpdateStatusVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorStorePackageUpdateStatusVtbl>().ref;

  @override
  StorePackageUpdateStatus getAt(int index) {
    final retValuePtr = calloc<NativeStorePackageUpdateStatus>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeStorePackageUpdateStatus> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(StorePackageUpdateStatus value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  NativeStorePackageUpdateStatus value,
                  Pointer<Uint32> index,
                  Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, StorePackageUpdateStatus value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeStorePackageUpdateStatus value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, StorePackageUpdateStatus value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index,
                NativeStorePackageUpdateStatus value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(StorePackageUpdateStatus value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(
                VTablePointer lpVtbl, NativeStorePackageUpdateStatus value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<StorePackageUpdateStatus> items}) getMany(
      int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeStorePackageUpdateStatus>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeStorePackageUpdateStatus> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeStorePackageUpdateStatus> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorStorePackageUpdateStatusVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeStorePackageUpdateStatus> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              NativeStorePackageUpdateStatus value,
              Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeStorePackageUpdateStatus value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              NativeStorePackageUpdateStatus value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, NativeStorePackageUpdateStatus value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeStorePackageUpdateStatus> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeStorePackageUpdateStatus> items)>> ReplaceAll;
}

final class _IVectorString extends IVector<String> {
  _IVectorString.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorStringVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorStringVtbl>().ref;

  @override
  String getAt(int index) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(String value) {
    final retValuePtr = calloc<Bool>();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, value.toHString(), index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, String value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, String value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(String value) {
    final hr = _vtable.Append.asFunction<
        int Function(
            VTablePointer lpVtbl, int value)>()(lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<String> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<IntPtr>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<IntPtr> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<IntPtr> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorStringVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<IntPtr> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, IntPtr value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, IntPtr value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<IntPtr> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<IntPtr> items)>> ReplaceAll;
}

final class _IVectorTextRange extends IVector<TextRange> {
  _IVectorTextRange.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorTextRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorTextRangeVtbl>().ref;

  @override
  TextRange getAt(int index) {
    final retValuePtr = calloc<NativeTextRange>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeTextRange> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(TextRange value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeTextRange value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, TextRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeTextRange value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, TextRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeTextRange value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(TextRange value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeTextRange value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<TextRange> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeTextRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeTextRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeTextRange> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorTextRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeTextRange> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeTextRange value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeTextRange value)>>
      SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeTextRange value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeTextRange value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeTextRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeTextRange> items)>> ReplaceAll;
}

final class _IVectorTextSegment extends IVector<TextSegment> {
  _IVectorTextSegment.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorTextSegmentVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorTextSegmentVtbl>().ref;

  @override
  TextSegment getAt(int index) {
    final retValuePtr = calloc<NativeTextSegment>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeTextSegment> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(TextSegment value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeTextSegment value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, TextSegment value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, NativeTextSegment value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, TextSegment value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
            int Function(
                VTablePointer lpVtbl, int index, NativeTextSegment value)>()(
        lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(TextSegment value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeTextSegment value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<TextSegment> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeTextSegment>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeTextSegment> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
            int Function(VTablePointer lpVtbl, int itemsSize,
                Pointer<NativeTextSegment> items)>()(
        lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorTextSegmentVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeTextSegment> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeTextSegment value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeTextSegment value)>>
      SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeTextSegment value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeTextSegment value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeTextSegment> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeTextSegment> items)>> ReplaceAll;
}

final class _IVectorUint8 extends IVector<int> {
  _IVectorUint8.fromPtr(super.ptr, {required super.iterableIid, super.intType});

  late final __IVectorUint8Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorUint8Vtbl>().ref;

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Uint8> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(VTablePointer lpVtbl, int value, Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint8>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Uint8> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray<Uint8>();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Uint8> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorUint8Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Uint8> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint8 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint8 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint8 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint8 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint8> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint8> items)>> ReplaceAll;
}

final class _IVectorUint16 extends IVector<int> {
  _IVectorUint16.fromPtr(super.ptr,
      {required super.iterableIid, super.intType});

  late final __IVectorUint16Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorUint16Vtbl>().ref;

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Uint16> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(VTablePointer lpVtbl, int value, Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint16>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Uint16> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray<Uint16>();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Uint16> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorUint16Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Uint16> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint16 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint16 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint16 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint16 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint16> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint16> items)>> ReplaceAll;
}

final class _IVectorUint32 extends IVector<int> {
  _IVectorUint32.fromPtr(super.ptr,
      {required super.iterableIid, super.intType});

  late final __IVectorUint32Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorUint32Vtbl>().ref;

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(VTablePointer lpVtbl, int value, Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Uint32> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray<Uint32>();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Uint32> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorUint32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Uint32> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint32 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint32 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint32> items)>> ReplaceAll;
}

final class _IVectorUint64 extends IVector<int> {
  _IVectorUint64.fromPtr(super.ptr,
      {required super.iterableIid, super.intType});

  late final __IVectorUint64Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorUint64Vtbl>().ref;

  @override
  int getAt(int index) {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Uint64> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
          int Function(VTablePointer lpVtbl, int value, Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>()(lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, int value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, int value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(int value) {
    final hr = _vtable.Append.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<int> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint64>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Uint64> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray<Uint64>();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Uint64> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorUint64Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Uint64> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint64 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint64 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint64 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint64> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint64> items)>> ReplaceAll;
}

final class _IVectorWindowId extends IVector<WindowId> {
  _IVectorWindowId.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorWindowIdVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorWindowIdVtbl>().ref;

  @override
  WindowId getAt(int index) {
    final retValuePtr = calloc<NativeWindowId>();

    try {
      final hr = _vtable.GetAt.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeWindowId> retValuePtr)>()(
          lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (bool, {int index}) indexOf(WindowId value) {
    final retValuePtr = calloc<Bool>();
    final valueNativeStructPtr = value.toNative();
    final index = calloc<Uint32>();

    try {
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, NativeWindowId value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(valueNativeStructPtr);
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, WindowId value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.SetAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeWindowId value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, WindowId value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.InsertAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            NativeWindowId value)>()(lpVtbl, index, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(WindowId value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, NativeWindowId value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<WindowId> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeWindowId>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int startIndex,
                  int itemsSize,
                  Pointer<NativeWindowId> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.toArray(allocator: allocator);

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<NativeWindowId> items)>()(lpVtbl, items.length, itemsArray);

    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorWindowIdVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<NativeWindowId> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeWindowId value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, NativeWindowId value)>> SetAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, NativeWindowId value)>>
      InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeWindowId value)>> Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeWindowId> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeWindowId> items)>> ReplaceAll;
}

final class _IVectorWinRTEnum<T> extends IVector<T> {
  _IVectorWinRTEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  late final __IVectorWinRTEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorWinRTEnumVtbl>().ref;
  final EnumCreator<T> enumCreator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Int32> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, T value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<T> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Int32> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.cast<WinRTEnum>().toArray();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Int32> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorWinRTEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Int32> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int32 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Int32 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int32> items)>> ReplaceAll;
}

final class _IVectorWinRTFlagsEnum<T> extends IVector<T> {
  _IVectorWinRTFlagsEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.enumCreator})
      : super(enumCreator: enumCreator);

  late final __IVectorWinRTFlagsEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorWinRTFlagsEnumVtbl>().ref;
  final EnumCreator<T> enumCreator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, index, retValuePtr);

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
      final hr = _vtable.IndexOf.asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
          lpVtbl, (value as WinRTEnum).value, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return (retValuePtr.value, index: index.value);
    } finally {
      free(index);
      free(retValuePtr);
    }
  }

  @override
  void setAt(int index, T value) {
    final hr = _vtable.SetAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void insertAt(int index, T value) {
    final hr = _vtable.InsertAt.asFunction<
            int Function(VTablePointer lpVtbl, int index, int value)>()(
        lpVtbl, index, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  void append(T value) {
    final hr = _vtable.Append.asFunction<
            int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, (value as WinRTEnum).value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  @override
  (int, {List<T> items}) getMany(int startIndex, int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int startIndex, int itemsSize,
                  Pointer<Uint32> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, startIndex, itemsSize, items, retValuePtr);

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
    final itemsArray = items.cast<WinRTFlagsEnum>().toArray();

    final hr = _vtable.ReplaceAll.asFunction<
        int Function(VTablePointer lpVtbl, int itemsSize,
            Pointer<Uint32> items)>()(lpVtbl, items.length, itemsArray);

    free(itemsArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class __IVectorWinRTFlagsEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Uint32> retValuePtr)>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> GetView;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint32 value)>> SetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Uint32 index, Uint32 value)>> InsertAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 index)>>
      RemoveAt;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      Append;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAtEnd;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint32> items)>> ReplaceAll;
}
