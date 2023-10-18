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
const IID_IAudioStreamDescriptor2 = '{2e68f1f6-a448-497b-8840-85082665acf9}';

class IAudioStreamDescriptor2 extends IInspectable
    implements IMediaStreamDescriptor {
  IAudioStreamDescriptor2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAudioStreamDescriptor2Vtbl>().ref;

  final _IAudioStreamDescriptor2Vtbl _vtable;

  factory IAudioStreamDescriptor2.from(IInspectable interface) => interface
      .cast(IAudioStreamDescriptor2.fromPtr, IID_IAudioStreamDescriptor2);

  set leadingEncoderPadding(int? value) {
    final hr = _vtable.put_LeadingEncoderPadding.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference(IntType.uint32).lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int? get leadingEncoderPadding {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LeadingEncoderPadding.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
  }

  set trailingEncoderPadding(int? value) {
    final hr = _vtable.put_TrailingEncoderPadding.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference(IntType.uint32).lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int? get trailingEncoderPadding {
    final value = calloc<COMObject>();

    final hr = _vtable.get_TrailingEncoderPadding.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
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

final class _IAudioStreamDescriptor2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_LeadingEncoderPadding;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LeadingEncoderPadding;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_TrailingEncoderPadding;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_TrailingEncoderPadding;
}
