// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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

import 'audiobuffer.dart';
import 'audiobufferaccessmode.dart';
import 'imediaframe.dart';

/// @nodoc
const IID_IAudioFrame = '{e36ac304-aab2-4277-9ed0-43cedf8e29c6}';

class IAudioFrame extends IInspectable implements IMediaFrame, IClosable {
  // vtable begins at 6, is 1 entries long.
  IAudioFrame.fromPtr(super.ptr);

  factory IAudioFrame.from(IInspectable interface) =>
      IAudioFrame.fromPtr(interface.toInterface(IID_IAudioFrame));

  AudioBuffer? lockBuffer(AudioBufferAccessMode mode) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int32 mode,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int mode,
                Pointer<COMObject> value)>()(ptr.ref.lpVtbl, mode.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return AudioBuffer.fromPtr(value);
  }

  late final _iMediaFrame = IMediaFrame.from(this);

  @override
  String get type => _iMediaFrame.type;

  @override
  bool get isReadOnly => _iMediaFrame.isReadOnly;

  @override
  set relativeTime(Duration? value) => _iMediaFrame.relativeTime = value;

  @override
  Duration? get relativeTime => _iMediaFrame.relativeTime;

  @override
  set systemRelativeTime(Duration? value) =>
      _iMediaFrame.systemRelativeTime = value;

  @override
  Duration? get systemRelativeTime => _iMediaFrame.systemRelativeTime;

  @override
  set duration(Duration? value) => _iMediaFrame.duration = value;

  @override
  Duration? get duration => _iMediaFrame.duration;

  @override
  set isDiscontinuous(bool value) => _iMediaFrame.isDiscontinuous = value;

  @override
  bool get isDiscontinuous => _iMediaFrame.isDiscontinuous;

  @override
  IPropertySet? get extendedProperties => _iMediaFrame.extendedProperties;

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
