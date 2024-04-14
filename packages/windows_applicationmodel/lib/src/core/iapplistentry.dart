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

import '../appdisplayinfo.dart';

/// @nodoc
const IID_IAppListEntry = '{ef00f07f-2108-490a-877a-8a9f17c25fad}';

class IAppListEntry extends IInspectable {
  IAppListEntry.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAppListEntryVtbl>().ref;

  final _IAppListEntryVtbl _vtable;

  factory IAppListEntry.from(IInspectable interface) =>
      interface.cast(IAppListEntry.fromPtr, IID_IAppListEntry);

  AppDisplayInfo? get displayInfo {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DisplayInfo.asFunction<
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

    return AppDisplayInfo.fromPtr(value);
  }

  Future<bool> launchAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IAppListEntryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DisplayInfo;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> operation)>> LaunchAsync;
}
