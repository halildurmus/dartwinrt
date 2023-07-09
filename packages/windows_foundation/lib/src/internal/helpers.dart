// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../winrt_enum.dart';
import '../winrt_struct.dart';
import 'extensions/comobject_helpers.dart';

/// Returns the restricted error description of the last error that occurred on
/// the current logical thread.
///
/// Returns `null` if no restricted error description was found.
/// @nodoc
String? getRestrictedErrorDescription(int hresult) {
  final ppRestrictedErrorInfo = calloc<COMObject>();

  try {
    var hr = GetRestrictedErrorInfo(ppRestrictedErrorInfo.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    if (ppRestrictedErrorInfo.isNull) {
      free(ppRestrictedErrorInfo);
      return null;
    }

    final restrictedErrorInfo = IRestrictedErrorInfo(ppRestrictedErrorInfo);

    return using((arena) {
      final description = arena<Pointer<Utf16>>();
      final error = arena<Int32>();
      final restrictedDescription = arena<Pointer<Utf16>>();
      final capabilitySid = arena<Pointer<Utf16>>();
      hr = restrictedErrorInfo.getErrorDetails(
          description, error, restrictedDescription, capabilitySid);
      if (FAILED(hr)) throw WindowsException(hr);

      // If the error is not the one we're looking for, return null.
      if (error.value != hresult) return null;

      final message = restrictedDescription.value.toDartString();
      if (message.isNotEmpty) return message;
      // If the restricted description is empty, return the generic description.
      return description.value.toDartString();
    });
  } catch (_) {
    free(ppRestrictedErrorInfo);
    return null;
  }
}

/// Throws a [WindowsException] with the given [hr] and the restricted error
/// description of the last error that occurred on the current logical thread.
/// @nodoc
void throwWindowsException(int hr) =>
    throw WindowsException(hr, message: getRestrictedErrorDescription(hr));

/// Determines whether [S] is the same type as [T].
///
/// ```dart
/// isSameType<bool?, bool?>(); // true
/// isSameType<String, String?>(); // false
/// ```
/// @nodoc
bool isSameType<S, T>() {
  void func<X extends S>() {}
  return func is void Function<X extends T>();
}

/// Determines whether [T] is `Object?`.
///
/// ```dart
/// isNullableObjectType<Object?>(); // true
/// isNullableObjectType<Object>(); // false
/// ```
/// @nodoc
bool isNullableObjectType<T>() => isSameType<T, Object?>();

/// Determines whether [S] is a subtype of [T] or [T?].
///
/// ```dart
/// isSubtype<Calendar, IInspectable>(); // true
/// isSubtype<IUnknown, IInspectable>(); // false
/// ```
/// @nodoc
bool isSubtype<S, T>() => <S>[] is List<T> || <S>[] is List<T?>;

/// Determines whether [T] is a subtype of [IInspectable].
///
/// ```dart
/// isSubtypeOfInspectable<StorageFile>(); // true
/// isSubtypeOfInspectable<IUnknown>(); // false
/// ```
/// @nodoc
bool isSubtypeOfInspectable<T>() => isSubtype<T, IInspectable>();

/// Determines whether [T] is a subtype of [WinRTEnum].
///
/// ```dart
/// isSubtypeOfWinRTEnum<AsyncStatus>(); // true
/// isSubtypeOfWinRTEnum<FileAttributes>(); // true
/// ```
/// @nodoc
bool isSubtypeOfWinRTEnum<T>() => isSubtype<T, WinRTEnum>();

/// Determines whether [T] is a subtype of [WinRTFlagsEnum].
///
/// ```dart
/// isSubtypeOfWinRTFlagsEnum<FileAttributes>(); // true
/// isSubtypeOfWinRTFlagsEnum<AsyncStatus>(); // false
/// ```
/// @nodoc
bool isSubtypeOfWinRTFlagsEnum<T>() => isSubtype<T, WinRTFlagsEnum<dynamic>>();

/// Determines whether [T] is a subtype of [WinRTStruct].
///
/// ```dart
/// isSubtypeOfWinRTStruct<Point>(); // true
/// isSubtypeOfWinRTStruct<Rect>(); // true
/// ```
/// @nodoc
bool isSubtypeOfWinRTStruct<T>() => isSubtype<T, WinRTStruct>();
