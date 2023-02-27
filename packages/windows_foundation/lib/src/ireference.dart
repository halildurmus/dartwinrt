// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../internal.dart';
import 'exports.g.dart';

part 'ireference_part.dart';

/// Enables arbitrary enumerations, structures, and delegate types to be used
/// as property values.
///
/// {@category interface}
abstract class IReference<T> extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IReference(super.ptr, {T Function(int)? enumCreator})
      : _enumCreator = enumCreator,
        _isNull = ptr.ref.isNull;

  final T Function(int)? _enumCreator;
  final bool _isNull;

  /// Creates an instance of [IReference] from the given [ptr] and
  /// [referenceIid].
  ///
  /// [referenceIid] must be the IID of the `IReference<T>` interface (e.g.
  /// `'{513ef3af-e784-5325-a91e-97c2b8111cf3}'`).
  ///
  /// [T] must be of type `bool`, `DateTime?`, `double?`, `Duration?`, `Guid?`,
  /// `int?`, `String?`, `Struct?` (e.g. `Point?`), or `WinRTEnum?` (e.g.
  /// `WebErrorStatus?`).
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum?`.
  /// ```dart
  /// final reference = IReference<WebErrorStatus?>.fromRawPointer(ptr,
  ///     enumCreator: WebErrorStatus.from);
  /// ```
  factory IReference.fromRawPointer(
    Pointer<COMObject> ptr, {
    required String referenceIid,
    T Function(int)? enumCreator,
  }) {
    if (isSameType<T, bool?>()) {
      return _IReferenceBool.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSameType<T, DateTime?>()) {
      return _IReferenceDateTime.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSameType<T, double?>()) {
      switch (referenceIid) {
        case IID_IReference_Double:
          return _IReferenceDouble.fromRawPointer(ptr) as IReference<T>;
        case IID_IReference_Float:
          return _IReferenceFloat.fromRawPointer(ptr) as IReference<T>;
      }
    }

    if (isSameType<T, Duration?>()) {
      return _IReferenceDuration.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSameType<T, Guid?>()) {
      return _IReferenceGuid.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSameType<T, int?>()) {
      switch (referenceIid) {
        case IID_IReference_Int16:
          return _IReferenceInt16.fromRawPointer(ptr) as IReference<T>;
        case IID_IReference_Int32:
          return _IReferenceInt32.fromRawPointer(ptr) as IReference<T>;
        case IID_IReference_Int64:
          return _IReferenceInt64.fromRawPointer(ptr) as IReference<T>;
        case IID_IReference_Uint8:
          return _IReferenceUint8.fromRawPointer(ptr) as IReference<T>;
        case IID_IReference_Uint16:
          return _IReferenceUint16.fromRawPointer(ptr) as IReference<T>;
        case IID_IReference_Uint32:
          return _IReferenceUint32.fromRawPointer(ptr) as IReference<T>;
        case IID_IReference_Uint64:
          return _IReferenceUint64.fromRawPointer(ptr) as IReference<T>;
      }
    }

    if (isSameType<T, String?>()) {
      return _IReferenceString.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSubtypeOfStruct<T>()) {
      if (isSameType<T, Point?>()) {
        return _IReferencePoint.fromRawPointer(ptr) as IReference<T>;
      }
      if (isSameType<T, Rect?>()) {
        return _IReferenceRect.fromRawPointer(ptr) as IReference<T>;
      }
      if (isSameType<T, Size?>()) {
        return _IReferenceSize.fromRawPointer(ptr) as IReference<T>;
      }

      // TODO: Other structs like BasicGeoposition are not yet supported.
      // Since the PropertyValue does not support creating an `IReference`
      // object for them, we need to create our own IReference<T> (and possibly
      // IPropertyValue) implementations for them.

      throw ArgumentError.value(T, 'T', 'Unsupported type');
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

      if (isSubtypeOfWinRTFlagsEnum<T>()) {
        return _IReferenceWinRTFlagsEnum.fromRawPointer(ptr,
            enumCreator: enumCreator);
      }

      return _IReferenceWinRTEnum.fromRawPointer(ptr, enumCreator: enumCreator);
    }

    throw ArgumentError.value(T, 'T', 'Unsupported type');
  }

  /// Gets the type that is represented as an `IPropertyValue`.
  T get value;
}
