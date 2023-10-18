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

import 'imediastreamdescriptor.dart';

/// @nodoc
const IID_IMediaStreamDescriptor2 = '{5073010f-e8b2-4071-b00b-ebf337a76b58}';

class IMediaStreamDescriptor2 extends IInspectable
    implements IMediaStreamDescriptor {
  IMediaStreamDescriptor2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaStreamDescriptor2Vtbl>().ref;

  final _IMediaStreamDescriptor2Vtbl _vtable;

  factory IMediaStreamDescriptor2.from(IInspectable interface) => interface
      .cast(IMediaStreamDescriptor2.fromPtr, IID_IMediaStreamDescriptor2);

  set label(String value) {
    final hr = _vtable.put_Label
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get label {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Label.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  late final _iMediaStreamDescriptor = IMediaStreamDescriptor.from(this);

  @override
  bool get isSelected => _iMediaStreamDescriptor.isSelected;

  @override
  set name(String value) => _iMediaStreamDescriptor.name = value;

  @override
  String get name => _iMediaStreamDescriptor.name;

  @override
  set language(String value) => _iMediaStreamDescriptor.language = value;

  @override
  String get language => _iMediaStreamDescriptor.language;
}

final class _IMediaStreamDescriptor2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Label;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Label;
}
