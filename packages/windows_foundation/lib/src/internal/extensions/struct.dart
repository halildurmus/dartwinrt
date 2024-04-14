// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../ipropertyvalue.dart';
import '../../ireference.dart';
import '../../point.dart';
import '../../propertyvalue.dart';
import '../../rect.dart';
import '../../size.dart';
import '../../winrt_struct.dart';
import '../iids.dart';

/// @nodoc
extension WinRTStructConversion on WinRTStruct {
  // TODO(halildurmus): Boxing structs are not supported yet (except for Guid,
  // Point, Rect, and Size).
  // https://github.com/halildurmus/dartwinrt/issues/307
  IReference<dynamic> toReference() =>
      throw UnsupportedError('Cannot box value of type $runtimeType');
}

/// @nodoc
extension PointConversions on Point {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createPoint(this);

  /// Converts the value to an [IReference].
  IReference<Point?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = IID_IReference_Point;
    final reference = IReference<Point?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension PointListConversion on List<Point> {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createPointArray(this);
}

/// @nodoc
extension RectConversions on Rect {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createRect(this);

  /// Converts the value to an [IReference].
  IReference<Rect?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = IID_IReference_Rect;
    final reference = IReference<Rect?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension RectListConversion on List<Rect> {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createRectArray(this);
}

/// @nodoc
extension SizeConversions on Size {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createSize(this);

  /// Converts the value to an [IReference].
  IReference<Size?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = IID_IReference_Size;
    final reference = IReference<Size?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension SizeListConversion on List<Size> {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createSizeArray(this);
}
