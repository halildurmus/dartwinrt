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
import 'package:windows_applicationmodel/windows_applicationmodel.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'launcheroptions.dart';
import 'launchquerysupportstatus.dart';
import 'launchuriresult.dart';
import 'launchuristatus.dart';
import 'user.dart';

/// @nodoc
const IID_ILauncherStatics4 = '{b9ec819f-b5a5-41c6-b3b3-dd1b3178bcf2}';

class ILauncherStatics4 extends IInspectable {
  ILauncherStatics4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherStatics4Vtbl>().ref;

  final _ILauncherStatics4Vtbl _vtable;

  factory ILauncherStatics4.from(IInspectable interface) =>
      interface.cast(ILauncherStatics4.fromPtr, IID_ILauncherStatics4);

  Future<LaunchQuerySupportStatus> queryAppUriSupportAsync(Uri? uri) {
    final operation = calloc<COMObject>();

    final hr = _vtable.QueryAppUriSupportAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                Pointer<COMObject> operation)>()(
        lpVtbl, uri?.toWinRTUri().lpVtbl ?? nullptr, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchQuerySupportStatus>.fromPtr(
        operation,
        enumCreator: LaunchQuerySupportStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LaunchQuerySupportStatus> queryAppUriSupportWithPackageFamilyNameAsync(
      Uri? uri, String packageFamilyName) {
    final operation = calloc<COMObject>();

    final hr = _vtable.QueryAppUriSupportWithPackageFamilyNameAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                int packageFamilyName, Pointer<COMObject> operation)>()(
        lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr,
        packageFamilyName.toHString(),
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchQuerySupportStatus>.fromPtr(
        operation,
        enumCreator: LaunchQuerySupportStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<List<AppInfo?>> findAppUriHandlersAsync(Uri? uri) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindAppUriHandlersAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                Pointer<COMObject> operation)>()(
        lpVtbl, uri?.toWinRTUri().lpVtbl ?? nullptr, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<AppInfo?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: AppInfo.fromPtr,
            iterableIid: '{63d0bffe-0e34-55b3-83d5-314caff2b137}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<LaunchUriStatus> launchUriForUserAsync(User? user, Uri? uri) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user,
                VTablePointer uri, Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, uri?.toWinRTUri().lpVtbl ?? nullptr, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchUriStatus>.fromPtr(operation,
        enumCreator: LaunchUriStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LaunchUriStatus> launchUriWithOptionsForUserAsync(
      User? user, Uri? uri, LauncherOptions? options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriWithOptionsForUserAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer user,
                VTablePointer uri,
                VTablePointer options,
                Pointer<COMObject> operation)>()(lpVtbl, user.lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr, options.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchUriStatus>.fromPtr(operation,
        enumCreator: LaunchUriStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LaunchUriStatus> launchUriWithDataForUserAsync(
      User? user, Uri? uri, LauncherOptions? options, ValueSet? inputData) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriWithDataForUserAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer user,
                VTablePointer uri,
                VTablePointer options,
                VTablePointer inputData,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        user.lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr,
        options.lpVtbl,
        inputData.lpVtbl,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchUriStatus>.fromPtr(operation,
        enumCreator: LaunchUriStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LaunchUriResult?> launchUriForResultsForUserAsync(
      User? user, Uri? uri, LauncherOptions? options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriForResultsForUserAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer user,
                VTablePointer uri,
                VTablePointer options,
                Pointer<COMObject> operation)>()(lpVtbl, user.lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr, options.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchUriResult?>.fromPtr(operation,
        creator: LaunchUriResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LaunchUriResult?> launchUriForResultsWithDataForUserAsync(
      User? user, Uri? uri, LauncherOptions? options, ValueSet? inputData) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriForResultsWithDataForUserAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer user,
                VTablePointer uri,
                VTablePointer options,
                VTablePointer inputData,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        user.lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr,
        options.lpVtbl,
        inputData.lpVtbl,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchUriResult?>.fromPtr(operation,
        creator: LaunchUriResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _ILauncherStatics4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer uri,
              Pointer<COMObject> operation)>> QueryAppUriSupportAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer uri,
                  IntPtr packageFamilyName, Pointer<COMObject> operation)>>
      QueryAppUriSupportWithPackageFamilyNameAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer uri,
              Pointer<COMObject> operation)>> FindAppUriHandlersAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              VTablePointer uri,
              Pointer<COMObject> operation)>> LaunchUriForUserAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              VTablePointer uri,
              VTablePointer options,
              Pointer<COMObject> operation)>> LaunchUriWithOptionsForUserAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              VTablePointer uri,
              VTablePointer options,
              VTablePointer inputData,
              Pointer<COMObject> operation)>> LaunchUriWithDataForUserAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              VTablePointer uri,
              VTablePointer options,
              Pointer<COMObject> operation)>> LaunchUriForResultsForUserAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer user,
                  VTablePointer uri,
                  VTablePointer options,
                  VTablePointer inputData,
                  Pointer<COMObject> operation)>>
      LaunchUriForResultsWithDataForUserAsync;
}
