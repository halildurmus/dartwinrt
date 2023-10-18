// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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

import 'learningmodel.dart';
import 'learningmodeldevice.dart';
import 'learningmodelsession.dart';
import 'learningmodelsessionoptions.dart';

/// @nodoc
const IID_ILearningModelSessionFactory2 =
    '{4e5c88bf-0a1f-5fec-ade0-2fd91e4ef29b}';

class ILearningModelSessionFactory2 extends IInspectable {
  ILearningModelSessionFactory2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILearningModelSessionFactory2Vtbl>().ref;

  final _ILearningModelSessionFactory2Vtbl _vtable;

  factory ILearningModelSessionFactory2.from(IInspectable interface) =>
      interface.cast(ILearningModelSessionFactory2.fromPtr,
          IID_ILearningModelSessionFactory2);

  LearningModelSession createFromModelOnDeviceWithSessionOptions(
      LearningModel? model,
      LearningModelDevice? deviceToRunOn,
      LearningModelSessionOptions? learningModelSessionOptions) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFromModelOnDeviceWithSessionOptions.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer model,
                VTablePointer deviceToRunOn,
                VTablePointer learningModelSessionOptions,
                Pointer<COMObject> value)>()(lpVtbl, model.lpVtbl,
        deviceToRunOn.lpVtbl, learningModelSessionOptions.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return LearningModelSession.fromPtr(value);
  }
}

final class _ILearningModelSessionFactory2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer model,
                  VTablePointer deviceToRunOn,
                  VTablePointer learningModelSessionOptions,
                  Pointer<COMObject> value)>>
      CreateFromModelOnDeviceWithSessionOptions;
}
