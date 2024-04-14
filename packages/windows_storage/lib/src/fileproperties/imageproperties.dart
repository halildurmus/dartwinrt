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

import 'iimageproperties.dart';
import 'istorageitemextraproperties.dart';
import 'photoorientation.dart';

/// Provides access to the image-related properties of an item (like a file or
/// folder).
class ImageProperties extends IInspectable
    implements IImageProperties, IStorageItemExtraProperties {
  ImageProperties.fromPtr(super.ptr);

  late final _iImageProperties = IImageProperties.from(this);

  @override
  int get rating => _iImageProperties.rating;

  @override
  set rating(int value) => _iImageProperties.rating = value;

  @override
  IVector<String>? get keywords => _iImageProperties.keywords;

  @override
  DateTime get dateTaken => _iImageProperties.dateTaken;

  @override
  set dateTaken(DateTime value) => _iImageProperties.dateTaken = value;

  @override
  int get width => _iImageProperties.width;

  @override
  int get height => _iImageProperties.height;

  @override
  String get title => _iImageProperties.title;

  @override
  set title(String value) => _iImageProperties.title = value;

  @override
  double? get latitude => _iImageProperties.latitude;

  @override
  double? get longitude => _iImageProperties.longitude;

  @override
  String get cameraManufacturer => _iImageProperties.cameraManufacturer;

  @override
  set cameraManufacturer(String value) =>
      _iImageProperties.cameraManufacturer = value;

  @override
  String get cameraModel => _iImageProperties.cameraModel;

  @override
  set cameraModel(String value) => _iImageProperties.cameraModel = value;

  @override
  PhotoOrientation get orientation => _iImageProperties.orientation;

  @override
  List<String>? get peopleNames => _iImageProperties.peopleNames;

  late final _iStorageItemExtraProperties =
      IStorageItemExtraProperties.from(this);

  @override
  Future<IMap<String, Object?>> retrievePropertiesAsync(
          IIterable<String>? propertiesToRetrieve) =>
      _iStorageItemExtraProperties
          .retrievePropertiesAsync(propertiesToRetrieve);

  @override
  Future<void> savePropertiesAsync(
          IIterable<IKeyValuePair<String, Object?>>? propertiesToSave) =>
      _iStorageItemExtraProperties.savePropertiesAsync(propertiesToSave);

  @override
  Future<void> savePropertiesAsyncOverloadDefault() =>
      _iStorageItemExtraProperties.savePropertiesAsyncOverloadDefault();
}
