// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';

import '../../ipropertyvalue.dart';
import '../../propertytype.dart';
import 'comobject_helpers.dart';

extension IPropertyValueHelper on IPropertyValue {
  /// Gets the type that is represented as an [IPropertyValue].
  Object? get value {
    if (ptr.isNull) return null;

    // If the object does not implement the IPropertyValue interface, return it
    // as an IInspectable object.
    if (!getInterfaces(this).contains(IID_IPropertyValue)) {
      return IInspectable.from(this);
    }

    return switch (type) {
      PropertyType.boolean => getBoolean(),
      PropertyType.booleanArray => getBooleanArray(),
      PropertyType.char16 => getChar16(),
      PropertyType.char16Array => getChar16Array(),
      PropertyType.dateTime => getDateTime(),
      PropertyType.dateTimeArray => getDateTimeArray(),
      PropertyType.double_ => getDouble(),
      PropertyType.doubleArray => getDoubleArray(),
      PropertyType.guid => getGuid(),
      PropertyType.guidArray => getGuidArray(),
      PropertyType.inspectableArray => getInspectableArray(),
      PropertyType.int16 => getInt16(),
      PropertyType.int16Array => getInt16Array(),
      PropertyType.int32 => getInt32(),
      PropertyType.int32Array => getInt32Array(),
      PropertyType.int64 => getInt64(),
      PropertyType.int64Array => getInt64Array(),
      PropertyType.point => getPoint(),
      PropertyType.pointArray => getPointArray(),
      PropertyType.rect => getRect(),
      PropertyType.rectArray => getRectArray(),
      PropertyType.single => getSingle(),
      PropertyType.singleArray => getSingleArray(),
      PropertyType.size => getSize(),
      PropertyType.sizeArray => getSizeArray(),
      PropertyType.string => getString(),
      PropertyType.stringArray => getStringArray(),
      PropertyType.timeSpan => getTimeSpan(),
      PropertyType.timeSpanArray => getTimeSpanArray(),
      PropertyType.uint16 => getUInt16(),
      PropertyType.uint16Array => getUInt16Array(),
      PropertyType.uint32 => getUInt32(),
      PropertyType.uint32Array => getUInt32Array(),
      PropertyType.uint64 => getUInt64(),
      PropertyType.uint64Array => getUInt64Array(),
      PropertyType.uint8 => getUInt8(),
      PropertyType.uint8Array => getUInt8Array(),
      PropertyType.empty ||
      PropertyType.inspectable ||
      PropertyType.otherType ||
      PropertyType.otherTypeArray =>
        throw UnsupportedError('Unsupported property type: $type')
    };
  }
}
