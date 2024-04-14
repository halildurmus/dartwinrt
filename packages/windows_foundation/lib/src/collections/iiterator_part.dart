// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'iiterator.dart';

final class _IIteratorAccessListEntry extends IIterator<AccessListEntry> {
  _IIteratorAccessListEntry.fromPtr(super.ptr);

  late final __IIteratorAccessListEntryVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorAccessListEntryVtbl>().ref;

  @override
  AccessListEntry get current {
    final retValuePtr = calloc<NativeAccessListEntry>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeAccessListEntry> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<AccessListEntry> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeAccessListEntry>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeAccessListEntry> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorAccessListEntryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<NativeAccessListEntry> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeAccessListEntry> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorBackgroundTransferFileRange
    extends IIterator<BackgroundTransferFileRange> {
  _IIteratorBackgroundTransferFileRange.fromPtr(super.ptr);

  late final __IIteratorBackgroundTransferFileRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorBackgroundTransferFileRangeVtbl>().ref;

  @override
  BackgroundTransferFileRange get current {
    final retValuePtr = calloc<NativeBackgroundTransferFileRange>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeBackgroundTransferFileRange> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<BackgroundTransferFileRange> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeBackgroundTransferFileRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeBackgroundTransferFileRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorBackgroundTransferFileRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<NativeBackgroundTransferFileRange> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeBackgroundTransferFileRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorBasicGeoposition extends IIterator<BasicGeoposition> {
  _IIteratorBasicGeoposition.fromPtr(super.ptr);

  late final __IIteratorBasicGeopositionVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorBasicGeopositionVtbl>().ref;

  @override
  BasicGeoposition get current {
    final retValuePtr = calloc<NativeBasicGeoposition>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeBasicGeoposition> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<BasicGeoposition> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeBasicGeoposition>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeBasicGeoposition> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorBasicGeopositionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<NativeBasicGeoposition> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeBasicGeoposition> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorBool extends IIterator<bool> {
  _IIteratorBool.fromPtr(super.ptr);

  late final __IIteratorBoolVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorBoolVtbl>().ref;

  @override
  bool get current {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<bool> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Bool>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Bool> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorBoolVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Bool> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorColor extends IIterator<Color> {
  _IIteratorColor.fromPtr(super.ptr);

  late final __IIteratorColorVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorColorVtbl>().ref;

  @override
  Color get current {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeColor> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<Color> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeColor>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<NativeColor> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorColorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeColor> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeColor> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorDateTime extends IIterator<DateTime> {
  _IIteratorDateTime.fromPtr(super.ptr);

  late final __IIteratorDateTimeVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorDateTimeVtbl>().ref;

  @override
  DateTime get current {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartDateTime();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<DateTime> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int64>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Int64> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorDateTimeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int64> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorDouble extends IIterator<double> {
  _IIteratorDouble.fromPtr(super.ptr, {super.tDoubleType});

  late final __IIteratorDoubleVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorDoubleVtbl>().ref;

  @override
  double get current {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Double> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<double> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Double>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Double> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorDoubleVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Double> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Double> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorDuration extends IIterator<Duration> {
  _IIteratorDuration.fromPtr(super.ptr);

  late final __IIteratorDurationVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorDurationVtbl>().ref;

  @override
  Duration get current {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartDuration();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<Duration> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int64>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Int64> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorDurationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int64> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorFloat extends IIterator<double> {
  _IIteratorFloat.fromPtr(super.ptr, {super.tDoubleType});

  late final __IIteratorFloatVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorFloatVtbl>().ref;

  @override
  double get current {
    final retValuePtr = calloc<Float>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Float> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<double> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Float>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Float> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorFloatVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Float> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Float> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorGpioChangeRecord extends IIterator<GpioChangeRecord> {
  _IIteratorGpioChangeRecord.fromPtr(super.ptr);

  late final __IIteratorGpioChangeRecordVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorGpioChangeRecordVtbl>().ref;

  @override
  GpioChangeRecord get current {
    final retValuePtr = calloc<NativeGpioChangeRecord>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeGpioChangeRecord> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<GpioChangeRecord> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeGpioChangeRecord>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeGpioChangeRecord> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorGpioChangeRecordVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<NativeGpioChangeRecord> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeGpioChangeRecord> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorGuid extends IIterator<Guid> {
  _IIteratorGuid.fromPtr(super.ptr);

  late final __IIteratorGuidVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorGuidVtbl>().ref;

  @override
  Guid get current {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<Guid> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<GUID>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<GUID> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorGuidVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<GUID> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorInt16 extends IIterator<int> {
  _IIteratorInt16.fromPtr(super.ptr, {super.tIntType});

  late final __IIteratorInt16Vtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorInt16Vtbl>().ref;

  @override
  int get current {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int16> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<int> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int16>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Int16> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorInt16Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int16> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int16> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorInt32 extends IIterator<int> {
  _IIteratorInt32.fromPtr(super.ptr, {super.tIntType});

  late final __IIteratorInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorInt32Vtbl>().ref;

  @override
  int get current {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<int> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Int32> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorInt32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int32> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorInt64 extends IIterator<int> {
  _IIteratorInt64.fromPtr(super.ptr, {super.tIntType});

  late final __IIteratorInt64Vtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorInt64Vtbl>().ref;

  @override
  int get current {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<int> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int64>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Int64> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorInt64Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int64> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorMediaTimeRange extends IIterator<MediaTimeRange> {
  _IIteratorMediaTimeRange.fromPtr(super.ptr);

  late final __IIteratorMediaTimeRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorMediaTimeRangeVtbl>().ref;

  @override
  MediaTimeRange get current {
    final retValuePtr = calloc<NativeMediaTimeRange>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeMediaTimeRange> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<MediaTimeRange> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeMediaTimeRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeMediaTimeRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorMediaTimeRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<NativeMediaTimeRange> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeMediaTimeRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorMseTimeRange extends IIterator<MseTimeRange> {
  _IIteratorMseTimeRange.fromPtr(super.ptr);

  late final __IIteratorMseTimeRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorMseTimeRangeVtbl>().ref;

  @override
  MseTimeRange get current {
    final retValuePtr = calloc<NativeMseTimeRange>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeMseTimeRange> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<MseTimeRange> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeMseTimeRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeMseTimeRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorMseTimeRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<NativeMseTimeRange> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeMseTimeRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorNitRange extends IIterator<NitRange> {
  _IIteratorNitRange.fromPtr(super.ptr);

  late final __IIteratorNitRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorNitRangeVtbl>().ref;

  @override
  NitRange get current {
    final retValuePtr = calloc<NativeNitRange>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeNitRange> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<NitRange> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeNitRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeNitRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorNitRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeNitRange> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeNitRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorInspectable<T> extends IIterator<T> {
  _IIteratorInspectable.fromPtr(super.ptr, {required this.tObjectCreator});

  late final __IIteratorInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorInspectableVtbl>().ref;
  final COMObjectCreator<T> tObjectCreator;

  @override
  T get current {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Current.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
  (int, {List<T> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<COMObject>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorObject extends IIterator<Object?> {
  _IIteratorObject.fromPtr(super.ptr);

  late final __IIteratorObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorObjectVtbl>().ref;

  @override
  Object? get current {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Current.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
  (int, {List<Object?> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<COMObject>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorUri extends IIterator<Uri?> {
  _IIteratorUri.fromPtr(super.ptr);

  late final __IIteratorUriVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorUriVtbl>().ref;

  @override
  Uri? get current {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Current.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

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
  (int, {List<Uri?> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<COMObject>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorUriVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<COMObject> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorPoint extends IIterator<Point> {
  _IIteratorPoint.fromPtr(super.ptr);

  late final __IIteratorPointVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorPointVtbl>().ref;

  @override
  Point get current {
    final retValuePtr = calloc<NativePoint>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativePoint> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<Point> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativePoint>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<NativePoint> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorPointVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativePoint> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativePoint> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorPointerDeviceUsage extends IIterator<PointerDeviceUsage> {
  _IIteratorPointerDeviceUsage.fromPtr(super.ptr);

  late final __IIteratorPointerDeviceUsageVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorPointerDeviceUsageVtbl>().ref;

  @override
  PointerDeviceUsage get current {
    final retValuePtr = calloc<NativePointerDeviceUsage>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativePointerDeviceUsage> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<PointerDeviceUsage> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativePointerDeviceUsage>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativePointerDeviceUsage> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorPointerDeviceUsageVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<NativePointerDeviceUsage> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativePointerDeviceUsage> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorRect extends IIterator<Rect> {
  _IIteratorRect.fromPtr(super.ptr);

  late final __IIteratorRectVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorRectVtbl>().ref;

  @override
  Rect get current {
    final retValuePtr = calloc<NativeRect>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeRect> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<Rect> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeRect>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<NativeRect> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorRectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeRect> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeRect> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorRectInt32 extends IIterator<RectInt32> {
  _IIteratorRectInt32.fromPtr(super.ptr);

  late final __IIteratorRectInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorRectInt32Vtbl>().ref;

  @override
  RectInt32 get current {
    final retValuePtr = calloc<NativeRectInt32>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeRectInt32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<RectInt32> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeRectInt32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeRectInt32> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorRectInt32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeRectInt32> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeRectInt32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorSize extends IIterator<Size> {
  _IIteratorSize.fromPtr(super.ptr);

  late final __IIteratorSizeVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorSizeVtbl>().ref;

  @override
  Size get current {
    final retValuePtr = calloc<NativeSize>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeSize> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<Size> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeSize>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<NativeSize> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorSizeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeSize> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<NativeSize> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorSizeUInt32 extends IIterator<SizeUInt32> {
  _IIteratorSizeUInt32.fromPtr(super.ptr);

  late final __IIteratorSizeUInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorSizeUInt32Vtbl>().ref;

  @override
  SizeUInt32 get current {
    final retValuePtr = calloc<NativeSizeUInt32>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeSizeUInt32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<SizeUInt32> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeSizeUInt32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeSizeUInt32> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorSizeUInt32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeSizeUInt32> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeSizeUInt32> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorSortEntry extends IIterator<SortEntry> {
  _IIteratorSortEntry.fromPtr(super.ptr);

  late final __IIteratorSortEntryVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorSortEntryVtbl>().ref;

  @override
  SortEntry get current {
    final retValuePtr = calloc<NativeSortEntry>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeSortEntry> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<SortEntry> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeSortEntry>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeSortEntry> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorSortEntryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeSortEntry> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeSortEntry> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorStorePackageUpdateStatus
    extends IIterator<StorePackageUpdateStatus> {
  _IIteratorStorePackageUpdateStatus.fromPtr(super.ptr);

  late final __IIteratorStorePackageUpdateStatusVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorStorePackageUpdateStatusVtbl>().ref;

  @override
  StorePackageUpdateStatus get current {
    final retValuePtr = calloc<NativeStorePackageUpdateStatus>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeStorePackageUpdateStatus> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<StorePackageUpdateStatus> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeStorePackageUpdateStatus>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeStorePackageUpdateStatus> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorStorePackageUpdateStatusVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<NativeStorePackageUpdateStatus> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeStorePackageUpdateStatus> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorString extends IIterator<String> {
  _IIteratorString.fromPtr(super.ptr);

  late final __IIteratorStringVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorStringVtbl>().ref;

  @override
  String get current {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<String> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<IntPtr>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<IntPtr> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorStringVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<IntPtr> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorTextRange extends IIterator<TextRange> {
  _IIteratorTextRange.fromPtr(super.ptr);

  late final __IIteratorTextRangeVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorTextRangeVtbl>().ref;

  @override
  TextRange get current {
    final retValuePtr = calloc<NativeTextRange>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeTextRange> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<TextRange> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeTextRange>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeTextRange> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorTextRangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeTextRange> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeTextRange> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorTextSegment extends IIterator<TextSegment> {
  _IIteratorTextSegment.fromPtr(super.ptr);

  late final __IIteratorTextSegmentVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorTextSegmentVtbl>().ref;

  @override
  TextSegment get current {
    final retValuePtr = calloc<NativeTextSegment>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeTextSegment> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<TextSegment> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeTextSegment>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeTextSegment> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorTextSegmentVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<NativeTextSegment> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeTextSegment> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorUint8 extends IIterator<int> {
  _IIteratorUint8.fromPtr(super.ptr, {super.tIntType});

  late final __IIteratorUint8Vtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorUint8Vtbl>().ref;

  @override
  int get current {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint8> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<int> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint8>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Uint8> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorUint8Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint8> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint8> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorUint16 extends IIterator<int> {
  _IIteratorUint16.fromPtr(super.ptr, {super.tIntType});

  late final __IIteratorUint16Vtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorUint16Vtbl>().ref;

  @override
  int get current {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint16> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<int> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint16>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Uint16> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorUint16Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint16> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint16> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorUint32 extends IIterator<int> {
  _IIteratorUint32.fromPtr(super.ptr, {super.tIntType});

  late final __IIteratorUint32Vtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorUint32Vtbl>().ref;

  @override
  int get current {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<int> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Uint32> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorUint32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint32> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorUint64 extends IIterator<int> {
  _IIteratorUint64.fromPtr(super.ptr, {super.tIntType});

  late final __IIteratorUint64Vtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorUint64Vtbl>().ref;

  @override
  int get current {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint64> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<int> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint64>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Uint64> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorUint64Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint64> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint64> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorWindowId extends IIterator<WindowId> {
  _IIteratorWindowId.fromPtr(super.ptr);

  late final __IIteratorWindowIdVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorWindowIdVtbl>().ref;

  @override
  WindowId get current {
    final retValuePtr = calloc<NativeWindowId>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeWindowId> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<WindowId> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<NativeWindowId>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int itemsSize,
                  Pointer<NativeWindowId> items,
                  Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorWindowIdVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeWindowId> retValuePtr)>>
      get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 itemsSize,
              Pointer<NativeWindowId> items,
              Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorWinRTEnum<T> extends IIterator<T> {
  _IIteratorWinRTEnum.fromPtr(super.ptr, {required this.tEnumCreator});

  late final __IIteratorWinRTEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorWinRTEnumVtbl>().ref;
  final EnumCreator<T> tEnumCreator;

  @override
  T get current {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Current.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return tEnumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<T> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Int32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Int32> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorWinRTEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Int32> items, Pointer<Uint32> retValuePtr)>> GetMany;
}

final class _IIteratorWinRTFlagsEnum<T> extends IIterator<T> {
  _IIteratorWinRTFlagsEnum.fromPtr(super.ptr, {required this.tEnumCreator});

  late final __IIteratorWinRTFlagsEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IIteratorWinRTFlagsEnumVtbl>().ref;
  final EnumCreator<T> tEnumCreator;

  @override
  T get current {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_Current.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return tEnumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  @override
  (int, {List<T> items}) getMany(int itemsSize) {
    final retValuePtr = calloc<Uint32>();
    final items = calloc<Uint32>(itemsSize);

    try {
      final hr = _vtable.GetMany.asFunction<
              int Function(VTablePointer lpVtbl, int itemsSize,
                  Pointer<Uint32> items, Pointer<Uint32> retValuePtr)>()(
          lpVtbl, itemsSize, items, retValuePtr);

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

final class __IIteratorWinRTFlagsEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Current;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> get_HasCurrent;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> MoveNext;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 itemsSize,
              Pointer<Uint32> items, Pointer<Uint32> retValuePtr)>> GetMany;
}
