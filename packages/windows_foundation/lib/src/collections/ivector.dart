// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide WinRTStringConversion;
import 'package:windows_data/windows_data.dart';
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_graphics/windows_graphics.dart';
import 'package:windows_media/windows_media.dart';
import 'package:windows_networking/windows_networking.dart';
import 'package:windows_services/windows_services.dart';
import 'package:windows_storage/windows_storage.dart';
import 'package:windows_ui/windows_ui.dart';

import '../../internal.dart';
import '../point.dart';
import '../rect.dart';
import '../size.dart';
import '../types.dart';
import '../winrt_enum.dart';
import 'iiterable.dart';
import 'iiterator.dart';
import 'ivectorview.dart';

part 'ivector_part.dart';

/// Represents a random-access collection of elements.
abstract interface class IVector<T> extends IInspectable
    implements IIterable<T> {
  // vtable begins at 6, is 12 entries long.
  IVector(
    super.ptr, {
    required String iterableIid,
    COMObjectCreator<T>? creator,
    EnumCreator<T>? enumCreator,
    DoubleType? doubleType,
    IntType? intType,
  })  : _creator = creator,
        _enumCreator = enumCreator,
        _doubleType = doubleType,
        _intType = intType,
        _iterableIid = iterableIid;

  final COMObjectCreator<T>? _creator;
  final EnumCreator<T>? _enumCreator;
  final DoubleType? _doubleType;
  final IntType? _intType;
  final String _iterableIid;

  /// Creates an instance of [IVector] from the given [ptr] and [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<T>` interface (e.g.,
  /// `'{9ac00304-83ea-5688-87b6-ae38aab65d0b}'`).
  ///
  /// [T] must be of type `bool`, `DateTime`, `double`, `Duration`, `Guid`,
  /// `int`, `Object?`, `String`, `Uri?`, `IInspectable?` (e.g.,
  /// `StorageFile?`), `WinRTEnum` (e.g., `DeviceClass`), or `WinRTStruct`
  /// (e.g., `BasicGeoposition`).
  ///
  /// [doubleType] must be specified if [T] is `double`.
  /// ```dart
  /// final vector = IVector<double>.fromPtr(ptr,
  ///     doubleType: DoubleType.float,
  ///     iterableIid: '{b01bee51-063a-5fda-bd72-d76637bb8cb8}');
  /// ```
  ///
  /// [intType] must be specified if [T] is `int`.
  /// ```dart
  /// final vector = IVector<int>.fromPtr(ptr,
  ///     intType: IntType.uint64,
  ///     iterableIid: '{4b3a3229-7995-5f3c-b248-6c1f7e664f01}');
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable?`.
  /// ```dart
  /// final vector = IVector<StorageFile?>.fromPtr(ptr,
  ///     creator: StorageFile.fromPtr,
  ///     iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}');
  /// ```
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final vector = IVector<DeviceClass>.fromPtr(ptr,
  ///     enumCreator: DeviceClass.from,
  ///     iterableIid: '{47d4be05-58f1-522e-81c6-975eb4131bb9}');
  /// ```
  factory IVector.fromPtr(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    COMObjectCreator<T>? creator,
    EnumCreator<T>? enumCreator,
    DoubleType? doubleType,
    IntType? intType,
  }) {
    if (T == bool) {
      return _IVectorBool.fromPtr(ptr, iterableIid: iterableIid) as IVector<T>;
    }

    if (T == DateTime) {
      return _IVectorDateTime.fromPtr(ptr, iterableIid: iterableIid)
          as IVector<T>;
    }

    if (T == Duration) {
      return _IVectorDuration.fromPtr(ptr, iterableIid: iterableIid)
          as IVector<T>;
    }

    if (T == Guid) {
      return _IVectorGuid.fromPtr(ptr, iterableIid: iterableIid) as IVector<T>;
    }

    if (isSubtypeOfInspectable<T>()) {
      if (creator == null) throw ArgumentError.notNull('creator');
      return _IVectorInspectable.fromPtr(ptr,
          creator: creator, iterableIid: iterableIid);
    }

    if (T == double) {
      if (doubleType == null) throw ArgumentError.notNull('doubleType');
      final vector = switch (doubleType) {
        DoubleType.double => _IVectorDouble.fromPtr(ptr,
            doubleType: doubleType, iterableIid: iterableIid),
        DoubleType.float => _IVectorFloat.fromPtr(ptr,
            doubleType: doubleType, iterableIid: iterableIid),
      };
      return vector as IVector<T>;
    }

    if (T == int) {
      if (intType == null) throw ArgumentError.notNull('intType');
      final vector = switch (intType) {
        IntType.int16 => _IVectorInt16.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.int32 => _IVectorInt32.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.int64 => _IVectorInt64.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.uint8 => _IVectorUint8.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.uint16 => _IVectorUint16.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.uint32 => _IVectorUint32.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid),
        IntType.uint64 => _IVectorUint64.fromPtr(ptr,
            intType: intType, iterableIid: iterableIid)
      };
      return vector as IVector<T>;
    }

    if (T == String) {
      return _IVectorString.fromPtr(ptr, iterableIid: iterableIid)
          as IVector<T>;
    }

    if (isSubtype<T, Uri>()) {
      return _IVectorUri.fromPtr(ptr, iterableIid: iterableIid) as IVector<T>;
    }

    if (isSubtypeOfWinRTFlagsEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');
      return _IVectorWinRTFlagsEnum.fromPtr(ptr,
          enumCreator: enumCreator, iterableIid: iterableIid);
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');
      return _IVectorWinRTEnum.fromPtr(ptr,
          enumCreator: enumCreator, iterableIid: iterableIid);
    }

    if (isNullableObjectType<T>()) {
      return _IVectorObject.fromPtr(ptr, iterableIid: iterableIid)
          as IVector<T>;
    }

    if (isSubtypeOfWinRTStruct<T>()) {
      if (T == AccessListEntry) {
        return _IVectorAccessListEntry.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == BackgroundTransferFileRange) {
        return _IVectorBackgroundTransferFileRange.fromPtr(ptr,
            iterableIid: iterableIid) as IVector<T>;
      }
      if (T == BasicGeoposition) {
        return _IVectorBasicGeoposition.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == Color) {
        return _IVectorColor.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == GpioChangeRecord) {
        return _IVectorGpioChangeRecord.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == MediaTimeRange) {
        return _IVectorMediaTimeRange.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == MseTimeRange) {
        return _IVectorMseTimeRange.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == NitRange) {
        return _IVectorNitRange.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == Point) {
        return _IVectorPoint.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == PointerDeviceUsage) {
        return _IVectorPointerDeviceUsage.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == Rect) {
        return _IVectorRect.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == RectInt32) {
        return _IVectorRectInt32.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == Size) {
        return _IVectorSize.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == SizeUInt32) {
        final iVectorSizeUInt32 =
            _IVectorSizeUInt32.fromPtr(ptr, iterableIid: iterableIid);
        return iVectorSizeUInt32 as IVector<T>;
      }
      if (T == SortEntry) {
        return _IVectorSortEntry.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == StorePackageUpdateStatus) {
        return _IVectorStorePackageUpdateStatus.fromPtr(ptr,
            iterableIid: iterableIid) as IVector<T>;
      }
      if (T == TextRange) {
        return _IVectorTextRange.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == TextSegment) {
        return _IVectorTextSegment.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
      if (T == WindowId) {
        return _IVectorWindowId.fromPtr(ptr, iterableIid: iterableIid)
            as IVector<T>;
      }
    }

    throw UnsupportedError('Unsupported type argument: $T');
  }

  /// Returns the item at the specified index in the vector view.
  T getAt(int index);

  /// Gets the number of items in the vector.
  int get size {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  /// Returns an immutable view of the vector.
  List<T> getView() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
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
      throwWindowsException(hr);
    }

    final vectorView = IVectorView<T>.fromPtr(retValuePtr,
        creator: _creator,
        enumCreator: _enumCreator,
        doubleType: _doubleType,
        intType: _intType,
        iterableIid: _iterableIid);
    return vectorView.toList();
  }

  /// Retrieves the index of a specified item in the vector.
  ///
  /// Does not work for `Uri` [value]s.
  (bool, {int index}) indexOf(T value);

  /// Sets the value at the specified index in the vector.
  void setAt(int index, T value);

  /// Inserts an item at a specified index in the vector.
  void insertAt(int index, T value);

  /// Removes the item at the specified index in the vector.
  void removeAt(int index) {
    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int)>()(
        ptr.ref.lpVtbl, index);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  /// Appends an item to the end of the vector.
  void append(T value);

  /// Removes the last item from the vector.
  void removeAtEnd() {
    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  /// Removes all items from the vector.
  void clear() {
    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  /// Retrieves multiple items from the the vector beginning at the given index.
  (int, {List<T> items}) getMany(int startIndex, int valueSize);

  /// Replaces all the items in the vector with the specified items.
  void replaceAll(List<T> value);

  late final _iIterable = IIterable<T>.fromPtr(toInterface(_iterableIid),
      creator: _creator,
      enumCreator: _enumCreator,
      doubleType: _doubleType,
      intType: _intType);

  @override
  IIterator<T> first() => _iIterable.first();

  /// Creates an unmodifiable [List] from the current [IVector] instance.
  List<T> toList() {
    if (size == 0) return List.unmodifiable(<T>[]);
    final (_, :items) = getMany(0, size);
    return List.unmodifiable(items);
  }

  /// The object at the given [index] in the list.
  ///
  /// The [index] must be a valid index of this list, which means that `index`
  /// must be non-negative and less than [size].
  T operator [](int index) {
    if (index < 0 || index >= size) {
      throw RangeError.range(index, 0, size - 1, 'index');
    }
    return getAt(index);
  }

  /// Sets the value at the given [index] in the list to [value].
  ///
  /// The [index] must be a valid index of this list, which means that `index`
  /// must be non-negative and less than [size].
  void operator []=(int index, T value) {
    if (index < 0 || index >= size) {
      throw RangeError.range(index, 0, size - 1, 'index');
    }
    setAt(index, value);
  }

  /// Returns the concatenation of this list and [other].
  ///
  /// Returns a new list containing the elements of this list followed by
  /// the elements of [other].
  ///
  /// The default behavior is to return a normal growable list.
  List<T> operator +(List<T> other) => toList() + other;
}
