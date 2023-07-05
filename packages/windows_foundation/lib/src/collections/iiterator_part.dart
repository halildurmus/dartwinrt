// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'iiterator.dart';

final class _IIteratorAccessListEntry extends IIterator<AccessListEntry> {
  _IIteratorAccessListEntry.fromPtr(super.ptr);

  @override
  AccessListEntry get current {
    final retValuePtr = calloc<NativeAccessListEntry>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeAccessListEntry> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeAccessListEntry> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<AccessListEntry> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeAccessListEntry> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeAccessListEntry> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorBackgroundTransferFileRange
    extends IIterator<BackgroundTransferFileRange> {
  _IIteratorBackgroundTransferFileRange.fromPtr(super.ptr);

  @override
  BackgroundTransferFileRange get current {
    final retValuePtr = calloc<NativeBackgroundTransferFileRange>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<NativeBackgroundTransferFileRange>
                              retValuePtr)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<NativeBackgroundTransferFileRange>
                      retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<BackgroundTransferFileRange> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeBackgroundTransferFileRange> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeBackgroundTransferFileRange> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorBasicGeoposition extends IIterator<BasicGeoposition> {
  _IIteratorBasicGeoposition.fromPtr(super.ptr);

  @override
  BasicGeoposition get current {
    final retValuePtr = calloc<NativeBasicGeoposition>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeBasicGeoposition> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeBasicGeoposition> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<BasicGeoposition> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeBasicGeoposition> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeBasicGeoposition> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorColor extends IIterator<Color> {
  _IIteratorColor.fromPtr(super.ptr);

  @override
  Color get current {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeColor> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeColor> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<Color> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeColor> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeColor> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorDouble extends IIterator<double> {
  _IIteratorDouble.fromPtr(super.ptr);

  @override
  double get current {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Double> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Double> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<double> items) {
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
                              Uint32 itemsSize,
                              Pointer<Double> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Double> items, Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorFloat extends IIterator<double> {
  _IIteratorFloat.fromPtr(super.ptr);

  @override
  double get current {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Float> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Float> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<double> items) {
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
                              Uint32 itemsSize,
                              Pointer<Float> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int itemsSize,
                      Pointer<Float> items, Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorGpioChangeRecord extends IIterator<GpioChangeRecord> {
  _IIteratorGpioChangeRecord.fromPtr(super.ptr);

  @override
  GpioChangeRecord get current {
    final retValuePtr = calloc<NativeGpioChangeRecord>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeGpioChangeRecord> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeGpioChangeRecord> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<GpioChangeRecord> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeGpioChangeRecord> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeGpioChangeRecord> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorMediaTimeRange extends IIterator<MediaTimeRange> {
  _IIteratorMediaTimeRange.fromPtr(super.ptr);

  @override
  MediaTimeRange get current {
    final retValuePtr = calloc<NativeMediaTimeRange>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeMediaTimeRange> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeMediaTimeRange> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<MediaTimeRange> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeMediaTimeRange> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeMediaTimeRange> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorMseTimeRange extends IIterator<MseTimeRange> {
  _IIteratorMseTimeRange.fromPtr(super.ptr);

  @override
  MseTimeRange get current {
    final retValuePtr = calloc<NativeMseTimeRange>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeMseTimeRange> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeMseTimeRange> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<MseTimeRange> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeMseTimeRange> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeMseTimeRange> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorNitRange extends IIterator<NitRange> {
  _IIteratorNitRange.fromPtr(super.ptr);

  @override
  NitRange get current {
    final retValuePtr = calloc<NativeNitRange>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeNitRange> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeNitRange> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<NitRange> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeNitRange> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeNitRange> items,
                      Pointer<Uint32> retValuePtr)>()(
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

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as T;
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

final class _IIteratorUri extends IIterator<Uri?> {
  _IIteratorUri.fromPtr(super.ptr);

  @override
  Uri? get current {
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

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return retValuePtr.toWinRTUri().toDartUri();
  }

  @override
  int getMany(int itemsSize, List<Uri?> items) {
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

final class _IIteratorPoint extends IIterator<Point> {
  _IIteratorPoint.fromPtr(super.ptr);

  @override
  Point get current {
    final retValuePtr = calloc<NativePoint>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativePoint> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativePoint> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<Point> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativePoint> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativePoint> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorPointerDeviceUsage extends IIterator<PointerDeviceUsage> {
  _IIteratorPointerDeviceUsage.fromPtr(super.ptr);

  @override
  PointerDeviceUsage get current {
    final retValuePtr = calloc<NativePointerDeviceUsage>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativePointerDeviceUsage> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<NativePointerDeviceUsage>
                      retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<PointerDeviceUsage> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativePointerDeviceUsage> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativePointerDeviceUsage> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorRect extends IIterator<Rect> {
  _IIteratorRect.fromPtr(super.ptr);

  @override
  Rect get current {
    final retValuePtr = calloc<NativeRect>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeRect> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl, Pointer<NativeRect> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<Rect> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeRect> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeRect> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorRectInt32 extends IIterator<RectInt32> {
  _IIteratorRectInt32.fromPtr(super.ptr);

  @override
  RectInt32 get current {
    final retValuePtr = calloc<NativeRectInt32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeRectInt32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeRectInt32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<RectInt32> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeRectInt32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeRectInt32> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorSize extends IIterator<Size> {
  _IIteratorSize.fromPtr(super.ptr);

  @override
  Size get current {
    final retValuePtr = calloc<NativeSize>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeSize> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl, Pointer<NativeSize> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<Size> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeSize> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeSize> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorSizeUInt32 extends IIterator<SizeUInt32> {
  _IIteratorSizeUInt32.fromPtr(super.ptr);

  @override
  SizeUInt32 get current {
    final retValuePtr = calloc<NativeSizeUInt32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeSizeUInt32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeSizeUInt32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<SizeUInt32> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeSizeUInt32> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeSizeUInt32> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorSortEntry extends IIterator<SortEntry> {
  _IIteratorSortEntry.fromPtr(super.ptr);

  @override
  SortEntry get current {
    final retValuePtr = calloc<NativeSortEntry>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeSortEntry> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeSortEntry> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<SortEntry> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeSortEntry> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeSortEntry> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorStorePackageUpdateStatus
    extends IIterator<StorePackageUpdateStatus> {
  _IIteratorStorePackageUpdateStatus.fromPtr(super.ptr);

  @override
  StorePackageUpdateStatus get current {
    final retValuePtr = calloc<NativeStorePackageUpdateStatus>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<NativeStorePackageUpdateStatus>
                                  retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeStorePackageUpdateStatus> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<StorePackageUpdateStatus> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeStorePackageUpdateStatus> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeStorePackageUpdateStatus> items,
                      Pointer<Uint32> retValuePtr)>()(
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
    final retValuePtr = calloc<IntPtr>();

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

final class _IIteratorTextSegment extends IIterator<TextSegment> {
  _IIteratorTextSegment.fromPtr(super.ptr);

  @override
  TextSegment get current {
    final retValuePtr = calloc<NativeTextSegment>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeTextSegment> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeTextSegment> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<TextSegment> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeTextSegment> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeTextSegment> items,
                      Pointer<Uint32> retValuePtr)>()(
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

final class _IIteratorWindowId extends IIterator<WindowId> {
  _IIteratorWindowId.fromPtr(super.ptr);

  @override
  WindowId get current {
    final retValuePtr = calloc<NativeWindowId>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeWindowId> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeWindowId> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  int getMany(int itemsSize, List<WindowId> items) {
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
                              Uint32 itemsSize,
                              Pointer<NativeWindowId> items,
                              Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int itemsSize,
                      Pointer<NativeWindowId> items,
                      Pointer<Uint32> retValuePtr)>()(
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
