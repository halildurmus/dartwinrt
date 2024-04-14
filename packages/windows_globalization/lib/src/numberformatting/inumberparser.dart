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

/// @nodoc
const IID_INumberParser = '{e6659412-4a13-4a53-83a1-392fbe4cff9f}';

class INumberParser extends IInspectable {
  INumberParser.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INumberParserVtbl>().ref;

  final _INumberParserVtbl _vtable;

  factory INumberParser.from(IInspectable interface) =>
      interface.cast(INumberParser.fromPtr, IID_INumberParser);

  int? parseInt(String text) {
    final result = calloc<COMObject>();

    final hr = _vtable.ParseInt.asFunction<
        int Function(VTablePointer lpVtbl, int text,
            Pointer<COMObject> result)>()(lpVtbl, text.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return IReference<int?>.fromPtr(result,
            referenceIid: '{4dda9e24-e69f-5c6a-a0a6-93427365af2a}')
        .value;
  }

  int? parseUInt(String text) {
    final result = calloc<COMObject>();

    final hr = _vtable.ParseUInt.asFunction<
        int Function(VTablePointer lpVtbl, int text,
            Pointer<COMObject> result)>()(lpVtbl, text.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return IReference<int?>.fromPtr(result,
            referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}')
        .value;
  }

  double? parseDouble(String text) {
    final result = calloc<COMObject>();

    final hr = _vtable.ParseDouble.asFunction<
        int Function(VTablePointer lpVtbl, int text,
            Pointer<COMObject> result)>()(lpVtbl, text.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return IReference<double?>.fromPtr(result,
            referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}')
        .value;
  }
}

final class _INumberParserVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr text,
              Pointer<COMObject> result)>> ParseInt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr text,
              Pointer<COMObject> result)>> ParseUInt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr text,
              Pointer<COMObject> result)>> ParseDouble;
}
