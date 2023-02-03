// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../internal.dart';
import 'callbacks.dart';
import 'collections/iiterable.dart';
import 'collections/iiterator.dart';
import 'collections/ivectorview.dart';
import 'helpers.dart';
import 'iinspectable.dart';
import 'iwwwformurldecoderentry.dart';
import 'types.dart';

/// @nodoc
const IID_IWwwFormUrlDecoderRuntimeClass =
    '{d45a0451-f225-4542-9296-0e1df5d254df}';

/// {@category interface}
class IWwwFormUrlDecoderRuntimeClass extends IInspectable
    implements
        IIterable<IWwwFormUrlDecoderEntry>,
        IVectorView<IWwwFormUrlDecoderEntry> {
  // vtable begins at 6, is 1 entries long.
  IWwwFormUrlDecoderRuntimeClass.fromRawPointer(super.ptr);

  factory IWwwFormUrlDecoderRuntimeClass.from(IInspectable interface) =>
      IWwwFormUrlDecoderRuntimeClass.fromRawPointer(
          interface.toInterface(IID_IWwwFormUrlDecoderRuntimeClass));

  String getFirstValueByName(String name) {
    final retValuePtr = calloc<HSTRING>();
    final nameHString = convertToHString(name);

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, IntPtr name, Pointer<IntPtr>)>>>()
              .value
              .asFunction<int Function(Pointer, int name, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, nameHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(nameHString);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  // IVectorView<IWwwFormUrlDecoderEntry> methods
  late final _iVectorView = IVectorView<IWwwFormUrlDecoderEntry>.fromRawPointer(
      toInterface('{b1f00d3b-1f06-5117-93ea-2a0d79116701}'),
      creator: IWwwFormUrlDecoderEntry.fromRawPointer,
      iterableIid: '{876be83b-7218-5bfb-a169-83152ef7e146}');

  @override
  IWwwFormUrlDecoderEntry getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  bool indexOf(IWwwFormUrlDecoderEntry value, Pointer<Uint32> index) =>
      _iVectorView.indexOf(value, index);

  @override
  int getMany(int startIndex, int valueSize, Pointer<NativeType> value) =>
      _iVectorView.getMany(startIndex, valueSize, value);

  @override
  IIterator<IWwwFormUrlDecoderEntry> first() => _iVectorView.first();

  @override
  List<IWwwFormUrlDecoderEntry> toList() => _iVectorView.toList();
}
