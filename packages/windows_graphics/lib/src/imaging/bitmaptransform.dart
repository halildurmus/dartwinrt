// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'bitmapbounds.dart';
import 'bitmapflip.dart';
import 'bitmapinterpolationmode.dart';
import 'bitmaprotation.dart';
import 'ibitmaptransform.dart';

/// Contains transformations that can be applied to pixel data.
class BitmapTransform extends IInspectable implements IBitmapTransform {
  BitmapTransform() : super(activateClass(_className));
  BitmapTransform.fromPtr(super.ptr);

  static const _className = 'Windows.Graphics.Imaging.BitmapTransform';

  late final _iBitmapTransform = IBitmapTransform.from(this);

  @override
  int get scaledWidth => _iBitmapTransform.scaledWidth;

  @override
  set scaledWidth(int value) => _iBitmapTransform.scaledWidth = value;

  @override
  int get scaledHeight => _iBitmapTransform.scaledHeight;

  @override
  set scaledHeight(int value) => _iBitmapTransform.scaledHeight = value;

  @override
  BitmapInterpolationMode get interpolationMode =>
      _iBitmapTransform.interpolationMode;

  @override
  set interpolationMode(BitmapInterpolationMode value) =>
      _iBitmapTransform.interpolationMode = value;

  @override
  BitmapFlip get flip => _iBitmapTransform.flip;

  @override
  set flip(BitmapFlip value) => _iBitmapTransform.flip = value;

  @override
  BitmapRotation get rotation => _iBitmapTransform.rotation;

  @override
  set rotation(BitmapRotation value) => _iBitmapTransform.rotation = value;

  @override
  BitmapBounds get bounds => _iBitmapTransform.bounds;

  @override
  set bounds(BitmapBounds value) => _iBitmapTransform.bounds = value;
}
