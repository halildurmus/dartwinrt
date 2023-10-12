// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'ireference.dart';

final class _IReferenceBasicGeoposition extends IReference<BasicGeoposition?> {
  _IReferenceBasicGeoposition.fromPtr(super.ptr);

  @override
  BasicGeoposition? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeBasicGeoposition>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeBasicGeoposition> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeBasicGeoposition> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceBool extends IReference<bool?> {
  _IReferenceBool.fromPtr(super.ptr);

  @override
  bool? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Bool> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceColor extends IReference<Color?> {
  _IReferenceColor.fromPtr(super.ptr);

  @override
  Color? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeColor> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeColor> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceDateTime extends IReference<DateTime?> {
  _IReferenceDateTime.fromPtr(super.ptr);

  @override
  DateTime? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Int64>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int64> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartDateTime();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceDisplayPresentationRate
    extends IReference<DisplayPresentationRate?> {
  _IReferenceDisplayPresentationRate.fromPtr(super.ptr);

  @override
  DisplayPresentationRate? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeDisplayPresentationRate>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<NativeDisplayPresentationRate>
                                  retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeDisplayPresentationRate> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceDouble extends IReference<double?> {
  _IReferenceDouble.fromPtr(super.ptr);

  @override
  double? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Double>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Double> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Double> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceDuration extends IReference<Duration?> {
  _IReferenceDuration.fromPtr(super.ptr);

  @override
  Duration? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Int64>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int64> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartDuration();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceFloat extends IReference<double?> {
  _IReferenceFloat.fromPtr(super.ptr);

  @override
  double? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Float>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Float> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Float> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceGuid extends IReference<Guid?> {
  _IReferenceGuid.fromPtr(super.ptr);

  @override
  Guid? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<GUID> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceHolographicStereoTransform
    extends IReference<HolographicStereoTransform?> {
  _IReferenceHolographicStereoTransform.fromPtr(super.ptr);

  @override
  HolographicStereoTransform? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeHolographicStereoTransform>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<NativeHolographicStereoTransform>
                                  retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeHolographicStereoTransform> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceInt16 extends IReference<int?> {
  _IReferenceInt16.fromPtr(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Int16>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int16> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int16> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceInt32 extends IReference<int?> {
  _IReferenceInt32.fromPtr(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceInt64 extends IReference<int?> {
  _IReferenceInt64.fromPtr(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Int64>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int64> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceMatrix4x4 extends IReference<Matrix4x4?> {
  _IReferenceMatrix4x4.fromPtr(super.ptr);

  @override
  Matrix4x4? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeMatrix4x4>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeMatrix4x4> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeMatrix4x4> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceMseTimeRange extends IReference<MseTimeRange?> {
  _IReferenceMseTimeRange.fromPtr(super.ptr);

  @override
  MseTimeRange? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeMseTimeRange>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeMseTimeRange> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeMseTimeRange> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferencePoint extends IReference<Point?> {
  _IReferencePoint.fromPtr(super.ptr);

  @override
  Point? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativePoint>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativePoint> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativePoint> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceQuaternion extends IReference<Quaternion?> {
  _IReferenceQuaternion.fromPtr(super.ptr);

  @override
  Quaternion? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeQuaternion>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeQuaternion> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeQuaternion> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceRect extends IReference<Rect?> {
  _IReferenceRect.fromPtr(super.ptr);

  @override
  Rect? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeRect>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeRect> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeRect> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceSize extends IReference<Size?> {
  _IReferenceSize.fromPtr(super.ptr);

  @override
  Size? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeSize>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeSize> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeSize> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceSizeInt32 extends IReference<SizeInt32?> {
  _IReferenceSizeInt32.fromPtr(super.ptr);

  @override
  SizeInt32? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeSizeInt32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeSizeInt32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeSizeInt32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceSpatialBoundingBox
    extends IReference<SpatialBoundingBox?> {
  _IReferenceSpatialBoundingBox.fromPtr(super.ptr);

  @override
  SpatialBoundingBox? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeSpatialBoundingBox>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeSpatialBoundingBox> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<NativeSpatialBoundingBox>
                      retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceSpatialBoundingFrustum
    extends IReference<SpatialBoundingFrustum?> {
  _IReferenceSpatialBoundingFrustum.fromPtr(super.ptr);

  @override
  SpatialBoundingFrustum? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeSpatialBoundingFrustum>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<NativeSpatialBoundingFrustum>
                                  retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeSpatialBoundingFrustum> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceSpatialBoundingOrientedBox
    extends IReference<SpatialBoundingOrientedBox?> {
  _IReferenceSpatialBoundingOrientedBox.fromPtr(super.ptr);

  @override
  SpatialBoundingOrientedBox? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeSpatialBoundingOrientedBox>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<NativeSpatialBoundingOrientedBox>
                                  retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeSpatialBoundingOrientedBox> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceSpatialRay extends IReference<SpatialRay?> {
  _IReferenceSpatialRay.fromPtr(super.ptr);

  @override
  SpatialRay? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeSpatialRay>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeSpatialRay> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeSpatialRay> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceString extends IReference<String?> {
  _IReferenceString.fromPtr(super.ptr);

  @override
  String? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceUint8 extends IReference<int?> {
  _IReferenceUint8.fromPtr(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Uint8>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Uint8> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint8> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceUint16 extends IReference<int?> {
  _IReferenceUint16.fromPtr(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Uint16>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint16> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint16> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceUint32 extends IReference<int?> {
  _IReferenceUint32.fromPtr(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Uint32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceUint64 extends IReference<int?> {
  _IReferenceUint64.fromPtr(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Uint64>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint64> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint64> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceVector2 extends IReference<Vector2?> {
  _IReferenceVector2.fromPtr(super.ptr);

  @override
  Vector2? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeVector2>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeVector2> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeVector2> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceVector3 extends IReference<Vector3?> {
  _IReferenceVector3.fromPtr(super.ptr);

  @override
  Vector3? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeVector3>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeVector3> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeVector3> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceWhiteBalanceGain extends IReference<WhiteBalanceGain?> {
  _IReferenceWhiteBalanceGain.fromPtr(super.ptr);

  @override
  WhiteBalanceGain? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<NativeWhiteBalanceGain>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeWhiteBalanceGain> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeWhiteBalanceGain> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceWinRTEnum<T> extends IReference<T> {
  _IReferenceWinRTEnum.fromPtr(super.ptr, {required this.enumCreator});

  final EnumCreator<T> enumCreator;

  @override
  T get value {
    if (_isNull) return null as T;

    final retValuePtr = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

final class _IReferenceWinRTFlagsEnum<T> extends IReference<T> {
  _IReferenceWinRTFlagsEnum.fromPtr(super.ptr, {required this.enumCreator});

  final EnumCreator<T> enumCreator;

  @override
  T get value {
    if (_isNull) return null as T;

    final retValuePtr = calloc<Uint32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}
