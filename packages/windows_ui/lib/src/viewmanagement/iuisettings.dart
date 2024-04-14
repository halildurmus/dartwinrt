// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import '../color.dart';
import 'handpreference.dart';
import 'uielementtype.dart';

/// @nodoc
const IID_IUISettings = '{85361600-1c63-4627-bcb1-3a89e0bc9c55}';

class IUISettings extends IInspectable {
  IUISettings.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUISettingsVtbl>().ref;

  final _IUISettingsVtbl _vtable;

  factory IUISettings.from(IInspectable interface) =>
      interface.cast(IUISettings.fromPtr, IID_IUISettings);

  HandPreference get handPreference {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_HandPreference.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return HandPreference.from(value.value);
    } finally {
      free(value);
    }
  }

  Size get cursorSize {
    final value = calloc<NativeSize>();

    try {
      final hr = _vtable.get_CursorSize.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeSize> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Size get scrollBarSize {
    final value = calloc<NativeSize>();

    try {
      final hr = _vtable.get_ScrollBarSize.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeSize> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Size get scrollBarArrowSize {
    final value = calloc<NativeSize>();

    try {
      final hr = _vtable.get_ScrollBarArrowSize.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeSize> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Size get scrollBarThumbBoxSize {
    final value = calloc<NativeSize>();

    try {
      final hr = _vtable.get_ScrollBarThumbBoxSize.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeSize> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  int get messageDuration {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_MessageDuration.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get animationsEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AnimationsEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get caretBrowsingEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_CaretBrowsingEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get caretBlinkRate {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_CaretBlinkRate.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get caretWidth {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_CaretWidth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get doubleClickTime {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_DoubleClickTime.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get mouseHoverTime {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_MouseHoverTime.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Color uiElementColor(UIElementType desiredElement) {
    final value = calloc<NativeColor>();

    try {
      final hr = _vtable.UIElementColor.asFunction<
              int Function(VTablePointer lpVtbl, int desiredElement,
                  Pointer<NativeColor> value)>()(
          lpVtbl, desiredElement.value, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }
}

final class _IUISettingsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_HandPreference;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeSize> value)>> get_CursorSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeSize> value)>>
      get_ScrollBarSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeSize> value)>>
      get_ScrollBarArrowSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeSize> value)>>
      get_ScrollBarThumbBoxSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_MessageDuration;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AnimationsEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_CaretBrowsingEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_CaretBlinkRate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_CaretWidth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_DoubleClickTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_MouseHoverTime;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 desiredElement,
              Pointer<NativeColor> value)>> UIElementColor;
}
