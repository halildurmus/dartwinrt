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

import 'ilearningmodelbinding.dart';
import 'ilearningmodelbindingfactory.dart';
import 'learningmodelsession.dart';

/// Used to bind values to named input and output features.
class LearningModelBinding extends IInspectable
    implements
        ILearningModelBinding,
        IMapView<String, Object?>,
        IIterable<IKeyValuePair<String, Object?>> {
  LearningModelBinding.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.LearningModelBinding';

  factory LearningModelBinding.createFromSession(
          LearningModelSession session) =>
      createActivationFactory(ILearningModelBindingFactory.fromPtr, _className,
              IID_ILearningModelBindingFactory)
          .createFromSession(session);

  late final _iLearningModelBinding = ILearningModelBinding.from(this);

  @override
  void bind(String name, Object? value) =>
      _iLearningModelBinding.bind(name, value);

  @override
  void bindWithProperties(String name, Object? value, IPropertySet props) =>
      _iLearningModelBinding.bindWithProperties(name, value, props);

  @override
  void clear() => _iLearningModelBinding.clear();

  late final _iMapView = IMapView<String, Object?>.fromPtr(
      toInterface('{bb78502a-f79d-54fa-92c9-90c5039fdf7e}'),
      iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}');

  @override
  Object? lookup(String key) => _iMapView.lookup(key);

  @override
  int get size => _iMapView.size;

  @override
  bool hasKey(String key) => _iMapView.hasKey(key);

  @override
  void split(
          IMapView<String, Object?> first, IMapView<String, Object?> second) =>
      _iMapView.split(first, second);

  @override
  IIterator<IKeyValuePair<String, Object?>> first() => _iMapView.first();

  @override
  Map<String, Object?> toMap() => _iMapView.toMap();

  @override
  Object? operator [](String key) => _iMapView[key];
}
