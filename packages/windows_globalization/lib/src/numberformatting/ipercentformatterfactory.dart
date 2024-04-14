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

import 'percentformatter.dart';

/// @nodoc
const IID_IPercentFormatterFactory = '{b7828aef-fed4-4018-a6e2-e09961e03765}';

class IPercentFormatterFactory extends IInspectable {
  IPercentFormatterFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPercentFormatterFactoryVtbl>().ref;

  final _IPercentFormatterFactoryVtbl _vtable;

  factory IPercentFormatterFactory.from(IInspectable interface) => interface
      .cast(IPercentFormatterFactory.fromPtr, IID_IPercentFormatterFactory);

  PercentFormatter createPercentFormatter(
      IIterable<String>? languages, String geographicRegion) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreatePercentFormatter.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer languages,
                int geographicRegion, Pointer<COMObject> result)>()(
        lpVtbl, languages.lpVtbl, geographicRegion.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return PercentFormatter.fromPtr(result);
  }
}

final class _IPercentFormatterFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer languages,
              IntPtr geographicRegion,
              Pointer<COMObject> result)>> CreatePercentFormatter;
}
