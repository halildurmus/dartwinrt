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

/// @nodoc
const IID_ILearningModelSessionFactory =
    '{0f6b881d-1c9b-47b6-bfe0-f1cf62a67579}';

class ILearningModelSessionFactory extends IInspectable {
  ILearningModelSessionFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILearningModelSessionFactoryVtbl>().ref;

  final _ILearningModelSessionFactoryVtbl _vtable;

  factory ILearningModelSessionFactory.from(IInspectable interface) =>
      interface.cast(ILearningModelSessionFactory.fromPtr,
          IID_ILearningModelSessionFactory);

  LearningModelSession createFromModel(LearningModel? model) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFromModel.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer model,
            Pointer<COMObject> value)>()(lpVtbl, model.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return LearningModelSession.fromPtr(value);
  }

  LearningModelSession createFromModelOnDevice(
      LearningModel? model, LearningModelDevice? deviceToRunOn) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFromModelOnDevice.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer model,
                VTablePointer deviceToRunOn, Pointer<COMObject> value)>()(
        lpVtbl, model.lpVtbl, deviceToRunOn.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return LearningModelSession.fromPtr(value);
  }
}

final class _ILearningModelSessionFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer model,
              Pointer<COMObject> value)>> CreateFromModel;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer model,
              VTablePointer deviceToRunOn,
              Pointer<COMObject> value)>> CreateFromModelOnDevice;
}
