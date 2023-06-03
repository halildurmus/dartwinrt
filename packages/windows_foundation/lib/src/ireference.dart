// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties, POINT, RECT, SIZE;

import '../internal.dart';
import 'exports.g.dart';

part 'ireference_part.dart';

/// Enables arbitrary enumerations, structures, and delegate types to be used
/// as property values.
abstract interface class IReference<T> extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IReference(super.ptr) : _isNull = ptr.ref.isNull;

  final bool _isNull;

  /// Creates an instance of [IReference] from the given [ptr] and
  /// [referenceIid].
  ///
  /// [referenceIid] must be the IID of the `IReference<T>` interface (e.g.
  /// `'{513ef3af-e784-5325-a91e-97c2b8111cf3}'`).
  ///
  /// [T] must be of type `bool`, `DateTime?`, `double?`, `Duration?`, `Guid?`,
  /// `int?`, `String?`, `WinRTStruct?` (e.g. `Point?`), or `WinRTEnum?` (e.g.
  /// `WebErrorStatus?`).
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum?`.
  /// ```dart
  /// final reference = IReference<WebErrorStatus?>.fromPtr(ptr,
  ///     enumCreator: WebErrorStatus.from);
  /// ```
  factory IReference.fromPtr(
    Pointer<COMObject> ptr, {
    required String referenceIid,
    T Function(int)? enumCreator,
  }) {
    if (isSameType<T, bool?>()) {
      return _IReferenceBool.fromPtr(ptr) as IReference<T>;
    }

    if (isSameType<T, DateTime?>()) {
      return _IReferenceDateTime.fromPtr(ptr) as IReference<T>;
    }

    if (isSameType<T, double?>()) {
      final reference = switch (referenceIid) {
        IID_IReference_Double => _IReferenceDouble.fromPtr(ptr),
        IID_IReference_Float => _IReferenceFloat.fromPtr(ptr),
        _ => throw ArgumentError.value(referenceIid, 'referenceIid',
            'Invalid IID for IReference<double?>'),
      };
      return reference as IReference<T>;
    }

    if (isSameType<T, Duration?>()) {
      return _IReferenceDuration.fromPtr(ptr) as IReference<T>;
    }

    if (isSameType<T, Guid?>()) {
      return _IReferenceGuid.fromPtr(ptr) as IReference<T>;
    }

    if (isSameType<T, int?>()) {
      final reference = switch (referenceIid) {
        IID_IReference_Int16 => _IReferenceInt16.fromPtr(ptr),
        IID_IReference_Int32 => _IReferenceInt32.fromPtr(ptr),
        IID_IReference_Int64 => _IReferenceInt64.fromPtr(ptr),
        IID_IReference_Uint8 => _IReferenceUint8.fromPtr(ptr),
        IID_IReference_Uint16 => _IReferenceUint16.fromPtr(ptr),
        IID_IReference_Uint32 => _IReferenceUint32.fromPtr(ptr),
        IID_IReference_Uint64 => _IReferenceUint64.fromPtr(ptr),
        _ => throw ArgumentError.value(
            referenceIid, 'referenceIid', 'Invalid IID for IReference<int?>'),
      };
      return reference as IReference<T>;
    }

    if (isSameType<T, String?>()) {
      return _IReferenceString.fromPtr(ptr) as IReference<T>;
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');

      if (isSubtypeOfWinRTFlagsEnum<T>()) {
        return _IReferenceWinRTFlagsEnum.fromPtr(ptr, enumCreator: enumCreator);
      }

      return _IReferenceWinRTEnum.fromPtr(ptr, enumCreator: enumCreator);
    }

    if (isSubtypeOfWinRTStruct<T>()) {
      if (isSameType<T, Point?>()) {
        return _IReferencePoint.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, Rect?>()) {
        return _IReferenceRect.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, Size?>()) {
        return _IReferenceSize.fromPtr(ptr) as IReference<T>;
      }

      // TODO: Other structs like BasicGeoposition are not yet supported.
      // Since the PropertyValue does not support creating an `IReference`
      // object for them, we need to create our own IReference<T> (and possibly
      // IPropertyValue) implementations for them.

      throw ArgumentError.value(T, 'T', 'Unsupported type');
    }

    throw ArgumentError.value(T, 'T', 'Unsupported type');
  }

  /// Gets the type that is represented as an `IPropertyValue`.
  T get value;
}
