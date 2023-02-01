// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../projections/type.dart';

/// The return type of a WinRT getter.
enum WinRTGetterReturnType {
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
  vectorView;

  /// Returns the appropriate WinRT getter return type for the [type].
  factory WinRTGetterReturnType.from(TypeProjection type) {
    if (type.isDateTime) return WinRTGetterReturnType.dateTime;
    if (type.isTimeSpan) return WinRTGetterReturnType.duration;
    if (type.isEnum) return WinRTGetterReturnType.enum_;
    if (type.isGuid) return WinRTGetterReturnType.guid;
    if (type.isMap) return WinRTGetterReturnType.map;
    if (type.isMapView) return WinRTGetterReturnType.mapView;
    if (type.isIReference) return WinRTGetterReturnType.reference;
    if (type.isString) return WinRTGetterReturnType.string;
    if (type.isUri) return WinRTGetterReturnType.uri;
    if (type.isVector) return WinRTGetterReturnType.vector;
    if (type.isVectorView) return WinRTGetterReturnType.vectorView;
    if (type.isBool) return WinRTGetterReturnType.bool;
    if (type.isDouble) return WinRTGetterReturnType.double;
    if (type.isInt) return WinRTGetterReturnType.int;
    if (type.isDelegate) return WinRTGetterReturnType.delegate;
    if (type.isStruct) return WinRTGetterReturnType.struct;
    if (type.isClass) return WinRTGetterReturnType.class_;
    if (type.isInterface) return WinRTGetterReturnType.interface;
    if (type.isObject) return WinRTGetterReturnType.object;

    throw Exception('Unknown parameter type: $type');
  }
}
