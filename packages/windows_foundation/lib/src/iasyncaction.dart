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
import 'asyncstatus.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';
import 'iasyncinfo.dart';

/// @nodoc
const IID_IAsyncAction = '{5a648006-843a-4da9-865b-9d26e5dfad7b}';

/// Represents an asynchronous action. This is the return type for many Windows
/// Runtime asynchronous methods that don't have a result object, and don't
/// report ongoing progress.
class IAsyncAction extends IInspectable implements IAsyncInfo {
  IAsyncAction.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAsyncActionVtbl>().ref;

  final _IAsyncActionVtbl _vtable;

  factory IAsyncAction.from(IInspectable interface) =>
      interface.cast(IAsyncAction.fromPtr, IID_IAsyncAction);

  set completed(Pointer<COMObject> handler) {
    final hr = _vtable.put_Completed.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer handler)>()(
        lpVtbl, handler.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Pointer<COMObject> get completed {
    final handler = calloc<COMObject>();

    final hr = _vtable.get_Completed.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> handler)>()(
        lpVtbl, handler);

    if (FAILED(hr)) {
      free(handler);
      throwWindowsException(hr);
    }

    return handler;
  }

  void getResults() {
    final hr =
        _vtable.GetResults.asFunction<int Function(VTablePointer lpVtbl)>()(
            lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  late final _iAsyncInfo = IAsyncInfo.from(this);

  @override
  int get id => _iAsyncInfo.id;

  @override
  AsyncStatus get status => _iAsyncInfo.status;

  @override
  int get errorCode => _iAsyncInfo.errorCode;

  @override
  void cancel() => _iAsyncInfo.cancel();

  @override
  void close() => _iAsyncInfo.close();
}

final class _IAsyncActionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> handler)>> get_Completed;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      GetResults;
}
