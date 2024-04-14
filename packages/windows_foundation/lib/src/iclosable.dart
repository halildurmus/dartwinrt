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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';

/// @nodoc
const IID_IClosable = '{30d5a829-7fa4-4026-83bb-d75bae4ea99e}';

/// Defines a method to release allocated resources.
class IClosable extends IInspectable {
  IClosable.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IClosableVtbl>().ref;

  final _IClosableVtbl _vtable;

  factory IClosable.from(IInspectable interface) =>
      interface.cast(IClosable.fromPtr, IID_IClosable);

  void close() {
    final hr =
        _vtable.Close.asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IClosableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Close;
}
