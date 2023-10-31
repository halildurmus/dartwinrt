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

part 'ivectorview_part.dart';

/// Represents an immutable view into a vector.
abstract interface class IVectorView<T> extends IInspectable
    implements IIterable<T> {
  IVectorView(
    super.ptr, {
    required String iterableIid,
    EnumCreator<T>? tEnumCreator,
    COMObjectCreator<T>? tObjectCreator,
    DoubleType? tDoubleType,
    IntType? tIntType,
  })  : _tEnumCreator = tEnumCreator,
        _tObjectCreator = tObjectCreator,
        _tDoubleType = tDoubleType,
        _tIntType = tIntType,
        _iterableIid = iterableIid;

  final EnumCreator<T>? _tEnumCreator;
  final COMObjectCreator<T>? _tObjectCreator;
  final DoubleType? _tDoubleType;
  final IntType? _tIntType;
  final String _iterableIid;

  /// Creates an instance of [IVectorView] from the given [ptr] and
  /// [iterableIid].
  ///
  /// [iterableIid] must be the IID of the `IIterable<T>` interface (e.g.,
  /// `'{9ac00304-83ea-5688-87b6-ae38aab65d0b}'`).
  ///
  /// [T] must be of type `bool`, `DateTime`, `double`, `Duration`, `Guid`,
  /// `int`, `Object?`, `String`, `Uri?`, `IInspectable?` (e.g.,
  /// `StorageFile?`), `WinRTEnum` (e.g., `DeviceClass`), or `WinRTStruct`
  /// (e.g., `BasicGeoposition`).
  ///
  /// [tDoubleType] must be specified if [T] is `double`.
  /// ```dart
  /// final vectorView = IVectorView<double>.fromPtr(ptr,
  ///     iterableIid: '{b01bee51-063a-5fda-bd72-d76637bb8cb8}',
  ///     tDoubleType: DoubleType.float);
  /// ```
  ///
  /// [tIntType] must be specified if [T] is `int`.
  /// ```dart
  /// final vectorView = IVectorView<int>.fromPtr(ptr,
  ///     iterableIid: '{4b3a3229-7995-5f3c-b248-6c1f7e664f01}',
  ///     tIntType: IntType.uint64);
  /// ```
  ///
  /// [tObjectCreator] must be specified if [T] is `IInspectable?`.
  /// ```dart
  /// final vectorView = IVectorView<StorageFile?>.fromPtr(ptr,
  ///     iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}',
  ///     tObjectCreator: StorageFile.fromPtr);
  /// ```
  ///
  /// [tEnumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final vectorView = IVectorView<DeviceClass>.fromPtr(ptr,
  ///     iterableIid: '{47d4be05-58f1-522e-81c6-975eb4131bb9}',
  ///     tEnumCreator: DeviceClass.from);
  /// ```
  factory IVectorView.fromPtr(
    Pointer<COMObject> ptr, {
    required String iterableIid,
    EnumCreator<T>? tEnumCreator,
    COMObjectCreator<T>? tObjectCreator,
    DoubleType? tDoubleType,
    IntType? tIntType,
  }) {
    if (T == bool) {
      return _IVectorViewBool.fromPtr(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (T == DateTime) {
      return _IVectorViewDateTime.fromPtr(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (T == Duration) {
      return _IVectorViewDuration.fromPtr(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (T == Guid) {
      return _IVectorViewGuid.fromPtr(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (isSubtypeOfInspectable<T>()) {
      if (tObjectCreator == null) throw ArgumentError.notNull('tObjectCreator');
      return _IVectorViewInspectable.fromPtr(ptr,
          tObjectCreator: tObjectCreator, iterableIid: iterableIid);
    }

    if (T == double) {
      if (tDoubleType == null) throw ArgumentError.notNull('tDoubleType');
      final vectorView = switch (tDoubleType) {
        DoubleType.double => _IVectorViewDouble.fromPtr(ptr,
            tDoubleType: tDoubleType, iterableIid: iterableIid),
        DoubleType.float => _IVectorViewFloat.fromPtr(ptr,
            tDoubleType: tDoubleType, iterableIid: iterableIid),
      };
      return vectorView as IVectorView<T>;
    }

    if (T == int) {
      if (tIntType == null) throw ArgumentError.notNull('tIntType');
      final vectorView = switch (tIntType) {
        IntType.int16 => _IVectorViewInt16.fromPtr(ptr,
            tIntType: tIntType, iterableIid: iterableIid),
        IntType.int32 => _IVectorViewInt32.fromPtr(ptr,
            tIntType: tIntType, iterableIid: iterableIid),
        IntType.int64 => _IVectorViewInt64.fromPtr(ptr,
            tIntType: tIntType, iterableIid: iterableIid),
        IntType.uint8 => _IVectorViewUint8.fromPtr(ptr,
            tIntType: tIntType, iterableIid: iterableIid),
        IntType.uint16 => _IVectorViewUint16.fromPtr(ptr,
            tIntType: tIntType, iterableIid: iterableIid),
        IntType.uint32 => _IVectorViewUint32.fromPtr(ptr,
            tIntType: tIntType, iterableIid: iterableIid),
        IntType.uint64 => _IVectorViewUint64.fromPtr(ptr,
            tIntType: tIntType, iterableIid: iterableIid)
      };
      return vectorView as IVectorView<T>;
    }

    if (T == String) {
      return _IVectorViewString.fromPtr(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (isSubtype<T, Uri>()) {
      return _IVectorViewUri.fromPtr(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (isSubtypeOfWinRTFlagsEnum<T>()) {
      if (tEnumCreator == null) throw ArgumentError.notNull('tEnumCreator');
      return _IVectorViewWinRTFlagsEnum.fromPtr(ptr,
          tEnumCreator: tEnumCreator, iterableIid: iterableIid);
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (tEnumCreator == null) throw ArgumentError.notNull('tEnumCreator');
      return _IVectorViewWinRTEnum.fromPtr(ptr,
          tEnumCreator: tEnumCreator, iterableIid: iterableIid);
    }

    if (isNullableObjectType<T>()) {
      return _IVectorViewObject.fromPtr(ptr, iterableIid: iterableIid)
          as IVectorView<T>;
    }

    if (isSubtypeOfWinRTStruct<T>()) {
      if (T == AccessListEntry) {
        return _IVectorViewAccessListEntry.fromPtr(ptr,
            iterableIid: iterableIid) as IVectorView<T>;
      }
      if (T == BackgroundTransferFileRange) {
        return _IVectorViewBackgroundTransferFileRange.fromPtr(ptr,
            iterableIid: iterableIid) as IVectorView<T>;
      }
      if (T == BasicGeoposition) {
        return _IVectorViewBasicGeoposition.fromPtr(ptr,
            iterableIid: iterableIid) as IVectorView<T>;
      }
      if (T == Color) {
        return _IVectorViewColor.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == GpioChangeRecord) {
        return _IVectorViewGpioChangeRecord.fromPtr(ptr,
            iterableIid: iterableIid) as IVectorView<T>;
      }
      if (T == MediaTimeRange) {
        return _IVectorViewMediaTimeRange.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == MseTimeRange) {
        return _IVectorViewMseTimeRange.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == NitRange) {
        return _IVectorViewNitRange.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == Point) {
        return _IVectorViewPoint.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == PointerDeviceUsage) {
        return _IVectorViewPointerDeviceUsage.fromPtr(ptr,
            iterableIid: iterableIid) as IVectorView<T>;
      }
      if (T == Rect) {
        return _IVectorViewRect.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == RectInt32) {
        return _IVectorViewRectInt32.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == Size) {
        return _IVectorViewSize.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == SizeUInt32) {
        final iVectorSizeUInt32 =
            _IVectorViewSizeUInt32.fromPtr(ptr, iterableIid: iterableIid);
        return iVectorSizeUInt32 as IVectorView<T>;
      }
      if (T == SortEntry) {
        return _IVectorViewSortEntry.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == StorePackageUpdateStatus) {
        return _IVectorViewStorePackageUpdateStatus.fromPtr(ptr,
            iterableIid: iterableIid) as IVectorView<T>;
      }
      if (T == TextRange) {
        return _IVectorViewTextRange.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == TextSegment) {
        return _IVectorViewTextSegment.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
      if (T == WindowId) {
        return _IVectorViewWindowId.fromPtr(ptr, iterableIid: iterableIid)
            as IVectorView<T>;
      }
    }

    throw UnsupportedError('Unsupported type argument: $T');
  }

  late final _IVectorViewVtbl __vtable =
      ptr.ref.vtable.cast<_IVectorViewVtbl>().ref;

  /// Returns the item at the specified index in the vector view.
  T getAt(int index);

  /// Gets the number of items in the vector view.
  int get size {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = __vtable.get_Size.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  /// Retrieves the index of a specified item in the vector view.
  ///
  /// Does not work for `Uri` [value]s.
  (bool, {int index}) indexOf(T value);

  /// Retrieves multiple items from the vector view beginning at the given
  /// index.
  (int, {List<T> items}) getMany(int startIndex, int valueSize);

  late final _iIterable = IIterable<T>.fromPtr(
    toInterface(_iterableIid),
    tEnumCreator: _tEnumCreator,
    tObjectCreator: _tObjectCreator,
    tDoubleType: _tDoubleType,
    tIntType: _tIntType,
  );

  @override
  IIterator<T> first() => _iIterable.first();

  /// Creates an unmodifiable [List] from the current [IVectorView] instance.
  List<T> toList() {
    if (size == 0) return List.unmodifiable(<T>[]);
    final (_, :items) = getMany(0, size);
    return List.unmodifiable(items);
  }

  /// The object at the given [index] in the list.
  ///
  /// The [index] must be a valid index of this list,
  /// which means that `index` must be non-negative and
  /// less than [size].
  T operator [](int index) {
    if (index < 0 || index >= size) {
      throw RangeError.range(index, 0, size - 1, 'index');
    }
    return getAt(index);
  }

  /// Returns the concatenation of this list and [other].
  ///
  /// Returns a new list containing the elements of this list followed by
  /// the elements of [other].
  ///
  /// The default behavior is to return a normal growable list.
  List<T> operator +(List<T> other) => toList() + other;
}

final class _IVectorViewVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Uint32 index /* ,
              Pointer<T> retValuePtr */
              )>> GetAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              /* T value, */
              Pointer<Uint32> index,
              Pointer<Bool> retValuePtr)>> IndexOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 itemsSize,
              /*    Pointer<T> items, */
              Pointer<Uint32> retValuePtr)>> GetMany;
}
