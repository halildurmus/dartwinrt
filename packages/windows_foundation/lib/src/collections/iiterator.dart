// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

part 'iiterator_part.dart';

/// Supports simple iteration over a collection.
abstract interface class IIterator<T> extends IInspectable {
  IIterator(super.ptr, {DoubleType? tDoubleType, IntType? tIntType});

  /// Creates an instance of [IIterator] from the given [ptr].
  ///
  /// [T] must be of type `bool`, `DateTime`, `double`, `Duration`, `Guid`,
  /// `int`, `Object?`, `String`, `Uri?`, `IInspectable?` (e.g.,
  /// `StorageFile?`), `WinRTEnum` (e.g., `DeviceClass`), or `WinRTStruct`
  /// (e.g., `BasicGeoposition`).
  ///
  /// [tDoubleType] must be specified if [T] is `double`.
  /// ```dart
  /// final iterator =
  ///     IIterator<double>.fromPtr(ptr, tDoubleType: DoubleType.float);
  /// ```
  ///
  /// [tIntType] must be specified if [T] is `int`.
  /// ```dart
  /// final iterator = IIterator<int>.fromPtr(ptr, tIntType: IntType.uint64);
  /// ```
  ///
  /// [tObjectCreator] must be specified if [T] is `IInspectable?`.
  /// ```dart
  /// final iterator = IIterator<StorageFile?>.fromPtr(ptr,
  ///     tObjectCreator: StorageFile.fromPtr);
  /// ```
  ///
  /// [tEnumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final iterator = IIterator<DeviceClass>.fromPtr(ptr,
  ///     tEnumCreator: DeviceClass.from);
  /// ```
  factory IIterator.fromPtr(
    Pointer<COMObject> ptr, {
    EnumCreator<T>? tEnumCreator,
    COMObjectCreator<T>? tObjectCreator,
    DoubleType? tDoubleType,
    IntType? tIntType,
  }) {
    if (T == bool) return _IIteratorBool.fromPtr(ptr) as IIterator<T>;
    if (T == DateTime) return _IIteratorDateTime.fromPtr(ptr) as IIterator<T>;
    if (T == Duration) return _IIteratorDuration.fromPtr(ptr) as IIterator<T>;
    if (T == Guid) return _IIteratorGuid.fromPtr(ptr) as IIterator<T>;

    if (T == double) {
      if (tDoubleType == null) throw ArgumentError.notNull('tDoubleType');
      final iterator = switch (tDoubleType) {
        DoubleType.double =>
          _IIteratorDouble.fromPtr(ptr, tDoubleType: tDoubleType),
        DoubleType.float =>
          _IIteratorFloat.fromPtr(ptr, tDoubleType: tDoubleType),
      };
      return iterator as IIterator<T>;
    }

    if (T == int) {
      if (tIntType == null) throw ArgumentError.notNull('tIntType');
      final iterator = switch (tIntType) {
        IntType.int16 => _IIteratorInt16.fromPtr(ptr, tIntType: tIntType),
        IntType.int32 => _IIteratorInt32.fromPtr(ptr, tIntType: tIntType),
        IntType.int64 => _IIteratorInt64.fromPtr(ptr, tIntType: tIntType),
        IntType.uint8 => _IIteratorUint8.fromPtr(ptr, tIntType: tIntType),
        IntType.uint16 => _IIteratorUint16.fromPtr(ptr, tIntType: tIntType),
        IntType.uint32 => _IIteratorUint32.fromPtr(ptr, tIntType: tIntType),
        IntType.uint64 => _IIteratorUint64.fromPtr(ptr, tIntType: tIntType)
      };
      return iterator as IIterator<T>;
    }

    if (isSubtypeOfInspectable<T>()) {
      if (tObjectCreator == null) throw ArgumentError.notNull('tObjectCreator');
      return _IIteratorInspectable.fromPtr(ptr, tObjectCreator: tObjectCreator);
    }

    if (T == String) return _IIteratorString.fromPtr(ptr) as IIterator<T>;
    if (isSubtype<T, Uri>()) return _IIteratorUri.fromPtr(ptr) as IIterator<T>;

    if (isSubtypeOfWinRTFlagsEnum<T>()) {
      if (tEnumCreator == null) throw ArgumentError.notNull('tEnumCreator');
      return _IIteratorWinRTFlagsEnum.fromPtr(ptr, tEnumCreator: tEnumCreator);
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (tEnumCreator == null) throw ArgumentError.notNull('tEnumCreator');
      return _IIteratorWinRTEnum.fromPtr(ptr, tEnumCreator: tEnumCreator);
    }

    if (isNullableObjectType<T>()) {
      return _IIteratorObject.fromPtr(ptr) as IIterator<T>;
    }

    if (isSubtypeOfWinRTStruct<T>()) {
      if (T == AccessListEntry) {
        return _IIteratorAccessListEntry.fromPtr(ptr) as IIterator<T>;
      }
      if (T == BackgroundTransferFileRange) {
        return _IIteratorBackgroundTransferFileRange.fromPtr(ptr)
            as IIterator<T>;
      }
      if (T == BasicGeoposition) {
        return _IIteratorBasicGeoposition.fromPtr(ptr) as IIterator<T>;
      }
      if (T == Color) return _IIteratorColor.fromPtr(ptr) as IIterator<T>;
      if (T == GpioChangeRecord) {
        return _IIteratorGpioChangeRecord.fromPtr(ptr) as IIterator<T>;
      }
      if (T == MediaTimeRange) {
        return _IIteratorMediaTimeRange.fromPtr(ptr) as IIterator<T>;
      }
      if (T == MseTimeRange) {
        return _IIteratorMseTimeRange.fromPtr(ptr) as IIterator<T>;
      }
      if (T == NitRange) return _IIteratorNitRange.fromPtr(ptr) as IIterator<T>;
      if (T == Point) return _IIteratorPoint.fromPtr(ptr) as IIterator<T>;
      if (T == PointerDeviceUsage) {
        return _IIteratorPointerDeviceUsage.fromPtr(ptr) as IIterator<T>;
      }
      if (T == Rect) return _IIteratorRect.fromPtr(ptr) as IIterator<T>;
      if (T == RectInt32)
        return _IIteratorRectInt32.fromPtr(ptr) as IIterator<T>;
      if (T == Size) return _IIteratorSize.fromPtr(ptr) as IIterator<T>;
      if (T == SizeUInt32) {
        return _IIteratorSizeUInt32.fromPtr(ptr) as IIterator<T>;
      }
      if (T == SortEntry)
        return _IIteratorSortEntry.fromPtr(ptr) as IIterator<T>;
      if (T == StorePackageUpdateStatus) {
        return _IIteratorStorePackageUpdateStatus.fromPtr(ptr) as IIterator<T>;
      }
      if (T == TextRange) {
        return _IIteratorTextRange.fromPtr(ptr) as IIterator<T>;
      }
      if (T == TextSegment) {
        return _IIteratorTextSegment.fromPtr(ptr) as IIterator<T>;
      }
      if (T == WindowId) return _IIteratorWindowId.fromPtr(ptr) as IIterator<T>;
    }

    throw UnsupportedError('Unsupported type argument: $T');
  }

  late final _IIteratorVtbl __vtable =
      ptr.ref.vtable.cast<_IIteratorVtbl>().ref;

  /// Gets the current item in the collection.
  T get current;

  /// Gets a value that indicates whether the iterator refers to a current item
  /// or is at the end of the collection.
  bool get hasCurrent {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = __vtable.get_HasCurrent.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  /// Advances the iterator to the next item in the collection.
  bool moveNext() {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = __vtable.MoveNext.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  /// Retrieves multiple items from the iterator.
  (int, {List<T> items}) getMany(int capacity);
}

final class _IIteratorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl /* ,
              Pointer<T> retValuePtr */
              )>> get_Current;
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
              /*    Pointer<T> items, */
              Pointer<Uint32> retValuePtr)>> GetMany;
}
