// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'istandarddataformatsstatics.dart';
import 'istandarddataformatsstatics2.dart';
import 'istandarddataformatsstatics3.dart';

/// Contains static properties that return string values. Each string
/// corresponds to a known format ID. Use this class to avoid errors in
/// using string constants to specify data formats.
class StandardDataFormats extends IInspectable {
  StandardDataFormats.fromPtr(super.ptr);

  static const _className =
      'Windows.ApplicationModel.DataTransfer.StandardDataFormats';

  static String get text => createActivationFactory(
          IStandardDataFormatsStatics.fromPtr,
          _className,
          IID_IStandardDataFormatsStatics)
      .text;

  @Deprecated(
      "Uri may be altered or unavailable for releases after Windows Phone 'OSVersion' (TBD). Instead, use WebLink or ApplicationLink.")
  static String get uri => createActivationFactory(
          IStandardDataFormatsStatics.fromPtr,
          _className,
          IID_IStandardDataFormatsStatics)
      .uri;

  static String get html => createActivationFactory(
          IStandardDataFormatsStatics.fromPtr,
          _className,
          IID_IStandardDataFormatsStatics)
      .html;

  static String get rtf => createActivationFactory(
          IStandardDataFormatsStatics.fromPtr,
          _className,
          IID_IStandardDataFormatsStatics)
      .rtf;

  static String get bitmap => createActivationFactory(
          IStandardDataFormatsStatics.fromPtr,
          _className,
          IID_IStandardDataFormatsStatics)
      .bitmap;

  static String get storageItems => createActivationFactory(
          IStandardDataFormatsStatics.fromPtr,
          _className,
          IID_IStandardDataFormatsStatics)
      .storageItems;

  static String get webLink => createActivationFactory(
          IStandardDataFormatsStatics2.fromPtr,
          _className,
          IID_IStandardDataFormatsStatics2)
      .webLink;

  static String get applicationLink => createActivationFactory(
          IStandardDataFormatsStatics2.fromPtr,
          _className,
          IID_IStandardDataFormatsStatics2)
      .applicationLink;

  static String get userActivityJsonArray => createActivationFactory(
          IStandardDataFormatsStatics3.fromPtr,
          _className,
          IID_IStandardDataFormatsStatics3)
      .userActivityJsonArray;
}
