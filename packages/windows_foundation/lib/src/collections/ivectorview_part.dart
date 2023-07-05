// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'ivectorview.dart';

final class _IVectorViewAccessListEntry extends IVectorView<AccessListEntry> {
  _IVectorViewAccessListEntry.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(AccessListEntry value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<AccessListEntry> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeAccessListEntry>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewBackgroundTransferFileRange
    extends IVectorView<BackgroundTransferFileRange> {
  _IVectorViewBackgroundTransferFileRange.fromPtr(super.ptr,
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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(BackgroundTransferFileRange value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(
      int startIndex, int itemsSize, List<BackgroundTransferFileRange> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeBackgroundTransferFileRange>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewBasicGeoposition extends IVectorView<BasicGeoposition> {
  _IVectorViewBasicGeoposition.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(BasicGeoposition value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<BasicGeoposition> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeBasicGeoposition>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewColor extends IVectorView<Color> {
  _IVectorViewColor.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(Color value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr =
          ptr.ref.vtable
                  .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<Color> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeColor>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewDouble extends IVectorView<double> {
  _IVectorViewDouble.fromPtr(super.ptr,
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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(double value, Pointer<Uint32> index) {
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
                                  Double value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, double value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<double> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Double>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewFloat extends IVectorView<double> {
  _IVectorViewFloat.fromPtr(super.ptr,
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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(double value, Pointer<Uint32> index) {
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
                                  Float value,
                                  Pointer<Uint32> index,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, double value,
                          Pointer<Uint32> index, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, value, index, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<double> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<Float>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewGpioChangeRecord extends IVectorView<GpioChangeRecord> {
  _IVectorViewGpioChangeRecord.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(GpioChangeRecord value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<GpioChangeRecord> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeGpioChangeRecord>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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
      final valueNativeStructPtr = value.toNativeGUID();

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
              ptr.ref.lpVtbl, valueNativeStructPtr.ref, index, retValuePtr);

      free(valueNativeStructPtr);

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

final class _IVectorViewMediaTimeRange extends IVectorView<MediaTimeRange> {
  _IVectorViewMediaTimeRange.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(MediaTimeRange value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<MediaTimeRange> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeMediaTimeRange>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewMseTimeRange extends IVectorView<MseTimeRange> {
  _IVectorViewMseTimeRange.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(MseTimeRange value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<MseTimeRange> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeMseTimeRange>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewNitRange extends IVectorView<NitRange> {
  _IVectorViewNitRange.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(NitRange value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<NitRange> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeNitRange>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as T;
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

final class _IVectorViewUri extends IVectorView<Uri?> {
  _IVectorViewUri.fromPtr(super.ptr, {required super.iterableIid});

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
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return retValuePtr.toWinRTUri().toDartUri();
  }

  @override
  bool indexOf(Uri? value, Pointer<Uint32> index) {
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
          value?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr,
          index,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<Uri?> items) {
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

final class _IVectorViewPoint extends IVectorView<Point> {
  _IVectorViewPoint.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(Point value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr =
          ptr.ref.vtable
                  .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<Point> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativePoint>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewPointerDeviceUsage
    extends IVectorView<PointerDeviceUsage> {
  _IVectorViewPointerDeviceUsage.fromPtr(super.ptr,
      {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(PointerDeviceUsage value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<PointerDeviceUsage> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativePointerDeviceUsage>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewRect extends IVectorView<Rect> {
  _IVectorViewRect.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(Rect value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr =
          ptr.ref.vtable
                  .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<Rect> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeRect>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewRectInt32 extends IVectorView<RectInt32> {
  _IVectorViewRectInt32.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(RectInt32 value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<RectInt32> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeRectInt32>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewSize extends IVectorView<Size> {
  _IVectorViewSize.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(Size value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr =
          ptr.ref.vtable
                  .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<Size> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeSize>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewSizeUInt32 extends IVectorView<SizeUInt32> {
  _IVectorViewSizeUInt32.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(SizeUInt32 value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<SizeUInt32> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeSizeUInt32>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewSortEntry extends IVectorView<SortEntry> {
  _IVectorViewSortEntry.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(SortEntry value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<SortEntry> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeSortEntry>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewStorePackageUpdateStatus
    extends IVectorView<StorePackageUpdateStatus> {
  _IVectorViewStorePackageUpdateStatus.fromPtr(super.ptr,
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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(StorePackageUpdateStatus value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(
      int startIndex, int itemsSize, List<StorePackageUpdateStatus> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeStorePackageUpdateStatus>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewTextSegment extends IVectorView<TextSegment> {
  _IVectorViewTextSegment.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(TextSegment value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<TextSegment> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeTextSegment>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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

final class _IVectorViewWindowId extends IVectorView<WindowId> {
  _IVectorViewWindowId.fromPtr(super.ptr, {required super.iterableIid});

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

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  bool indexOf(WindowId value, Pointer<Uint32> index) {
    final retValuePtr = calloc<Bool>();

    try {
      final valueNativeStructPtr = value.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
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

      free(valueNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int startIndex, int itemsSize, List<WindowId> items) {
    final retValuePtr = calloc<Uint32>();

    try {
      final pItemsArray = calloc<NativeWindowId>(itemsSize);

      final hr = ptr.ref.vtable
              .elementAt(9)
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
        items.addAll(pItemsArray
            .toList(length: retValuePtr.value)
            .map(enumCreator)
            .toList());
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
        items.addAll(pItemsArray
            .toList(length: retValuePtr.value)
            .map(enumCreator)
            .toList());
      }
      free(pItemsArray);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
