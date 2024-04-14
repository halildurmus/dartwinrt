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
import 'package:windows_storage/windows_storage.dart';

import 'xmlloadsettings.dart';

/// @nodoc
const IID_IXmlDocumentIO2 = '{5d034661-7bd8-4ad5-9ebf-81e6347263b1}';

class IXmlDocumentIO2 extends IInspectable {
  IXmlDocumentIO2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlDocumentIO2Vtbl>().ref;

  final _IXmlDocumentIO2Vtbl _vtable;

  factory IXmlDocumentIO2.from(IInspectable interface) =>
      interface.cast(IXmlDocumentIO2.fromPtr, IID_IXmlDocumentIO2);

  void loadXmlFromBuffer(IBuffer? buffer) {
    final hr = _vtable.LoadXmlFromBuffer.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer buffer)>()(
        lpVtbl, buffer.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void loadXmlFromBufferWithSettings(
      IBuffer? buffer, XmlLoadSettings? loadSettings) {
    final hr = _vtable.LoadXmlFromBufferWithSettings.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer buffer,
                VTablePointer loadSettings)>()(
        lpVtbl, buffer.lpVtbl, loadSettings.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IXmlDocumentIO2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer)>>
      LoadXmlFromBuffer;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer,
              VTablePointer loadSettings)>> LoadXmlFromBufferWithSettings;
}
