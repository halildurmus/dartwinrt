// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_graphics/windows_graphics.dart';
import 'package:windows_media/windows_media.dart';
import 'package:windows_perception/windows_perception.dart';
import 'package:windows_ui/windows_ui.dart';

import '../internal.dart';
import 'exports.g.dart';

part 'ireference_part.dart';

/// Enables arbitrary enumerations, structures, and delegate types to be used
/// as property values.
abstract interface class IReference<T> extends IInspectable {
  IReference(super.ptr) : _isNull = ptr.ref.isNull;

  final bool _isNull;

  /// Creates an instance of [IReference] from the given [ptr] and
  /// [referenceIid].
  ///
  /// [referenceIid] must be the IID of the `IReference<T>` interface (e.g.,
  /// `'{513ef3af-e784-5325-a91e-97c2b8111cf3}'`).
  ///
  /// [T] must be of type `bool`, `DateTime?`, `double?`, `Duration?`, `Guid?`,
  /// `int?`, `String?`, `WinRTEnum?` (e.g., `WebErrorStatus?`), or
  /// `WinRTStruct?` (e.g., `BasicGeoposition?`).
  ///
  /// [tEnumCreator] must be specified if [T] is `WinRTEnum?`.
  /// ```dart
  /// final reference = IReference<WebErrorStatus?>.fromPtr(ptr,
  ///     tEnumCreator: WebErrorStatus.from);
  /// ```
  factory IReference.fromPtr(
    Pointer<COMObject> ptr, {
    required String referenceIid,
    EnumCreator<T>? tEnumCreator,
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
            'Invalid IID for IReference<double?> type'),
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
        _ => throw ArgumentError.value(referenceIid, 'referenceIid',
            'Invalid IID for IReference<int?> type'),
      };
      return reference as IReference<T>;
    }

    if (isSameType<T, String?>()) {
      return _IReferenceString.fromPtr(ptr) as IReference<T>;
    }

    if (isSubtypeOfWinRTFlagsEnum<T>()) {
      if (tEnumCreator == null) throw ArgumentError.notNull('tEnumCreator');
      return _IReferenceWinRTFlagsEnum.fromPtr(ptr, tEnumCreator: tEnumCreator);
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (tEnumCreator == null) throw ArgumentError.notNull('tEnumCreator');
      return _IReferenceWinRTEnum.fromPtr(ptr, tEnumCreator: tEnumCreator);
    }

    if (isSubtypeOfWinRTStruct<T>()) {
      if (isSameType<T, BasicGeoposition?>()) {
        return _IReferenceBasicGeoposition.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, Color?>()) {
        return _IReferenceColor.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, DisplayPresentationRate?>()) {
        return _IReferenceDisplayPresentationRate.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, HolographicStereoTransform?>()) {
        return _IReferenceHolographicStereoTransform.fromPtr(ptr)
            as IReference<T>;
      }
      if (isSameType<T, Matrix4x4?>()) {
        return _IReferenceMatrix4x4.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, MseTimeRange?>()) {
        return _IReferenceMseTimeRange.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, Point?>()) {
        return _IReferencePoint.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, Quaternion?>()) {
        return _IReferenceQuaternion.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, Rect?>()) {
        return _IReferenceRect.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, Size?>()) {
        return _IReferenceSize.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, SizeInt32?>()) {
        return _IReferenceSizeInt32.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, SpatialBoundingBox?>()) {
        return _IReferenceSpatialBoundingBox.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, SpatialBoundingFrustum?>()) {
        return _IReferenceSpatialBoundingFrustum.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, SpatialBoundingOrientedBox?>()) {
        return _IReferenceSpatialBoundingOrientedBox.fromPtr(ptr)
            as IReference<T>;
      }
      if (isSameType<T, SpatialRay?>()) {
        return _IReferenceSpatialRay.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, Vector2?>()) {
        return _IReferenceVector2.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, Vector3?>()) {
        return _IReferenceVector3.fromPtr(ptr) as IReference<T>;
      }
      if (isSameType<T, WhiteBalanceGain?>()) {
        return _IReferenceWhiteBalanceGain.fromPtr(ptr) as IReference<T>;
      }
    }

    throw UnsupportedError('Unsupported type argument: $T');
  }

  /// Gets the type that is represented as an `IPropertyValue`.
  T get value;
}
