// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents an identifier that refers to an operand register of a
/// CoreAutomationRemoteOperation.
///
/// {@category struct}
final class AutomationRemoteOperationOperandId implements WinRTStruct {
  AutomationRemoteOperationOperandId(this.value);

  final int value;

  @override
  Pointer<NativeAutomationRemoteOperationOperandId> toNative(
      {Allocator allocator = malloc}) {
    final ptr = allocator<NativeAutomationRemoteOperationOperandId>();
    ptr.ref.value = value;
    return ptr;
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
extension PointerNativeAutomationRemoteOperationOperandIdConversion
    on Pointer<NativeAutomationRemoteOperationOperandId> {
  /// Converts this [NativeAutomationRemoteOperationOperandId] to a Dart
  /// [AutomationRemoteOperationOperandId].
  AutomationRemoteOperationOperandId toDart() =>
      AutomationRemoteOperationOperandId(ref.value);
}
