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

import '../internal.dart';
import 'collections/iiterable.dart';
import 'collections/iiterator.dart';
import 'collections/ivectorview.dart';
import 'helpers.dart';
import 'iwwwformurldecoderentry.dart';

/// @nodoc
const IID_IWwwFormUrlDecoderRuntimeClass =
    '{d45a0451-f225-4542-9296-0e1df5d254df}';

/// {@category interface}
class IWwwFormUrlDecoderRuntimeClass extends IInspectable
    implements
        IIterable<IWwwFormUrlDecoderEntry>,
        IVectorView<IWwwFormUrlDecoderEntry> {
  // vtable begins at 6, is 1 entries long.
  IWwwFormUrlDecoderRuntimeClass.fromPtr(super.ptr);

  factory IWwwFormUrlDecoderRuntimeClass.from(IInspectable interface) =>
      IWwwFormUrlDecoderRuntimeClass.fromPtr(
          interface.toInterface(IID_IWwwFormUrlDecoderRuntimeClass));

  String getFirstValueByName(String name) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final nameHString = name.toHString();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int name,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, nameHString, retValuePtr);

      WindowsDeleteString(nameHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  late final _iVectorView = IVectorView<IWwwFormUrlDecoderEntry>.fromPtr(
      toInterface('{b1f00d3b-1f06-5117-93ea-2a0d79116701}'),
      creator: IWwwFormUrlDecoderEntry.fromPtr,
      iterableIid: '{876be83b-7218-5bfb-a169-83152ef7e146}');

  @override
  IWwwFormUrlDecoderEntry getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  bool indexOf(IWwwFormUrlDecoderEntry value, Pointer<Uint32> index) =>
      _iVectorView.indexOf(value, index);

  @override
  int getMany(
          int startIndex, int valueSize, List<IWwwFormUrlDecoderEntry> value) =>
      _iVectorView.getMany(startIndex, valueSize, value);

  @override
  IIterator<IWwwFormUrlDecoderEntry> first() => _iVectorView.first();

  @override
  List<IWwwFormUrlDecoderEntry> toList() => _iVectorView.toList();

  @override
  IWwwFormUrlDecoderEntry operator [](int index) => _iVectorView[index];

  @override
  List<IWwwFormUrlDecoderEntry> operator +(
          List<IWwwFormUrlDecoderEntry> other) =>
      toList() + other;
}
