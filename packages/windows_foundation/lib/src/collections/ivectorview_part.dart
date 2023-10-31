// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'ivectorview.dart';

final class _IVectorViewAccessListEntry extends IVectorView<AccessListEntry> {
  _IVectorViewAccessListEntry.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewAccessListEntryVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewAccessListEntryVtbl>().ref;

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
}

final class __IVectorViewAccessListEntryVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeAccessListEntry value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeAccessListEntry> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewBackgroundTransferFileRange
    extends IVectorView<BackgroundTransferFileRange> {
  _IVectorViewBackgroundTransferFileRange.fromPtr(super.ptr,
      {required super.iterableIid});

  late final __IVectorViewBackgroundTransferFileRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewBackgroundTransferFileRangeVtbl>().ref;

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
}

final class __IVectorViewBackgroundTransferFileRangeVtbl extends Struct {
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
              VTablePointer lpVtbl,
              NativeBackgroundTransferFileRange value,
              Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeBackgroundTransferFileRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewBasicGeoposition extends IVectorView<BasicGeoposition> {
  _IVectorViewBasicGeoposition.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewBasicGeopositionVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewBasicGeopositionVtbl>().ref;

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
}

final class __IVectorViewBasicGeopositionVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeBasicGeoposition value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeBasicGeoposition> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewBool extends IVectorView<bool> {
  _IVectorViewBool.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewBoolVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewBoolVtbl>().ref;

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
}

final class __IVectorViewBoolVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Bool value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Bool> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewColor extends IVectorView<Color> {
  _IVectorViewColor.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewColorVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewColorVtbl>().ref;

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
}

final class __IVectorViewColorVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeColor value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeColor> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewDateTime extends IVectorView<DateTime> {
  _IVectorViewDateTime.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewDateTimeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewDateTimeVtbl>().ref;

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
}

final class __IVectorViewDateTimeVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Int64 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int64> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewDouble extends IVectorView<double> {
  _IVectorViewDouble.fromPtr(super.ptr,
      {required super.iterableIid, super.tDoubleType});

  late final __IVectorViewDoubleVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewDoubleVtbl>().ref;

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
}

final class __IVectorViewDoubleVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Double value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Double> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewDuration extends IVectorView<Duration> {
  _IVectorViewDuration.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewDurationVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewDurationVtbl>().ref;

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
}

final class __IVectorViewDurationVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Int64 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int64> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewFloat extends IVectorView<double> {
  _IVectorViewFloat.fromPtr(super.ptr,
      {required super.iterableIid, super.tDoubleType});

  late final __IVectorViewFloatVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewFloatVtbl>().ref;

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
}

final class __IVectorViewFloatVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Float value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Float> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewGpioChangeRecord extends IVectorView<GpioChangeRecord> {
  _IVectorViewGpioChangeRecord.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewGpioChangeRecordVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewGpioChangeRecordVtbl>().ref;

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
}

final class __IVectorViewGpioChangeRecordVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeGpioChangeRecord value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeGpioChangeRecord> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewGuid extends IVectorView<Guid> {
  _IVectorViewGuid.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewGuidVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewGuidVtbl>().ref;

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
}

final class __IVectorViewGuidVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, GUID value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<GUID> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewInt16 extends IVectorView<int> {
  _IVectorViewInt16.fromPtr(super.ptr,
      {required super.iterableIid, super.tIntType});

  late final __IVectorViewInt16Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewInt16Vtbl>().ref;

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
}

final class __IVectorViewInt16Vtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Int16 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int16> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewInt32 extends IVectorView<int> {
  _IVectorViewInt32.fromPtr(super.ptr,
      {required super.iterableIid, super.tIntType});

  late final __IVectorViewInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewInt32Vtbl>().ref;

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
}

final class __IVectorViewInt32Vtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Int32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewInt64 extends IVectorView<int> {
  _IVectorViewInt64.fromPtr(super.ptr,
      {required super.iterableIid, super.tIntType});

  late final __IVectorViewInt64Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewInt64Vtbl>().ref;

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
}

final class __IVectorViewInt64Vtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Int64 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int64> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewMediaTimeRange extends IVectorView<MediaTimeRange> {
  _IVectorViewMediaTimeRange.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewMediaTimeRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewMediaTimeRangeVtbl>().ref;

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
}

final class __IVectorViewMediaTimeRangeVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeMediaTimeRange value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeMediaTimeRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewMseTimeRange extends IVectorView<MseTimeRange> {
  _IVectorViewMseTimeRange.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewMseTimeRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewMseTimeRangeVtbl>().ref;

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
}

final class __IVectorViewMseTimeRangeVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeMseTimeRange value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeMseTimeRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewNitRange extends IVectorView<NitRange> {
  _IVectorViewNitRange.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewNitRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewNitRangeVtbl>().ref;

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
}

final class __IVectorViewNitRangeVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeNitRange value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeNitRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewInspectable<T> extends IVectorView<T> {
  _IVectorViewInspectable.fromPtr(super.ptr,
      {required super.iterableIid, required this.tObjectCreator})
      : super(tObjectCreator: tObjectCreator);

  late final __IVectorViewInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewInspectableVtbl>().ref;
  final COMObjectCreator<T> tObjectCreator;

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

    return tObjectCreator(retValuePtr);
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
        items: items.toList(tObjectCreator, length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }
}

final class __IVectorViewInspectableVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<COMObject> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewObject extends IVectorView<Object?> {
  _IVectorViewObject.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewObjectVtbl>().ref;

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
}

final class __IVectorViewObjectVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<COMObject> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewUri extends IVectorView<Uri?> {
  _IVectorViewUri.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewUriVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewUriVtbl>().ref;

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
}

final class __IVectorViewUriVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<COMObject> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewPoint extends IVectorView<Point> {
  _IVectorViewPoint.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewPointVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewPointVtbl>().ref;

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
}

final class __IVectorViewPointVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativePoint value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativePoint> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewPointerDeviceUsage
    extends IVectorView<PointerDeviceUsage> {
  _IVectorViewPointerDeviceUsage.fromPtr(super.ptr,
      {required super.iterableIid});

  late final __IVectorViewPointerDeviceUsageVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewPointerDeviceUsageVtbl>().ref;

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
}

final class __IVectorViewPointerDeviceUsageVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativePointerDeviceUsage value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativePointerDeviceUsage> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewRect extends IVectorView<Rect> {
  _IVectorViewRect.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewRectVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewRectVtbl>().ref;

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
}

final class __IVectorViewRectVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeRect value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeRect> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewRectInt32 extends IVectorView<RectInt32> {
  _IVectorViewRectInt32.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewRectInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewRectInt32Vtbl>().ref;

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
}

final class __IVectorViewRectInt32Vtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeRectInt32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeRectInt32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewSize extends IVectorView<Size> {
  _IVectorViewSize.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewSizeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewSizeVtbl>().ref;

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
}

final class __IVectorViewSizeVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeSize value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeSize> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewSizeUInt32 extends IVectorView<SizeUInt32> {
  _IVectorViewSizeUInt32.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewSizeUInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewSizeUInt32Vtbl>().ref;

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
}

final class __IVectorViewSizeUInt32Vtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeSizeUInt32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeSizeUInt32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewSortEntry extends IVectorView<SortEntry> {
  _IVectorViewSortEntry.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewSortEntryVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewSortEntryVtbl>().ref;

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
}

final class __IVectorViewSortEntryVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeSortEntry value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeSortEntry> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewStorePackageUpdateStatus
    extends IVectorView<StorePackageUpdateStatus> {
  _IVectorViewStorePackageUpdateStatus.fromPtr(super.ptr,
      {required super.iterableIid});

  late final __IVectorViewStorePackageUpdateStatusVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewStorePackageUpdateStatusVtbl>().ref;

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
}

final class __IVectorViewStorePackageUpdateStatusVtbl extends Struct {
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
              VTablePointer lpVtbl,
              NativeStorePackageUpdateStatus value,
              Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeStorePackageUpdateStatus> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewString extends IVectorView<String> {
  _IVectorViewString.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewStringVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewStringVtbl>().ref;

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
}

final class __IVectorViewStringVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<IntPtr> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewTextRange extends IVectorView<TextRange> {
  _IVectorViewTextRange.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewTextRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewTextRangeVtbl>().ref;

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
}

final class __IVectorViewTextRangeVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeTextRange value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeTextRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewTextSegment extends IVectorView<TextSegment> {
  _IVectorViewTextSegment.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewTextSegmentVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewTextSegmentVtbl>().ref;

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
}

final class __IVectorViewTextSegmentVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeTextSegment value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeTextSegment> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewUint8 extends IVectorView<int> {
  _IVectorViewUint8.fromPtr(super.ptr,
      {required super.iterableIid, super.tIntType});

  late final __IVectorViewUint8Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewUint8Vtbl>().ref;

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
}

final class __IVectorViewUint8Vtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Uint8 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint8> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewUint16 extends IVectorView<int> {
  _IVectorViewUint16.fromPtr(super.ptr,
      {required super.iterableIid, super.tIntType});

  late final __IVectorViewUint16Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewUint16Vtbl>().ref;

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
}

final class __IVectorViewUint16Vtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Uint16 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint16> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewUint32 extends IVectorView<int> {
  _IVectorViewUint32.fromPtr(super.ptr,
      {required super.iterableIid, super.tIntType});

  late final __IVectorViewUint32Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewUint32Vtbl>().ref;

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
}

final class __IVectorViewUint32Vtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Uint32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewUint64 extends IVectorView<int> {
  _IVectorViewUint64.fromPtr(super.ptr,
      {required super.iterableIid, super.tIntType});

  late final __IVectorViewUint64Vtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewUint64Vtbl>().ref;

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
}

final class __IVectorViewUint64Vtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Uint64 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint64> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewWindowId extends IVectorView<WindowId> {
  _IVectorViewWindowId.fromPtr(super.ptr, {required super.iterableIid});

  late final __IVectorViewWindowIdVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewWindowIdVtbl>().ref;

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
}

final class __IVectorViewWindowIdVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, NativeWindowId value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<NativeWindowId> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewWinRTEnum<T> extends IVectorView<T> {
  _IVectorViewWinRTEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.tEnumCreator})
      : super(tEnumCreator: tEnumCreator);

  late final __IVectorViewWinRTEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewWinRTEnumVtbl>().ref;
  final EnumCreator<T> tEnumCreator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Int32> retValuePtr)>()(lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return tEnumCreator(retValuePtr.value);
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
        items: items.toEnumList(tEnumCreator, length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }
}

final class __IVectorViewWinRTEnumVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Int32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Int32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IVectorViewWinRTFlagsEnum<T> extends IVectorView<T> {
  _IVectorViewWinRTFlagsEnum.fromPtr(super.ptr,
      {required super.iterableIid, required this.tEnumCreator})
      : super(tEnumCreator: tEnumCreator);

  late final __IVectorViewWinRTFlagsEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IVectorViewWinRTFlagsEnumVtbl>().ref;
  final EnumCreator<T> tEnumCreator;

  @override
  T getAt(int index) {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.GetAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, index, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return tEnumCreator(retValuePtr.value);
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
        items: items.toEnumList(tEnumCreator, length: retValuePtr.value)
      );
    } finally {
      free(items);
      free(retValuePtr);
    }
  }
}

final class __IVectorViewWinRTFlagsEnumVtbl extends Struct {
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
          HRESULT Function(VTablePointer lpVtbl, Uint32 value,
              Pointer<Uint32> index, Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              Pointer<Uint32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}
