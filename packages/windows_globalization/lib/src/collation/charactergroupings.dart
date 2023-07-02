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

import 'charactergrouping.dart';
import 'icharactergroupings.dart';
import 'icharactergroupingsfactory.dart';

/// Contains the set of character groups and the functionality to get the
/// label for any given string.
class CharacterGroupings extends IInspectable
    implements
        ICharacterGroupings,
        IVectorView<CharacterGrouping?>,
        IIterable<CharacterGrouping?> {
  CharacterGroupings() : super(activateClass(_className));
  CharacterGroupings.fromPtr(super.ptr);

  static const _className =
      'Windows.Globalization.Collation.CharacterGroupings';

  factory CharacterGroupings.create(String language) => createActivationFactory(
          ICharacterGroupingsFactory.fromPtr,
          _className,
          IID_ICharacterGroupingsFactory)
      .create(language);

  late final _iCharacterGroupings = ICharacterGroupings.from(this);

  @override
  String lookup(String text) => _iCharacterGroupings.lookup(text);

  late final _iVectorView = IVectorView<CharacterGrouping?>.fromPtr(
      toInterface('{f7cf5a4a-2b7a-5bc9-a0c4-9dce07ff61c9}'),
      creator: CharacterGrouping.fromPtr,
      iterableIid: '{82e3abf0-06e3-5609-ba39-c51eb2f5fae6}');

  @override
  CharacterGrouping? getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  bool indexOf(CharacterGrouping? value, Pointer<Uint32> index) =>
      _iVectorView.indexOf(value, index);

  @override
  int getMany(int startIndex, int itemsSize, List<CharacterGrouping?> items) =>
      _iVectorView.getMany(startIndex, itemsSize, items);

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
