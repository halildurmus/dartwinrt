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

import 'learningmodelbinding.dart';
import 'learningmodelsession.dart';

/// @nodoc
const IID_ILearningModelBindingFactory =
    '{c95f7a7a-e788-475e-8917-23aa381faf0b}';

class ILearningModelBindingFactory extends IInspectable {
  ILearningModelBindingFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILearningModelBindingFactoryVtbl>().ref;

  final _ILearningModelBindingFactoryVtbl _vtable;

  factory ILearningModelBindingFactory.from(IInspectable interface) =>
      interface.cast(ILearningModelBindingFactory.fromPtr,
          IID_ILearningModelBindingFactory);

  LearningModelBinding createFromSession(LearningModelSession? session) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFromSession.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer session,
            Pointer<COMObject> value)>()(lpVtbl, session.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return LearningModelBinding.fromPtr(value);
  }
}

final class _ILearningModelBindingFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer session,
              Pointer<COMObject> value)>> CreateFromSession;
}
