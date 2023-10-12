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

import '../internal.dart';
import 'collections/iiterable.dart';
import 'collections/iiterator.dart';
import 'collections/ivectorview.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';
import 'iwwwformurldecoderentry.dart';

/// @nodoc
const IID_IWwwFormUrlDecoderRuntimeClass =
    '{d45a0451-f225-4542-9296-0e1df5d254df}';

class IWwwFormUrlDecoderRuntimeClass extends IInspectable
    implements
        IIterable<IWwwFormUrlDecoderEntry?>,
        IVectorView<IWwwFormUrlDecoderEntry?> {
  // vtable begins at 6, is 1 entries long.
  IWwwFormUrlDecoderRuntimeClass.fromPtr(super.ptr);

  factory IWwwFormUrlDecoderRuntimeClass.from(IInspectable interface) =>
      interface.cast(IWwwFormUrlDecoderRuntimeClass.fromPtr,
          IID_IWwwFormUrlDecoderRuntimeClass);

  String getFirstValueByName(String name) {
    final phstrValue = calloc<IntPtr>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                              Pointer<IntPtr> phstrValue)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int name,
                      Pointer<IntPtr> phstrValue)>()(
          lpVtbl, name.toHString(), phstrValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return phstrValue.toDartString();
    } finally {
      free(phstrValue);
    }
  }

  late final _iVectorView = IVectorView<IWwwFormUrlDecoderEntry?>.fromPtr(
      toInterface('{b1f00d3b-1f06-5117-93ea-2a0d79116701}'),
      creator: IWwwFormUrlDecoderEntry.fromPtr,
      iterableIid: '{876be83b-7218-5bfb-a169-83152ef7e146}');

  @override
  IWwwFormUrlDecoderEntry? getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  (bool, {int index}) indexOf(IWwwFormUrlDecoderEntry? value) =>
      _iVectorView.indexOf(value);

  @override
  (int, {List<IWwwFormUrlDecoderEntry?> items}) getMany(
          int startIndex, int itemsSize) =>
      _iVectorView.getMany(startIndex, itemsSize);

  @override
  IIterator<IWwwFormUrlDecoderEntry?> first() => _iVectorView.first();

  @override
  List<IWwwFormUrlDecoderEntry?> toList() => _iVectorView.toList();

  @override
  IWwwFormUrlDecoderEntry? operator [](int index) => _iVectorView[index];

  @override
  List<IWwwFormUrlDecoderEntry?> operator +(
          List<IWwwFormUrlDecoderEntry?> other) =>
      toList() + other;
}
