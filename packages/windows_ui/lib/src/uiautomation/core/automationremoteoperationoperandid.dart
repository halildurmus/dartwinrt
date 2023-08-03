// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents an identifier that refers to an operand register of a
/// CoreAutomationRemoteOperation.
final class AutomationRemoteOperationOperandId implements WinRTStruct {
  const AutomationRemoteOperationOperandId(this.value);

  final int value;

  @override
  Pointer<NativeAutomationRemoteOperationOperandId> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr =
        allocator<NativeAutomationRemoteOperationOperandId>();
    nativeStructPtr.ref..value = value;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AutomationRemoteOperationOperandId && value == other.value;
  }

  @override
  int get hashCode => value.hashCode;
}

/// @nodoc
extension AutomationRemoteOperationOperandIdListToNativeAutomationRemoteOperationOperandIdArrayConversion
    on List<AutomationRemoteOperationOperandId> {
  /// Creates an array of [NativeAutomationRemoteOperationOperandId]s from a
  /// List of [AutomationRemoteOperationOperandId]s.
  Pointer<NativeAutomationRemoteOperationOperandId> toArray(
      {Allocator allocator = calloc}) {
    final array = allocator<NativeAutomationRemoteOperationOperandId>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeAutomationRemoteOperationOperandIdConversion
    on NativeAutomationRemoteOperationOperandId {
  /// Converts this [NativeAutomationRemoteOperationOperandId] into a Dart
  /// [AutomationRemoteOperationOperandId].
  AutomationRemoteOperationOperandId toDart() =>
      AutomationRemoteOperationOperandId(value);
}

/// @nodoc
extension PointerNativeAutomationRemoteOperationOperandIdConversion
    on Pointer<NativeAutomationRemoteOperationOperandId> {
  /// Converts the referenced [NativeAutomationRemoteOperationOperandId] into a
  /// Dart [AutomationRemoteOperationOperandId].
  AutomationRemoteOperationOperandId toDart() {
    final ref = this.ref;
    return AutomationRemoteOperationOperandId(ref.value);
  }

  /// Creates a `List<AutomationRemoteOperationOperandId>` from
  /// `Pointer<NativeAutomationRemoteOperationOperandId>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeAutomationRemoteOperationOperandId>`.
  List<AutomationRemoteOperationOperandId> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
