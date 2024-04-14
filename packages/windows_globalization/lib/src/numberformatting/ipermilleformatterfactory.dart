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

import 'permilleformatter.dart';

/// @nodoc
const IID_IPermilleFormatterFactory = '{2b37b4ac-e638-4ed5-a998-62f6b06a49ae}';

class IPermilleFormatterFactory extends IInspectable {
  IPermilleFormatterFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPermilleFormatterFactoryVtbl>().ref;

  final _IPermilleFormatterFactoryVtbl _vtable;

  factory IPermilleFormatterFactory.from(IInspectable interface) => interface
      .cast(IPermilleFormatterFactory.fromPtr, IID_IPermilleFormatterFactory);

  PermilleFormatter createPermilleFormatter(
      IIterable<String>? languages, String geographicRegion) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreatePermilleFormatter.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer languages,
                int geographicRegion, Pointer<COMObject> result)>()(
        lpVtbl, languages.lpVtbl, geographicRegion.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return PermilleFormatter.fromPtr(result);
  }
}

final class _IPermilleFormatterFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer languages,
              IntPtr geographicRegion,
              Pointer<COMObject> result)>> CreatePermilleFormatter;
}
