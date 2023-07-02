// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_graphics/windows_graphics.dart';

import 'imediaframe.dart';
import 'videoframe.dart';

/// @nodoc
const IID_IVideoFrame = '{0cc06625-90fc-4c92-bd95-7ded21819d1c}';

class IVideoFrame extends IInspectable implements IMediaFrame, IClosable {
  // vtable begins at 6, is 3 entries long.
  IVideoFrame.fromPtr(super.ptr);

  factory IVideoFrame.from(IInspectable interface) =>
      IVideoFrame.fromPtr(interface.toInterface(IID_IVideoFrame));

  SoftwareBitmap? get softwareBitmap {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return SoftwareBitmap.fromPtr(retValuePtr);
  }

  Future<void> copyToAsync(VideoFrame? frame) {
    final retValuePtr = calloc<COMObject>();
    final framePtr = frame == null ? nullptr : frame.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer frame,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer frame,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, framePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  IDirect3DSurface? get direct3DSurface {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return IDirect3DSurface.fromPtr(retValuePtr);
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
  IPropertySet get extendedProperties => _iMediaFrame.extendedProperties;

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
