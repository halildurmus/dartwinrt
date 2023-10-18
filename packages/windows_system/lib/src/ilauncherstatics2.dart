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
import 'package:windows_storage/windows_storage.dart';

import 'launcheroptions.dart';
import 'launchquerysupportstatus.dart';
import 'launchquerysupporttype.dart';
import 'launchuriresult.dart';

/// @nodoc
const IID_ILauncherStatics2 = '{59ba2fbb-24cb-4c02-a4c4-8294569d54f1}';

class ILauncherStatics2 extends IInspectable {
  ILauncherStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherStatics2Vtbl>().ref;

  final _ILauncherStatics2Vtbl _vtable;

  factory ILauncherStatics2.from(IInspectable interface) =>
      interface.cast(ILauncherStatics2.fromPtr, IID_ILauncherStatics2);

  Future<LaunchUriResult?> launchUriForResultsAsync(
      Uri? uri, LauncherOptions? options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriForResultsAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                VTablePointer options, Pointer<COMObject> operation)>()(
        lpVtbl, uri?.toWinRTUri().lpVtbl ?? nullptr, options.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchUriResult?>.fromPtr(operation,
        creator: LaunchUriResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LaunchUriResult?> launchUriForResultsWithDataAsync(
      Uri? uri, LauncherOptions? options, ValueSet? inputData) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriForResultsWithDataAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer uri,
                VTablePointer options,
                VTablePointer inputData,
                Pointer<COMObject> operation)>()(
        lpVtbl,
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

  Future<bool> launchUriWithDataAsync(
      Uri? uri, LauncherOptions? options, ValueSet? inputData) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriWithDataAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer uri,
                VTablePointer options,
                VTablePointer inputData,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr,
        options.lpVtbl,
        inputData.lpVtbl,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LaunchQuerySupportStatus> queryUriSupportAsync(
      Uri? uri, LaunchQuerySupportType launchQuerySupportType) {
    final operation = calloc<COMObject>();

    final hr = _vtable.QueryUriSupportAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                int launchQuerySupportType, Pointer<COMObject> operation)>()(
        lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr,
        launchQuerySupportType.value,
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

  Future<LaunchQuerySupportStatus> queryUriSupportWithPackageFamilyNameAsync(
      Uri? uri,
      LaunchQuerySupportType launchQuerySupportType,
      String packageFamilyName) {
    final operation = calloc<COMObject>();

    final hr = _vtable.QueryUriSupportWithPackageFamilyNameAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer uri,
                int launchQuerySupportType,
                int packageFamilyName,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr,
        launchQuerySupportType.value,
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

  Future<LaunchQuerySupportStatus> queryFileSupportAsync(StorageFile? file) {
    final operation = calloc<COMObject>();

    final hr = _vtable.QueryFileSupportAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer file,
            Pointer<COMObject> operation)>()(lpVtbl, file.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchQuerySupportStatus>.fromPtr(
        operation,
        enumCreator: LaunchQuerySupportStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LaunchQuerySupportStatus> queryFileSupportWithPackageFamilyNameAsync(
      StorageFile? file, String packageFamilyName) {
    final operation = calloc<COMObject>();

    final hr = _vtable.QueryFileSupportWithPackageFamilyNameAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file,
                int packageFamilyName, Pointer<COMObject> operation)>()(
        lpVtbl, file.lpVtbl, packageFamilyName.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LaunchQuerySupportStatus>.fromPtr(
        operation,
        enumCreator: LaunchQuerySupportStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<List<AppInfo?>> findUriSchemeHandlersAsync(String scheme) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindUriSchemeHandlersAsync.asFunction<
            int Function(VTablePointer lpVtbl, int scheme,
                Pointer<COMObject> operation)>()(
        lpVtbl, scheme.toHString(), operation);

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

  Future<List<AppInfo?>> findUriSchemeHandlersWithLaunchUriTypeAsync(
      String scheme, LaunchQuerySupportType launchQuerySupportType) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindUriSchemeHandlersWithLaunchUriTypeAsync.asFunction<
            int Function(VTablePointer lpVtbl, int scheme,
                int launchQuerySupportType, Pointer<COMObject> operation)>()(
        lpVtbl, scheme.toHString(), launchQuerySupportType.value, operation);

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

  Future<List<AppInfo?>> findFileHandlersAsync(String extension) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindFileHandlersAsync.asFunction<
            int Function(VTablePointer lpVtbl, int extension,
                Pointer<COMObject> operation)>()(
        lpVtbl, extension.toHString(), operation);

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
}

final class _ILauncherStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer uri,
              VTablePointer options,
              Pointer<COMObject> operation)>> LaunchUriForResultsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer uri,
              VTablePointer options,
              VTablePointer inputData,
              Pointer<COMObject> operation)>> LaunchUriForResultsWithDataAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer uri,
              VTablePointer options,
              VTablePointer inputData,
              Pointer<COMObject> operation)>> LaunchUriWithDataAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer uri,
              Int32 launchQuerySupportType,
              Pointer<COMObject> operation)>> QueryUriSupportAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer uri,
                  Int32 launchQuerySupportType,
                  IntPtr packageFamilyName,
                  Pointer<COMObject> operation)>>
      QueryUriSupportWithPackageFamilyNameAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer file,
              Pointer<COMObject> operation)>> QueryFileSupportAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer file,
                  IntPtr packageFamilyName, Pointer<COMObject> operation)>>
      QueryFileSupportWithPackageFamilyNameAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr scheme,
              Pointer<COMObject> operation)>> FindUriSchemeHandlersAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr scheme,
                  Int32 launchQuerySupportType, Pointer<COMObject> operation)>>
      FindUriSchemeHandlersWithLaunchUriTypeAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr extension,
              Pointer<COMObject> operation)>> FindFileHandlersAsync;
}
