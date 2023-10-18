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

import '../mediaproperties/audioencodingproperties.dart';
import 'imediastreamdescriptor.dart';

/// @nodoc
const IID_IAudioStreamDescriptor = '{1e3692e4-4027-4847-a70b-df1d9a2a7b04}';

class IAudioStreamDescriptor extends IInspectable
    implements IMediaStreamDescriptor {
  IAudioStreamDescriptor.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAudioStreamDescriptorVtbl>().ref;

  final _IAudioStreamDescriptorVtbl _vtable;

  factory IAudioStreamDescriptor.from(IInspectable interface) => interface.cast(
      IAudioStreamDescriptor.fromPtr, IID_IAudioStreamDescriptor);

  AudioEncodingProperties? get encodingProperties {
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

    return AudioEncodingProperties.fromPtr(encodingProperties);
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

final class _IAudioStreamDescriptorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> encodingProperties)>>
      get_EncodingProperties;
}
