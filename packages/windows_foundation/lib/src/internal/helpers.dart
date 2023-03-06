// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:win32/win32.dart';

import '../asyncstatus.dart';
import '../iasyncaction.dart';
import '../iasyncinfo.dart';
import '../iasyncoperation.dart';
import '../iinspectable.dart';
import '../winrt_enum.dart';
import '../winrt_struct.dart';

/// Completes the given [completer] when [asyncAction] completes.
void completeAsyncAction(
  IAsyncAction asyncAction,
  Completer<void> completer,
) =>
    _completeAsyncDelegate(asyncAction, completer, completer.complete);

/// Completes the given [completer] when [asyncOperation] completes.
///
/// If [asyncOperation] completes successfully, [completer] will be completed
/// with the [value].
void completeAsyncOperation<T, C>(
  IAsyncOperation<T> asyncOperation,
  Completer<C> completer,
  C Function() value,
) =>
    _completeAsyncDelegate(
        asyncOperation, completer, () => completer.complete(value()));

/// Completes the given [completer] by polling [asyncDelegate]'s `status`
/// property every `1/60` seconds until the [asyncDelegate] completes.
///
/// [onCompleted] is called when the [asyncDelegate] completes successfully.
Future<void> _completeAsyncDelegate<T extends IAsyncInfo, C>(T asyncDelegate,
    Completer<C> completer, void Function() onCompleted) async {
  try {
    while (asyncDelegate.status == AsyncStatus.started) {
      // Yield execution to Dart for 1/60 seconds to avoid blocking the app.
      await Future<void>.delayed(
          const Duration(microseconds: 1 * 1000 * 1000 ~/ 60));
    }

    switch (asyncDelegate.status) {
      // This case is handled by the while loop above.
      case AsyncStatus.started:
        break;
      case AsyncStatus.completed:
        onCompleted();
        break;
      case AsyncStatus.canceled:
        completer.completeError('The async operation canceled!');
        break;
      case AsyncStatus.error:
        completer.completeError(WindowsException(asyncDelegate.errorCode));
        break;
    }
  } catch (error, stackTrace) {
    completer.completeError(error, stackTrace);
  }
}

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
