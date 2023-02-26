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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ixmlloadsettings.dart';

/// Contains settings that are used during loading and parsing of XML
/// documents. The default settings are chosen for the highest security.
/// This class can be instantiated and is accepted by LoadXml,
/// LoadFromUriAsync, and LoadFromFileAsync.
///
/// {@category class}
class XmlLoadSettings extends IInspectable implements IXmlLoadSettings {
  XmlLoadSettings() : super(activateClass(_className));
  XmlLoadSettings.fromRawPointer(super.ptr);

  static const _className = 'Windows.Data.Xml.Dom.XmlLoadSettings';

  // IXmlLoadSettings methods
  late final _iXmlLoadSettings = IXmlLoadSettings.from(this);

  @override
  int get maxElementDepth => _iXmlLoadSettings.maxElementDepth;

  @override
  set maxElementDepth(int value) => _iXmlLoadSettings.maxElementDepth = value;

  @override
  bool get prohibitDtd => _iXmlLoadSettings.prohibitDtd;

  @override
  set prohibitDtd(bool value) => _iXmlLoadSettings.prohibitDtd = value;

  @override
  bool get resolveExternals => _iXmlLoadSettings.resolveExternals;

  @override
  set resolveExternals(bool value) =>
      _iXmlLoadSettings.resolveExternals = value;

  @override
  bool get validateOnParse => _iXmlLoadSettings.validateOnParse;

  @override
  set validateOnParse(bool value) => _iXmlLoadSettings.validateOnParse = value;

  @override
  bool get elementContentWhiteSpace =>
      _iXmlLoadSettings.elementContentWhiteSpace;

  @override
  set elementContentWhiteSpace(bool value) =>
      _iXmlLoadSettings.elementContentWhiteSpace = value;
}
