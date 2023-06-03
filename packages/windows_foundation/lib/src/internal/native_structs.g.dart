// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

/// @nodoc
final class NativeAutomationAnnotationTypeRegistration extends Struct {
  @Int32()
  external int localId;
}

/// @nodoc
final class NativeAutomationRemoteOperationOperandId extends Struct {
  @Int32()
  external int value;
}

/// @nodoc
final class NativeBasicGeoposition extends Struct {
  @Double()
  external double latitude;

  @Double()
  external double longitude;

  @Double()
  external double altitude;
}

/// @nodoc
final class NativeColor extends Struct {
  @Uint8()
  external int a;

  @Uint8()
  external int r;

  @Uint8()
  external int g;

  @Uint8()
  external int b;
}

/// @nodoc
final class NativeDisplayAdapterId extends Struct {
  @Uint32()
  external int lowPart;

  @Int32()
  external int highPart;
}

/// @nodoc
final class NativeGamepadReading extends Struct {
  @Uint64()
  external int timestamp;

  @Uint32()
  external int buttons;

  @Double()
  external double leftTrigger;

  @Double()
  external double rightTrigger;

  @Double()
  external double leftThumbstickX;

  @Double()
  external double leftThumbstickY;

  @Double()
  external double rightThumbstickX;

  @Double()
  external double rightThumbstickY;
}

/// @nodoc
final class NativeGamepadVibration extends Struct {
  @Double()
  external double leftMotor;

  @Double()
  external double rightMotor;

  @Double()
  external double leftTrigger;

  @Double()
  external double rightTrigger;
}

/// @nodoc
final class NativeMatrix3x2 extends Struct {
  @Float()
  external double m11;

  @Float()
  external double m12;

  @Float()
  external double m21;

  @Float()
  external double m22;

  @Float()
  external double m31;

  @Float()
  external double m32;
}

/// @nodoc
final class NativeMatrix4x4 extends Struct {
  @Float()
  external double m11;

  @Float()
  external double m12;

  @Float()
  external double m13;

  @Float()
  external double m14;

  @Float()
  external double m21;

  @Float()
  external double m22;

  @Float()
  external double m23;

  @Float()
  external double m24;

  @Float()
  external double m31;

  @Float()
  external double m32;

  @Float()
  external double m33;

  @Float()
  external double m34;

  @Float()
  external double m41;

  @Float()
  external double m42;

  @Float()
  external double m43;

  @Float()
  external double m44;
}

/// @nodoc
final class NativeNetworkUsageStates extends Struct {
  @Int32()
  external int roaming;

  @Int32()
  external int shared;
}

/// @nodoc
final class NativePackageVersion extends Struct {
  @Uint16()
  external int major;

  @Uint16()
  external int minor;

  @Uint16()
  external int build;

  @Uint16()
  external int revision;
}

/// @nodoc
final class NativePlane extends Struct {
  external NativeVector3 normal;

  @Float()
  external double d;
}

/// @nodoc
final class NativePoint extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// @nodoc
final class NativeQuaternion extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;

  @Float()
  external double w;
}

/// @nodoc
final class NativeRational extends Struct {
  @Uint32()
  external int numerator;

  @Uint32()
  external int denominator;
}

/// @nodoc
final class NativeRect extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double width;

  @Float()
  external double height;
}

/// @nodoc
final class NativeSize extends Struct {
  @Float()
  external double width;

  @Float()
  external double height;
}

/// @nodoc
final class NativeSizeInt32 extends Struct {
  @Int32()
  external int width;

  @Int32()
  external int height;
}

/// @nodoc
final class NativeSortEntry extends Struct {
  @IntPtr()
  external int propertyName;

  @Bool()
  external bool ascendingOrder;
}

/// @nodoc
final class NativeTextSegment extends Struct {
  @Uint32()
  external int startPosition;

  @Uint32()
  external int length;
}

/// @nodoc
final class NativeVector2 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// @nodoc
final class NativeVector3 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;
}

/// @nodoc
final class NativeVector4 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;

  @Float()
  external double w;
}
