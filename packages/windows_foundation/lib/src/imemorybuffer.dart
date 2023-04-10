// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;

import '../internal.dart';
import 'collections/iiterator.dart';
import 'helpers.dart';
import 'iclosable.dart';
import 'imemorybufferreference.dart';

/// @nodoc
const IID_IMemoryBuffer = '{fbc4dd2a-245b-11e4-af98-689423260cf8}';

/// Represents a reference counted memory buffer.
///
/// {@category interface}
class IMemoryBuffer extends IInspectable implements IClosable {
  // vtable begins at 6, is 1 entries long.
  IMemoryBuffer.fromPtr(super.ptr);

  factory IMemoryBuffer.from(IInspectable interface) =>
      IMemoryBuffer.fromPtr(interface.toInterface(IID_IMemoryBuffer));

  IMemoryBufferReference? createReference() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IMemoryBufferReference.fromPtr(retValuePtr);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
