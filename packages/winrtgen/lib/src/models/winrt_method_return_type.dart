// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../projections/type.dart';

/// The return type of a WinRT method.
enum WinRTMethodReturnType {
  asyncAction,
  asyncActionWithProgress,
  asyncOperation,
  asyncOperationWithProgress,
  bool,
  class_,
  dateTime,
  delegate,
  double,
  duration,
  enum_,
  guid,
  int,
  interface,
  map,
  mapView,
  object,
  reference,
  string,
  struct,
  uri,
  vector,
  vectorView,
  void_;

  /// Returns the appropriate WinRT method return type for the [type].
  factory WinRTMethodReturnType.from(TypeProjection type) {
    if (type.isDateTime) return WinRTMethodReturnType.dateTime;
    if (type.isTimeSpan) return WinRTMethodReturnType.duration;
    if (type.isEnum) return WinRTMethodReturnType.enum_;
    if (type.isGuid) return WinRTMethodReturnType.guid;
    if (type.isAsyncAction) return WinRTMethodReturnType.asyncAction;
    if (type.isAsyncOperation) return WinRTMethodReturnType.asyncOperation;
    if (type.isMap) return WinRTMethodReturnType.map;
    if (type.isMapView) return WinRTMethodReturnType.mapView;
    if (type.isIReference) return WinRTMethodReturnType.reference;
    if (type.isString) return WinRTMethodReturnType.string;
    if (type.isUri) return WinRTMethodReturnType.uri;
    if (type.isVector) return WinRTMethodReturnType.vector;
    if (type.isVectorView) return WinRTMethodReturnType.vectorView;
    if (type.isVoid) return WinRTMethodReturnType.void_;
    if (type.isBool) return WinRTMethodReturnType.bool;
    if (type.isDouble) return WinRTMethodReturnType.double;
    if (type.isInt) return WinRTMethodReturnType.int;
    if (type.isDelegate) return WinRTMethodReturnType.delegate;
    if (type.isStruct) return WinRTMethodReturnType.struct;
    if (type.isClass) return WinRTMethodReturnType.class_;
    if (type.isInterface) return WinRTMethodReturnType.interface;
    if (type.isObject) return WinRTMethodReturnType.object;

    throw Exception('Unknown parameter type: $type');
  }
}
