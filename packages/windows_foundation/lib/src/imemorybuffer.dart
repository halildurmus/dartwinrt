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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';
import 'iclosable.dart';
import 'imemorybufferreference.dart';

/// @nodoc
const IID_IMemoryBuffer = '{fbc4dd2a-245b-11e4-af98-689423260cf8}';

/// Represents a reference counted memory buffer.
class IMemoryBuffer extends IInspectable implements IClosable {
  IMemoryBuffer.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMemoryBufferVtbl>().ref;

  final _IMemoryBufferVtbl _vtable;

  factory IMemoryBuffer.from(IInspectable interface) =>
      interface.cast(IMemoryBuffer.fromPtr, IID_IMemoryBuffer);

  IMemoryBufferReference? createReference() {
    final reference = calloc<COMObject>();

    final hr = _vtable.CreateReference.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> reference)>()(
        lpVtbl, reference);

    if (FAILED(hr)) {
      free(reference);
      throwWindowsException(hr);
    }

    if (reference.isNull) {
      free(reference);
      return null;
    }

    return IMemoryBufferReference.fromPtr(reference);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IMemoryBufferVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> reference)>>
      CreateReference;
}
