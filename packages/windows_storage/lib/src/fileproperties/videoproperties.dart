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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'istorageitemextraproperties.dart';
import 'ivideoproperties.dart';
import 'videoorientation.dart';

/// Provides access to the video-related properties of an item (like a file
/// or folder).
///
/// {@category class}
class VideoProperties extends IInspectable
    implements IVideoProperties, IStorageItemExtraProperties {
  VideoProperties.fromPtr(super.ptr);

  late final _iVideoProperties = IVideoProperties.from(this);

  @override
  int get rating => _iVideoProperties.rating;

  @override
  set rating(int value) => _iVideoProperties.rating = value;

  @override
  IVector<String> get keywords => _iVideoProperties.keywords;

  @override
  int get width => _iVideoProperties.width;

  @override
  int get height => _iVideoProperties.height;

  @override
  Duration get duration => _iVideoProperties.duration;

  @override
  double? get latitude => _iVideoProperties.latitude;

  @override
  double? get longitude => _iVideoProperties.longitude;

  @override
  String get title => _iVideoProperties.title;

  @override
  set title(String value) => _iVideoProperties.title = value;

  @override
  String get subtitle => _iVideoProperties.subtitle;

  @override
  set subtitle(String value) => _iVideoProperties.subtitle = value;

  @override
  IVector<String> get producers => _iVideoProperties.producers;

  @override
  String get publisher => _iVideoProperties.publisher;

  @override
  set publisher(String value) => _iVideoProperties.publisher = value;

  @override
  IVector<String> get writers => _iVideoProperties.writers;

  @override
  int get year => _iVideoProperties.year;

  @override
  set year(int value) => _iVideoProperties.year = value;

  @override
  int get bitrate => _iVideoProperties.bitrate;

  @override
  IVector<String> get directors => _iVideoProperties.directors;

  @override
  VideoOrientation get orientation => _iVideoProperties.orientation;

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
