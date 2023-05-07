// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';

import '../winrt_enum.dart';
import '../winrt_struct.dart';

/// Determines whether [S] is the same type as [T].
///
/// ```dart
/// isSameType<bool?, bool?>(); // true
/// isSameType<String, String?>(); // false
/// ```
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
bool isNullableObjectType<T>() => isSameType<T, Object?>();

/// Determines whether [S] is a subtype of [T] or [T?].
///
/// ```dart
/// isSubtype<Calendar, IInspectable>(); // true
/// isSubtype<IUnknown, IInspectable>(); // false
/// ```
bool isSubtype<S, T>() => <S>[] is List<T> || <S>[] is List<T?>;

/// Determines whether [T] is a subtype of [IInspectable].
///
/// ```dart
/// isSubtypeOfInspectable<StorageFile>(); // true
/// isSubtypeOfInspectable<IUnknown>(); // false
/// ```
bool isSubtypeOfInspectable<T>() => isSubtype<T, IInspectable>();

/// Determines whether [T] is a subtype of [WinRTEnum].
///
/// ```dart
/// isSubtypeOfWinRTEnum<AsyncStatus>(); // true
/// isSubtypeOfWinRTEnum<FileAttributes>(); // true
/// ```
bool isSubtypeOfWinRTEnum<T>() => isSubtype<T, WinRTEnum>();

/// Determines whether [T] is a subtype of [WinRTFlagsEnum].
///
/// ```dart
/// isSubtypeOfWinRTFlagsEnum<FileAttributes>(); // true
/// isSubtypeOfWinRTFlagsEnum<AsyncStatus>(); // false
/// ```
bool isSubtypeOfWinRTFlagsEnum<T>() => isSubtype<T, WinRTFlagsEnum<dynamic>>();

/// Determines whether [T] is a subtype of [WinRTStruct].
///
/// ```dart
/// isSubtypeOfWinRTStruct<Point>(); // true
/// isSubtypeOfWinRTStruct<Rect>(); // true
/// ```
bool isSubtypeOfWinRTStruct<T>() => isSubtype<T, WinRTStruct>();
