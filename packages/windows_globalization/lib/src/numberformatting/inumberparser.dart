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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_INumberParser = '{e6659412-4a13-4a53-83a1-392fbe4cff9f}';

/// {@category interface}
class INumberParser extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  INumberParser.fromPtr(super.ptr);

  factory INumberParser.from(IInspectable interface) =>
      INumberParser.fromPtr(interface.toInterface(IID_INumberParser));

  int? parseInt(String text) {
    final retValuePtr = calloc<COMObject>();
    final textHString = text.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr text,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int text,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, textHString, retValuePtr);

    WindowsDeleteString(textHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<int?>.fromPtr(retValuePtr,
        referenceIid: '{4dda9e24-e69f-5c6a-a0a6-93427365af2a}');
    return reference.value;
  }

  int? parseUInt(String text) {
    final retValuePtr = calloc<COMObject>();
    final textHString = text.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr text,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int text,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, textHString, retValuePtr);

    WindowsDeleteString(textHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<int?>.fromPtr(retValuePtr,
        referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}');
    return reference.value;
  }

  double? parseDouble(String text) {
    final retValuePtr = calloc<COMObject>();
    final textHString = text.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr text,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int text,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, textHString, retValuePtr);

    WindowsDeleteString(textHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<double?>.fromPtr(retValuePtr,
        referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}');
    return reference.value;
  }
}
