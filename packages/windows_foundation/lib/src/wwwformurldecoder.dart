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

import '../../../internal.dart';
import 'callbacks.dart';
import 'collections/iiterable.dart';
import 'collections/iiterator.dart';
import 'collections/ivectorview.dart';
import 'helpers.dart';
import 'iinspectable.dart';
import 'iwwwformurldecoderentry.dart';
import 'iwwwformurldecoderruntimeclass.dart';
import 'iwwwformurldecoderruntimeclassfactory.dart';
import 'types.dart';

/// Parses a URL query string, and exposes the results as a read-only vector
/// (list) of name-value pairs from the query string.
///
/// {@category class}
class WwwFormUrlDecoder extends IInspectable
    implements
        IWwwFormUrlDecoderRuntimeClass,
        IVectorView<IWwwFormUrlDecoderEntry>,
        IIterable<IWwwFormUrlDecoderEntry> {
  WwwFormUrlDecoder.fromRawPointer(super.ptr);

  static const _className = 'Windows.Foundation.WwwFormUrlDecoder';

  // IWwwFormUrlDecoderRuntimeClassFactory methods
  static WwwFormUrlDecoder createWwwFormUrlDecoder(String query) {
    final activationFactoryPtr = createActivationFactory(
        _className, IID_IWwwFormUrlDecoderRuntimeClassFactory);
    final object = IWwwFormUrlDecoderRuntimeClassFactory.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.createWwwFormUrlDecoder(query);
    } finally {
      object.release();
    }
  }

  // IWwwFormUrlDecoderRuntimeClass methods
  late final _iWwwFormUrlDecoderRuntimeClass =
      IWwwFormUrlDecoderRuntimeClass.from(this);

  @override
  String getFirstValueByName(String name) =>
      _iWwwFormUrlDecoderRuntimeClass.getFirstValueByName(name);

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
