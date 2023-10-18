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

import 'ilearningmodelfeaturedescriptor.dart';

/// @nodoc
const IID_ISequenceFeatureDescriptor = '{84f6945a-562b-4d62-a851-739aced96668}';

class ISequenceFeatureDescriptor extends IInspectable {
  ISequenceFeatureDescriptor.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ISequenceFeatureDescriptorVtbl>().ref;

  final _ISequenceFeatureDescriptorVtbl _vtable;

  factory ISequenceFeatureDescriptor.from(IInspectable interface) => interface
      .cast(ISequenceFeatureDescriptor.fromPtr, IID_ISequenceFeatureDescriptor);

  ILearningModelFeatureDescriptor? get elementDescriptor {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ElementDescriptor.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return ILearningModelFeatureDescriptor.fromPtr(value);
  }
}

final class _ISequenceFeatureDescriptorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ElementDescriptor;
}
