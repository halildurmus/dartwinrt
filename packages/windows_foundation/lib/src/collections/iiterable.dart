// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../internal.dart';
import '../types.dart';
import '../winrt_enum.dart';
import 'iiterator.dart';

/// Exposes an iterator that supports simple iteration over a collection of a
/// specified type.
interface class IIterable<T> extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  final COMObjectCreator<T>? _creator;
  final EnumCreator<T>? _enumCreator;
  final DoubleType? _doubleType;
  final IntType? _intType;

  /// Creates an instance of [IIterable] from the given [ptr].
  ///
  /// [T] must be of type `bool`, `DateTime`, `double`, `Duration`, `Guid`,
  /// `int`, `Object?`, `String`, `Uri?`, `IInspectable?` (e.g.,
  /// `StorageFile?`), `WinRTEnum` (e.g., `DeviceClass`), or `WinRTStruct`
  /// (e.g., `BasicGeoposition`).
  ///
  /// [doubleType] must be specified if [T] is `double`.
  /// ```dart
  /// final iterable =
  ///     IIterable<double>.fromPtr(ptr, doubleType: DoubleType.float);
  /// ```
  ///
  /// [intType] must be specified if [T] is `int`.
  /// ```dart
  /// final iterable = IIterable<int>.fromPtr(ptr, intType: IntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable?`.
  /// ```dart
  /// final iterable = IIterable<StorageFile?>.fromPtr(ptr,
  ///     creator: StorageFile.fromPtr);
  /// ```
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final iterable = IIterable<DeviceClass>.fromPtr(ptr,
  ///     enumCreator: DeviceClass.from);
  /// ```
  IIterable.fromPtr(
    super.ptr, {
    COMObjectCreator<T>? creator,
    EnumCreator<T>? enumCreator,
    DoubleType? doubleType,
    IntType? intType,
  })  : _creator = creator,
        _enumCreator = enumCreator,
        _doubleType = doubleType,
        _intType = intType {
    if (doubleType == null && this is IIterable<double>) {
      throw ArgumentError.notNull('doubleType');
    }

    if (intType == null && this is IIterable<int>) {
      throw ArgumentError.notNull('intType');
    }

    if (creator == null && this is IIterable<IInspectable>) {
      throw ArgumentError.notNull('creator');
    }

    if (enumCreator == null && this is IIterable<WinRTEnum>) {
      throw ArgumentError.notNull('enumCreator');
    }
  }

  /// Returns an iterator for the items in the collection.
  IIterator<T> first() {
    final retValuePtr = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    return IIterator.fromPtr(retValuePtr,
        creator: _creator,
        enumCreator: _enumCreator,
        doubleType: _doubleType,
        intType: _intType);
  }
}
