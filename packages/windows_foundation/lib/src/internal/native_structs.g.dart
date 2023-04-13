// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

final class NativeBasicGeoposition extends Struct {
  @Double()
  external double latitude;

  @Double()
  external double longitude;

  @Double()
  external double altitude;
}

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

final class NativeNetworkUsageStates extends Struct {
  @Int32()
  external int roaming;

  @Int32()
  external int shared;
}

final class NativePlane extends Struct {
  external NativeVector3 normal;

  @Float()
  external double d;
}

final class NativePoint extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

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

final class NativeRational extends Struct {
  @Uint32()
  external int numerator;

  @Uint32()
  external int denominator;
}

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

final class NativeSize extends Struct {
  @Float()
  external double width;

  @Float()
  external double height;
}

final class NativeSortEntry extends Struct {
  @IntPtr()
  external int propertyName;

  @Bool()
  external bool ascendingOrder;
}

final class NativeTextSegment extends Struct {
  @Uint32()
  external int startPosition;

  @Uint32()
  external int length;
}

final class NativeVector2 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

final class NativeVector3 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;
}

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
