// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents an annotation registration.
///
/// {@category struct}
final class AutomationAnnotationTypeRegistration implements WinRTStruct {
  AutomationAnnotationTypeRegistration(this.localId);

  final int localId;

  @override
  Pointer<NativeAutomationAnnotationTypeRegistration> toNative(
      {Allocator allocator = malloc}) {
    final ptr = allocator<NativeAutomationAnnotationTypeRegistration>();
    ptr.ref.localId = localId;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AutomationAnnotationTypeRegistration &&
        localId == other.localId;
  }

  @override
  int get hashCode => localId.hashCode;
}

extension PointerNativeAutomationAnnotationTypeRegistrationConversion
    on Pointer<NativeAutomationAnnotationTypeRegistration> {
  /// Converts this [NativeAutomationAnnotationTypeRegistration] to a Dart
  /// [AutomationAnnotationTypeRegistration].
  AutomationAnnotationTypeRegistration toDart() =>
      AutomationAnnotationTypeRegistration(ref.localId);
}
