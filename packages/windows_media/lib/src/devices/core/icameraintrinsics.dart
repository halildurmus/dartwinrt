// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_ICameraIntrinsics = '{0aa6ed32-6589-49da-afde-594270ca0aac}';

class ICameraIntrinsics extends IInspectable {
  ICameraIntrinsics.fromPtr(super.ptr);

  factory ICameraIntrinsics.from(IInspectable interface) =>
      interface.cast(ICameraIntrinsics.fromPtr, IID_ICameraIntrinsics);

  Vector2 get focalLength {
    final value = calloc<NativeVector2>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeVector2> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeVector2> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Vector2 get principalPoint {
    final value = calloc<NativeVector2>();

    try {
      final hr = vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeVector2> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeVector2> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Vector3 get radialDistortion {
    final value = calloc<NativeVector3>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeVector3> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeVector3> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Vector2 get tangentialDistortion {
    final value = calloc<NativeVector2>();

    try {
      final hr = vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeVector2> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeVector2> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  int get imageWidth {
    final value = calloc<Uint32>();

    try {
      final hr = vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get imageHeight {
    final value = calloc<Uint32>();

    try {
      final hr = vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Point projectOntoFrame(Vector3 coordinate) {
    final result = calloc<NativePoint>();

    try {
      final coordinateNativeStructPtr = coordinate.toNative();

      final hr = vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativeVector3 coordinate,
                              Pointer<NativePoint> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, NativeVector3 coordinate,
                      Pointer<NativePoint> result)>()(
          lpVtbl, coordinateNativeStructPtr.ref, result);

      free(coordinateNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDart();
    } finally {
      free(result);
    }
  }

  Vector2 unprojectAtUnitDepth(Point pixelCoordinate) {
    final result = calloc<NativeVector2>();

    try {
      final pixelCoordinateNativeStructPtr = pixelCoordinate.toNative();

      final hr = vtable
              .elementAt(13)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativePoint pixelCoordinate,
                              Pointer<NativeVector2> result)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      NativePoint pixelCoordinate,
                      Pointer<NativeVector2> result)>()(
          lpVtbl, pixelCoordinateNativeStructPtr.ref, result);

      free(pixelCoordinateNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDart();
    } finally {
      free(result);
    }
  }

  List<Point> projectManyOntoFrame(List<Vector3> coordinates, int resultsSize) {
    final allocator = Arena();
    final coordinatesArray = coordinates.toArray(allocator: allocator);
    final results = calloc<NativePoint>(resultsSize);

    try {
      final hr = vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 coordinatesSize,
                              Pointer<NativeVector3> coordinates,
                              Uint32 resultsSize,
                              Pointer<NativePoint> results)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int coordinatesSize,
                      Pointer<NativeVector3> coordinates,
                      int resultsSize,
                      Pointer<NativePoint> results)>()(
          lpVtbl, coordinates.length, coordinatesArray, resultsSize, results);

      if (FAILED(hr)) throwWindowsException(hr);

      return results.toList(length: resultsSize);
    } finally {
      allocator.releaseAll();
      free(results);
    }
  }

  List<Vector2> unprojectPixelsAtUnitDepth(
      List<Point> pixelCoordinates, int resultsSize) {
    final allocator = Arena();
    final pixelCoordinatesArray =
        pixelCoordinates.toArray(allocator: allocator);
    final results = calloc<NativeVector2>(resultsSize);

    try {
      final hr = vtable
              .elementAt(15)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 pixelCoordinatesSize,
                              Pointer<NativePoint> pixelCoordinates,
                              Uint32 resultsSize,
                              Pointer<NativeVector2> results)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int pixelCoordinatesSize,
                      Pointer<NativePoint> pixelCoordinates,
                      int resultsSize,
                      Pointer<NativeVector2> results)>()(lpVtbl,
          pixelCoordinates.length, pixelCoordinatesArray, resultsSize, results);

      if (FAILED(hr)) throwWindowsException(hr);

      return results.toList(length: resultsSize);
    } finally {
      allocator.releaseAll();
      free(results);
    }
  }
}
