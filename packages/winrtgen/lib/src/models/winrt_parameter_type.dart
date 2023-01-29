// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../projections/type.dart';

enum WinRTParameterType {
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
  object,
  pointer,
  reference,
  simpleArray,
  string,
  struct,
  uri;

  factory WinRTParameterType.from(TypeProjection type) {
    if (type.isReferenceType) {
      // Return the wrapped type's parameter type.
      final typeArgProjection = TypeProjection(type.typeIdentifier.typeArg!);
      return WinRTParameterType.from(typeArgProjection);
    }

    if (type.isPointer) return WinRTParameterType.pointer;
    if (type.isSimpleArray) return WinRTParameterType.simpleArray;
    if (type.isDateTime) return WinRTParameterType.dateTime;
    if (type.isTimeSpan) return WinRTParameterType.duration;
    if (type.isEnum) return WinRTParameterType.enum_;
    if (type.isGuid) return WinRTParameterType.guid;
    if (type.isIReference) return WinRTParameterType.reference;
    if (type.isString) return WinRTParameterType.string;
    if (type.isUri) return WinRTParameterType.uri;
    if (type.isBool) return WinRTParameterType.bool;
    if (type.isDouble) return WinRTParameterType.double;
    if (type.isInt) return WinRTParameterType.int;
    if (type.isDelegate) return WinRTParameterType.delegate;
    if (type.isStruct) return WinRTParameterType.struct;
    if (type.isClass) return WinRTParameterType.class_;
    if (type.isInterface) return WinRTParameterType.interface;
    if (type.isObject) return WinRTParameterType.object;

    throw Exception('Unknown parameter type: $type');
  }
}
