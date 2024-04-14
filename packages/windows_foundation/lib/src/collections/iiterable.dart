// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
  /// Creates an instance of [IIterable] from the given [ptr].
  ///
  /// [T] must be of type `bool`, `DateTime`, `double`, `Duration`, `Guid`,
  /// `int`, `Object?`, `String`, `Uri?`, `IInspectable?` (e.g.,
  /// `StorageFile?`), `WinRTEnum` (e.g., `DeviceClass`), or `WinRTStruct`
  /// (e.g., `BasicGeoposition`).
  ///
  /// [tDoubleType] must be specified if [T] is `double`.
  /// ```dart
  /// final iterable =
  ///     IIterable<double>.fromPtr(ptr, tDoubleType: DoubleType.float);
  /// ```
  ///
  /// [tIntType] must be specified if [T] is `int`.
  /// ```dart
  /// final iterable = IIterable<int>.fromPtr(ptr, tIntType: IntType.uint64);
  /// ```
  ///
  /// [tObjectCreator] must be specified if [T] is `IInspectable?`.
  /// ```dart
  /// final iterable = IIterable<StorageFile?>.fromPtr(ptr,
  ///     tObjectCreator: StorageFile.fromPtr);
  /// ```
  ///
  /// [tEnumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final iterable = IIterable<DeviceClass>.fromPtr(ptr,
  ///     tEnumCreator: DeviceClass.from);
  /// ```
  IIterable.fromPtr(
    super.ptr, {
    EnumCreator<T>? tEnumCreator,
    COMObjectCreator<T>? tObjectCreator,
    DoubleType? tDoubleType,
    IntType? tIntType,
  })  : _tEnumCreator = tEnumCreator,
        _tObjectCreator = tObjectCreator,
        _tDoubleType = tDoubleType,
        _tIntType = tIntType {
    if (tDoubleType == null && this is IIterable<double>) {
      throw ArgumentError.notNull('tDoubleType');
    }

    if (tIntType == null && this is IIterable<int>) {
      throw ArgumentError.notNull('tIntType');
    }

    if (tObjectCreator == null && this is IIterable<IInspectable>) {
      throw ArgumentError.notNull('tObjectCreator');
    }

    if (tEnumCreator == null && this is IIterable<WinRTEnum>) {
      throw ArgumentError.notNull('tEnumCreator');
    }
  }

  final EnumCreator<T>? _tEnumCreator;
  final COMObjectCreator<T>? _tObjectCreator;
  final DoubleType? _tDoubleType;
  final IntType? _tIntType;

  late final _IIterableVtbl __vtable =
      ptr.ref.vtable.cast<_IIterableVtbl>().ref;

  /// Returns an iterator for the items in the collection.
  IIterator<T> first() {
    final retValuePtr = calloc<COMObject>();

    final hr = __vtable.First.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    return IIterator.fromPtr(
      retValuePtr,
      tEnumCreator: _tEnumCreator,
      tObjectCreator: _tObjectCreator,
      tDoubleType: _tDoubleType,
      tIntType: _tIntType,
    );
  }
}

final class _IIterableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>> First;
}
