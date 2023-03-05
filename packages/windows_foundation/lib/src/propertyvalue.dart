// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;

import '../internal.dart';
import 'collections/iiterator.dart';
import 'helpers.dart';
import 'iinspectable.dart';
import 'ipropertyvaluestatics.dart';
import 'point.dart';
import 'rect.dart';
import 'size.dart';

/// Represents a value in a property store (such as a [PropertySet]
/// instance).
///
/// {@category class}
class PropertyValue extends IInspectable {
  PropertyValue.fromRawPointer(super.ptr);

  static const _className = 'Windows.Foundation.PropertyValue';

  static Pointer<COMObject> createEmpty() => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createEmpty();

  static IPropertyValue createUInt8(int value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createUInt8(value);

  static IPropertyValue createInt16(int value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createInt16(value);

  static IPropertyValue createUInt16(int value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createUInt16(value);

  static IPropertyValue createInt32(int value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createInt32(value);

  static IPropertyValue createUInt32(int value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createUInt32(value);

  static IPropertyValue createInt64(int value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createInt64(value);

  static IPropertyValue createUInt64(int value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createUInt64(value);

  static IPropertyValue createSingle(double value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createSingle(value);

  static IPropertyValue createDouble(double value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createDouble(value);

  static IPropertyValue createChar16(int value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createChar16(value);

  static IPropertyValue createBoolean(bool value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createBoolean(value);

  static IPropertyValue createString(String value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createString(value);

  static Pointer<COMObject> createInspectable(Object? value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createInspectable(value);

  static IPropertyValue createGuid(Guid value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createGuid(value);

  static IPropertyValue createDateTime(DateTime value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createDateTime(value);

  static IPropertyValue createTimeSpan(Duration value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createTimeSpan(value);

  static IPropertyValue createPoint(Point value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createPoint(value);

  static IPropertyValue createSize(Size value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createSize(value);

  static IPropertyValue createRect(Rect value) => createActivationFactory(
          IPropertyValueStatics.fromRawPointer,
          _className,
          IID_IPropertyValueStatics)
      .createRect(value);

  static IPropertyValue createUInt8Array(List<int> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createUInt8Array(value);

  static IPropertyValue createInt16Array(List<int> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createInt16Array(value);

  static IPropertyValue createUInt16Array(List<int> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createUInt16Array(value);

  static IPropertyValue createInt32Array(List<int> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createInt32Array(value);

  static IPropertyValue createUInt32Array(List<int> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createUInt32Array(value);

  static IPropertyValue createInt64Array(List<int> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createInt64Array(value);

  static IPropertyValue createUInt64Array(List<int> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createUInt64Array(value);

  static IPropertyValue createSingleArray(List<double> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createSingleArray(value);

  static IPropertyValue createDoubleArray(List<double> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createDoubleArray(value);

  static IPropertyValue createChar16Array(List<int> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createChar16Array(value);

  static IPropertyValue createBooleanArray(List<bool> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createBooleanArray(value);

  static IPropertyValue createStringArray(List<String> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createStringArray(value);

  static IPropertyValue createInspectableArray(List<Object?> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createInspectableArray(value);

  static IPropertyValue createGuidArray(List<Guid> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createGuidArray(value);

  static IPropertyValue createDateTimeArray(List<DateTime> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createDateTimeArray(value);

  static IPropertyValue createTimeSpanArray(List<Duration> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createTimeSpanArray(value);

  static IPropertyValue createPointArray(List<Point> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createPointArray(value);

  static IPropertyValue createSizeArray(List<Size> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createSizeArray(value);

  static IPropertyValue createRectArray(List<Rect> value) =>
      createActivationFactory(IPropertyValueStatics.fromRawPointer, _className,
              IID_IPropertyValueStatics)
          .createRectArray(value);
}
