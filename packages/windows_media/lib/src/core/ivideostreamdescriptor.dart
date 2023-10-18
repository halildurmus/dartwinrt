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

import '../mediaproperties/videoencodingproperties.dart';
import 'imediastreamdescriptor.dart';

/// @nodoc
const IID_IVideoStreamDescriptor = '{12ee0d55-9c2b-4440-8057-2c7a90f0cbec}';

class IVideoStreamDescriptor extends IInspectable
    implements IMediaStreamDescriptor {
  IVideoStreamDescriptor.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoStreamDescriptorVtbl>().ref;

  final _IVideoStreamDescriptorVtbl _vtable;

  factory IVideoStreamDescriptor.from(IInspectable interface) => interface.cast(
      IVideoStreamDescriptor.fromPtr, IID_IVideoStreamDescriptor);

  VideoEncodingProperties? get encodingProperties {
    final encodingProperties = calloc<COMObject>();

    final hr = _vtable.get_EncodingProperties.asFunction<
            int Function(
                VTablePointer lpVtbl, Pointer<COMObject> encodingProperties)>()(
        lpVtbl, encodingProperties);

    if (FAILED(hr)) {
      free(encodingProperties);
      throwWindowsException(hr);
    }

    if (encodingProperties.isNull) {
      free(encodingProperties);
      return null;
    }

    return VideoEncodingProperties.fromPtr(encodingProperties);
  }

  late final _iMediaStreamDescriptor = IMediaStreamDescriptor.from(this);

  @override
  bool get isSelected => _iMediaStreamDescriptor.isSelected;

  @override
  set name(String value) => _iMediaStreamDescriptor.name = value;

  @override
  String get name => _iMediaStreamDescriptor.name;

  @override
  set language(String value) => _iMediaStreamDescriptor.language = value;

  @override
  String get language => _iMediaStreamDescriptor.language;
}

final class _IVideoStreamDescriptorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> encodingProperties)>>
      get_EncodingProperties;
}
