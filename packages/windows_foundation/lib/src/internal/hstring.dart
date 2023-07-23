// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// A wrapper for HSTRING types.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

/// A string data type commonly used by Windows Runtime.
///
/// This class wraps the Windows Runtime memory allocation functions, allowing
/// the creation of [HSTRING] types with ease, as shown below:
/// ```dart
/// final hString = HString.fromString('Hello world!');
/// ```
///
/// In general, freeing the memory allocated for a [HString] when it is no
/// longer used is not a concern, as the [Finalizer] automatically releases
/// it for you when the object becomes inaccessible to the program. However,
/// you also have the option to manually release its memory by calling the
/// object's [free] method.
class HString {
  /// The handle to a [HSTRING].
  final int handle;

  /// Create an empty [HString].
  // There is no need to attach a finalizer to an empty HString, as it does not
  // need to be freed.
  const HString.empty() : handle = 0;

  HString._(this.handle) {
    _finalizer.attach(this, handle, detach: this);
  }

  static final _finalizer = Finalizer<int>(WindowsDeleteString);

  /// Create a [HString] from a given HSTRING [handle].
  factory HString.fromHandle(int handle) =>
      handle == 0 ? const HString.empty() : HString._(handle);

  /// Create a [HString] from a given Dart [string].
  factory HString.fromString(String string) {
    if (string.isEmpty) return const HString.empty();
    return using((arena) {
      final pSourceString = string.toNativeUtf16(allocator: arena);
      final pString = arena<HSTRING>();
      final hr = WindowsCreateString(pSourceString, string.length, pString);
      if (FAILED(hr)) throwWindowsException(hr);
      return HString._(pString.value);
    });
  }

  /// Creates a copy of the existing string.
  HString clone() {
    if (handle == 0) return const HString.empty();
    return using((arena) {
      final pNewString = arena<HSTRING>();
      final hr = WindowsDuplicateString(handle, pNewString);
      if (FAILED(hr)) throwWindowsException(hr);
      return HString._(pNewString.value);
    });
  }

  /// Detaches the object from the [Finalizer].
  void detach() => _finalizer.detach(this);

  /// Releases the native memory allocated to the [HString].
  void free() {
    _finalizer.detach(this);
    WindowsDeleteString(handle);
  }

  /// Whether the string is empty.
  bool get isEmpty => handle == 0 ? true : WindowsIsStringEmpty(handle) == TRUE;

  /// The length of the string.
  int get length => handle == 0 ? 0 : WindowsGetStringLen(handle);

  /// Concatenates two [HString]s.
  HString operator +(HString other) {
    return using((arena) {
      final pNewString = arena<HSTRING>();
      final hr = WindowsConcatString(handle, other.handle, pNewString);
      if (FAILED(hr)) throwWindowsException(hr);
      return HString._(pNewString.value);
    });
  }

  /// Converts the [HString] into a regular Dart string.
  @override
  String toString() => handle == 0
      ? ''
      : WindowsGetStringRawBuffer(handle, nullptr).toDartString();
}

/// @nodoc
extension HStringHandleToDartStringConversion on int {
  /// Converts the [HSTRING] into a Dart string.
  String toDartString() => HString.fromHandle(this).toString();
}

/// @nodoc
extension DartStringToHStringConversion on String {
  /// Converts the string into an [HString], returning an HSTRING handle.
  int toHString() => HString.fromString(this).handle;
}

/// @nodoc
extension HSTRINGPointerHelpers on Pointer<HSTRING> {
  /// Converts the [HSTRING] into a Dart string.
  String toDartString() => value.toDartString();

  /// Creates a [List] from `Pointer<HSTRING>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<HSTRING>`.
  List<String> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i].toDartString()];
}
