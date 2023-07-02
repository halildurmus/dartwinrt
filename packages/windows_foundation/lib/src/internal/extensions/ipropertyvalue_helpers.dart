// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';

import '../../ipropertyvalue.dart';
import '../../point.dart';
import '../../propertytype.dart';
import '../../rect.dart';
import '../../size.dart';
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

    switch (type) {
      case PropertyType.boolean:
        return getBoolean();
      case PropertyType.booleanArray:
        final list = <bool>[];
        getBooleanArray(list);
        return list;
      case PropertyType.char16:
        return getChar16();
      case PropertyType.char16Array:
        final list = <int>[];
        getChar16Array(list);
        return list;
      case PropertyType.dateTime:
        return getDateTime();
      case PropertyType.dateTimeArray:
        final list = <DateTime>[];
        getDateTimeArray(list);
        return list;
      case PropertyType.double_:
        return getDouble();
      case PropertyType.doubleArray:
        final list = <double>[];
        getDoubleArray(list);
        return list;
      case PropertyType.guid:
        return getGuid();
      case PropertyType.guidArray:
        final list = <Guid>[];
        getGuidArray(list);
        return list;
      case PropertyType.inspectableArray:
        final list = <Object?>[];
        getInspectableArray(list);
        return list;
      case PropertyType.int16:
        return getInt16();
      case PropertyType.int16Array:
        final list = <int>[];
        getInt16Array(list);
        return list;
      case PropertyType.int32:
        return getInt32();
      case PropertyType.int32Array:
        final list = <int>[];
        getInt32Array(list);
        return list;
      case PropertyType.int64:
        return getInt64();
      case PropertyType.int64Array:
        final list = <int>[];
        getInt64Array(list);
        return list;
      case PropertyType.point:
        return getPoint();
      case PropertyType.pointArray:
        final list = <Point>[];
        getPointArray(list);
        return list;
      case PropertyType.rect:
        return getRect();
      case PropertyType.rectArray:
        final list = <Rect>[];
        getRectArray(list);
        return list;
      case PropertyType.single:
        return getSingle();
      case PropertyType.singleArray:
        final list = <double>[];
        getSingleArray(list);
        return list;
      case PropertyType.size:
        return getSize();
      case PropertyType.sizeArray:
        final list = <Size>[];
        getSizeArray(list);
        return list;
      case PropertyType.string:
        return getString();
      case PropertyType.stringArray:
        final list = <String>[];
        getStringArray(list);
        return list;
      case PropertyType.timeSpan:
        return getTimeSpan();
      case PropertyType.timeSpanArray:
        final list = <Duration>[];
        getTimeSpanArray(list);
        return list;
      case PropertyType.uint16:
        return getUInt16();
      case PropertyType.uint16Array:
        final list = <int>[];
        getUInt16Array(list);
        return list;
      case PropertyType.uint32:
        return getUInt32();
      case PropertyType.uint32Array:
        final list = <int>[];
        getUInt32Array(list);
        return list;
      case PropertyType.uint64:
        return getUInt64();
      case PropertyType.uint64Array:
        final list = <int>[];
        getUInt64Array(list);
        return list;
      case PropertyType.uint8:
        return getUInt8();
      case PropertyType.uint8Array:
        final list = <int>[];
        getUInt8Array(list);
        return list;
      case PropertyType.empty:
      case PropertyType.inspectable:
      case PropertyType.otherType:
      case PropertyType.otherTypeArray:
        throw UnsupportedError('Unsupported property type: $type');
    }
  }
}
