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

import 'learningmodel.dart';
import 'learningmodeldevice.dart';
import 'learningmodelsession.dart';

/// @nodoc
const IID_ILearningModelSessionFactory =
    '{0f6b881d-1c9b-47b6-bfe0-f1cf62a67579}';

class ILearningModelSessionFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ILearningModelSessionFactory.fromPtr(super.ptr);

  factory ILearningModelSessionFactory.from(IInspectable interface) =>
      ILearningModelSessionFactory.fromPtr(
          interface.toInterface(IID_ILearningModelSessionFactory));

  LearningModelSession createFromModel(LearningModel model) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, VTablePointer model,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer model,
                Pointer<COMObject>
                    value)>()(ptr.ref.lpVtbl, model.ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    return LearningModelSession.fromPtr(value);
  }

  LearningModelSession createFromModelOnDevice(
      LearningModel model, LearningModelDevice deviceToRunOn) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer model,
                            VTablePointer deviceToRunOn,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer model,
                    VTablePointer deviceToRunOn, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        model.ptr.ref.lpVtbl,
        deviceToRunOn.ptr.ref.lpVtbl,
        value);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    return LearningModelSession.fromPtr(value);
  }
}
