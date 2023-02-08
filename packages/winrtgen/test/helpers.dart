// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

int getWindowsBuildNumber() {
  final hKey = HKEY_LOCAL_MACHINE;
  final subKeyPtr =
      r'SOFTWARE\Microsoft\Windows NT\CurrentVersion\'.toNativeUtf16();
  final valueNamePtr = 'CurrentBuildNumber'.toNativeUtf16();
  final openKeyPtr = calloc<HANDLE>();
  final dataType = calloc<DWORD>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = calloc<BYTE>(256);
  final dataSize = calloc<DWORD>()..value = 256;

  try {
    var result = RegOpenKeyEx(hKey, subKeyPtr, 0, KEY_READ, openKeyPtr);
    if (result != ERROR_SUCCESS) {
      throw WindowsException(HRESULT_FROM_WIN32(result));
    }

    result = RegQueryValueEx(
        openKeyPtr.value, valueNamePtr, nullptr, dataType, data, dataSize);
    if (result != ERROR_SUCCESS) {
      throw WindowsException(HRESULT_FROM_WIN32(result));
    }

    if (dataType.value != REG_SZ) {
      throw WindowsException(HRESULT_FROM_WIN32(ERROR_INVALID_DATA));
    }

    RegCloseKey(openKeyPtr.value);

    final value = data.cast<Utf16>().toDartString();
    return int.parse(value);
  } finally {
    free(subKeyPtr);
    free(valueNamePtr);
    free(openKeyPtr);
    free(dataType);
    free(data);
    free(dataSize);
  }
}
