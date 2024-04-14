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
import 'package:windows_graphics/windows_graphics.dart';

import 'ilearningmodeldevice.dart';
import 'ilearningmodeldevicefactory.dart';
import 'ilearningmodeldevicestatics.dart';
import 'learningmodeldevicekind.dart';

/// The device used to evaluate the machine learning model.
class LearningModelDevice extends IInspectable implements ILearningModelDevice {
  LearningModelDevice.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.LearningModelDevice';

  factory LearningModelDevice.create(LearningModelDeviceKind deviceKind) =>
      createActivationFactory(ILearningModelDeviceFactory.fromPtr, _className,
              IID_ILearningModelDeviceFactory)
          .create(deviceKind);

  static LearningModelDevice? createFromDirect3D11Device(
          IDirect3DDevice? device) =>
      createActivationFactory(ILearningModelDeviceStatics.fromPtr, _className,
              IID_ILearningModelDeviceStatics)
          .createFromDirect3D11Device(device);

  late final _iLearningModelDevice = ILearningModelDevice.from(this);

  @override
  DisplayAdapterId get adapterId => _iLearningModelDevice.adapterId;

  @override
  IDirect3DDevice? get direct3D11Device =>
      _iLearningModelDevice.direct3D11Device;
}
