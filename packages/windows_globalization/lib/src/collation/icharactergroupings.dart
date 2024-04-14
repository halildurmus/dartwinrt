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

import 'charactergrouping.dart';

/// @nodoc
const IID_ICharacterGroupings = '{b8d20a75-d4cf-4055-80e5-ce169c226496}';

class ICharacterGroupings extends IInspectable
    implements IVectorView<CharacterGrouping?>, IIterable<CharacterGrouping?> {
  ICharacterGroupings.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICharacterGroupingsVtbl>().ref;

  final _ICharacterGroupingsVtbl _vtable;

  factory ICharacterGroupings.from(IInspectable interface) =>
      interface.cast(ICharacterGroupings.fromPtr, IID_ICharacterGroupings);

  String lookup(String text) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.Lookup.asFunction<
          int Function(VTablePointer lpVtbl, int text,
              Pointer<IntPtr> result)>()(lpVtbl, text.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  late final _iVectorView = IVectorView<CharacterGrouping?>.fromPtr(
      toInterface('{f7cf5a4a-2b7a-5bc9-a0c4-9dce07ff61c9}'),
      iterableIid: '{82e3abf0-06e3-5609-ba39-c51eb2f5fae6}',
      tObjectCreator: CharacterGrouping.fromPtr);

  @override
  CharacterGrouping? getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  (bool, {int index}) indexOf(CharacterGrouping? value) =>
      _iVectorView.indexOf(value);

  @override
  (int, {List<CharacterGrouping?> items}) getMany(
          int startIndex, int itemsSize) =>
      _iVectorView.getMany(startIndex, itemsSize);

  @override
  IIterator<CharacterGrouping?> first() => _iVectorView.first();

  @override
  List<CharacterGrouping?> toList() => _iVectorView.toList();

  @override
  CharacterGrouping? operator [](int index) => _iVectorView[index];

  @override
  List<CharacterGrouping?> operator +(List<CharacterGrouping?> other) =>
      toList() + other;
}

final class _ICharacterGroupingsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr text, Pointer<IntPtr> result)>>
      Lookup;
}
