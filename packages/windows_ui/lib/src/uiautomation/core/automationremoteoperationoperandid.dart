// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents an identifier that refers to an operand register of a
/// CoreAutomationRemoteOperation.
final class AutomationRemoteOperationOperandId implements WinRTStruct {
  AutomationRemoteOperationOperandId(this.value);

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
extension NativeAutomationRemoteOperationOperandIdConversion
    on NativeAutomationRemoteOperationOperandId {
  /// Converts this [NativeAutomationRemoteOperationOperandId] into a Dart
  /// [AutomationRemoteOperationOperandId].
  AutomationRemoteOperationOperandId toDart() {
    return AutomationRemoteOperationOperandId(value);
  }
}

/// @nodoc
extension PointerNativeAutomationRemoteOperationOperandIdConversion
    on Pointer<NativeAutomationRemoteOperationOperandId> {
  /// Frees the allocated memory for
  /// [NativeAutomationRemoteOperationOperandId].
  void free() {
    calloc.free(this);
  }

  /// Converts the referenced [NativeAutomationRemoteOperationOperandId] into
  /// a Dart [AutomationRemoteOperationOperandId].
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
