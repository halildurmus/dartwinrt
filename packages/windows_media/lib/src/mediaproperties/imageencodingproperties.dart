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

import 'iimageencodingproperties.dart';
import 'iimageencodingproperties2.dart';
import 'iimageencodingpropertiesstatics.dart';
import 'iimageencodingpropertiesstatics2.dart';
import 'iimageencodingpropertiesstatics3.dart';
import 'imediaencodingproperties.dart';
import 'mediapixelformat.dart';
import 'mediapropertyset.dart';

/// Describes the format of an image stream.
class ImageEncodingProperties extends IInspectable
    implements
        IImageEncodingProperties,
        IMediaEncodingProperties,
        IImageEncodingProperties2 {
  ImageEncodingProperties() : super(activateClass(_className));
  ImageEncodingProperties.fromPtr(super.ptr);

  static const _className =
      'Windows.Media.MediaProperties.ImageEncodingProperties';

  static ImageEncodingProperties? createJpeg() => createActivationFactory(
          IImageEncodingPropertiesStatics.fromPtr,
          _className,
          IID_IImageEncodingPropertiesStatics)
      .createJpeg();

  static ImageEncodingProperties? createPng() => createActivationFactory(
          IImageEncodingPropertiesStatics.fromPtr,
          _className,
          IID_IImageEncodingPropertiesStatics)
      .createPng();

  static ImageEncodingProperties? createJpegXR() => createActivationFactory(
          IImageEncodingPropertiesStatics.fromPtr,
          _className,
          IID_IImageEncodingPropertiesStatics)
      .createJpegXR();

  static ImageEncodingProperties? createUncompressed(MediaPixelFormat format) =>
      createActivationFactory(IImageEncodingPropertiesStatics2.fromPtr,
              _className, IID_IImageEncodingPropertiesStatics2)
          .createUncompressed(format);

  static ImageEncodingProperties? createBmp() => createActivationFactory(
          IImageEncodingPropertiesStatics2.fromPtr,
          _className,
          IID_IImageEncodingPropertiesStatics2)
      .createBmp();

  static ImageEncodingProperties? createHeif() => createActivationFactory(
          IImageEncodingPropertiesStatics3.fromPtr,
          _className,
          IID_IImageEncodingPropertiesStatics3)
      .createHeif();

  late final _iImageEncodingProperties = IImageEncodingProperties.from(this);

  @override
  set width(int value) => _iImageEncodingProperties.width = value;

  @override
  int get width => _iImageEncodingProperties.width;

  @override
  set height(int value) => _iImageEncodingProperties.height = value;

  @override
  int get height => _iImageEncodingProperties.height;

  late final _iMediaEncodingProperties = IMediaEncodingProperties.from(this);

  @override
  MediaPropertySet? get properties => _iMediaEncodingProperties.properties;

  @override
  String get type => _iMediaEncodingProperties.type;

  @override
  set subtype(String value) => _iMediaEncodingProperties.subtype = value;

  @override
  String get subtype => _iMediaEncodingProperties.subtype;

  late final _iImageEncodingProperties2 = IImageEncodingProperties2.from(this);

  @override
  ImageEncodingProperties? copy() => _iImageEncodingProperties2.copy();
}
