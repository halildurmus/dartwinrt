// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:developer';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

import '../winrt_enum.dart';
import '../winrt_struct.dart';
import 'extensions/extensions.dart';

/// Forces garbage collection through aggressive memory allocation.
///
/// Used to ensure `Finalizer`s run after all tests within a file.
///
/// Its purpose is to prevent any potential occurrences of "double free" or
/// "use after free" errors in the projection.
/// @nodoc
Future<void> forceGC({int fullGcCycles = 2}) async {
  final barrier = reachabilityBarrier;

  final storage = <List<int>>[];

  void allocateMemory() {
    storage.add(List.generate(30000, (n) => n));
    if (storage.length > 100) storage.removeAt(0);
  }

  while (reachabilityBarrier < barrier + fullGcCycles) {
    await Future<void>.delayed(Duration.zero);
    allocateMemory();
  }
}

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

/// Returns the Windows build number of the current system.
/// @nodoc
int getWindowsBuildNumber() {
  final key = Registry.openPath(RegistryHive.localMachine,
      path: r'Software\Microsoft\Windows NT\CurrentVersion');
  final buildNumber = key.getValueAsString('CurrentBuildNumber');
  key.close();
  if (buildNumber != null) return int.parse(buildNumber);
  throw StateError('Failed to retrieve Windows build number.');
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

/// @nodoc
typedef IUnknown_AddRef_Native = Uint32 Function(VTablePointer lpVtbl);

/// @nodoc
typedef IUnknown_Release_Native = IUnknown_AddRef_Native;

/// @nodoc
typedef IUnknown_QueryInterface_Native = HRESULT Function(
    VTablePointer lpVtbl, Pointer<GUID> riid, Pointer<VTablePointer> ppvObject);

/// @nodoc
final class IUnknownVtbl extends Struct {
  external Pointer<NativeFunction<IUnknown_QueryInterface_Native>>
      QueryInterface;
  external Pointer<NativeFunction<IUnknown_AddRef_Native>> AddRef;
  external Pointer<NativeFunction<IUnknown_Release_Native>> Release;
}

/// @nodoc
typedef IInspectable_GetIids_Native = HRESULT Function(VTablePointer lpVtbl,
    Pointer<Uint32> iidCount, Pointer<Pointer<GUID>> iids);

/// @nodoc
typedef IInspectable_GetRuntimeClassName_Native = HRESULT Function(
    VTablePointer lpVtbl, Pointer<IntPtr> className);

/// @nodoc
typedef IInspectable_GetTrustLevel_Native = HRESULT Function(
    VTablePointer lpVtbl, Pointer<Int32> trustLevel);

/// @nodoc
final class IInspectableVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<IInspectable_GetIids_Native>> GetIids;
  external Pointer<NativeFunction<IInspectable_GetRuntimeClassName_Native>>
      GetRuntimeClassName;
  external Pointer<NativeFunction<IInspectable_GetTrustLevel_Native>>
      GetTrustLevel;
}
