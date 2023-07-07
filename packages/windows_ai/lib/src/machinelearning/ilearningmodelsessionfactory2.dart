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
import 'learningmodelsessionoptions.dart';

/// @nodoc
const IID_ILearningModelSessionFactory2 =
    '{4e5c88bf-0a1f-5fec-ade0-2fd91e4ef29b}';

class ILearningModelSessionFactory2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ILearningModelSessionFactory2.fromPtr(super.ptr);

  factory ILearningModelSessionFactory2.from(IInspectable interface) =>
      ILearningModelSessionFactory2.fromPtr(
          interface.toInterface(IID_ILearningModelSessionFactory2));

  LearningModelSession createFromModelOnDeviceWithSessionOptions(
      LearningModel? model,
      LearningModelDevice? deviceToRunOn,
      LearningModelSessionOptions? learningModelSessionOptions) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer model,
                            VTablePointer deviceToRunOn,
                            VTablePointer learningModelSessionOptions,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer model,
                    VTablePointer deviceToRunOn,
                    VTablePointer learningModelSessionOptions,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        model?.ptr.ref.lpVtbl ?? nullptr,
        deviceToRunOn?.ptr.ref.lpVtbl ?? nullptr,
        learningModelSessionOptions?.ptr.ref.lpVtbl ?? nullptr,
        value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return LearningModelSession.fromPtr(value);
  }
}
