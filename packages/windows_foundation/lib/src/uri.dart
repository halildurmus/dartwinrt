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
import 'collections/iiterator.dart';
import 'helpers.dart';
import 'istringable.dart';
import 'iuriescapestatics.dart';
import 'iuriruntimeclass.dart';
import 'iuriruntimeclassfactory.dart';
import 'iuriruntimeclasswithabsolutecanonicaluri.dart';
import 'wwwformurldecoder.dart';

/// Defines an object that represents a Uniform Resource Identifier (URI)
/// value and parses it into components. The Uri object is used by many
/// other Windows Runtime APIs that are not necessarily confined to web
/// browser scenarios.
///
/// {@category class}
class Uri extends IInspectable
    implements
        IUriRuntimeClass,
        IUriRuntimeClassWithAbsoluteCanonicalUri,
        IStringable {
  Uri.fromPtr(super.ptr);

  static const _className = 'Windows.Foundation.Uri';

  factory Uri.createUri(String uri) => createActivationFactory(
          IUriRuntimeClassFactory.fromPtr,
          _className,
          IID_IUriRuntimeClassFactory)
      .createUri(uri);

  factory Uri.createWithRelativeUri(String baseUri, String relativeUri) =>
      createActivationFactory(IUriRuntimeClassFactory.fromPtr, _className,
              IID_IUriRuntimeClassFactory)
          .createWithRelativeUri(baseUri, relativeUri);

  static String unescapeComponent(String toUnescape) => createActivationFactory(
          IUriEscapeStatics.fromPtr, _className, IID_IUriEscapeStatics)
      .unescapeComponent(toUnescape);

  static String escapeComponent(String toEscape) => createActivationFactory(
          IUriEscapeStatics.fromPtr, _className, IID_IUriEscapeStatics)
      .escapeComponent(toEscape);

  late final _iUriRuntimeClass = IUriRuntimeClass.from(this);

  @override
  String get absoluteUri => _iUriRuntimeClass.absoluteUri;

  @override
  String get displayUri => _iUriRuntimeClass.displayUri;

  @override
  String get domain => _iUriRuntimeClass.domain;

  @override
  String get extension => _iUriRuntimeClass.extension;

  @override
  String get fragment => _iUriRuntimeClass.fragment;

  @override
  String get host => _iUriRuntimeClass.host;

  @override
  String get password => _iUriRuntimeClass.password;

  @override
  String get path => _iUriRuntimeClass.path;

  @override
  String get query => _iUriRuntimeClass.query;

  @override
  WwwFormUrlDecoder get queryParsed => _iUriRuntimeClass.queryParsed;

  @override
  String get rawUri => _iUriRuntimeClass.rawUri;

  @override
  String get schemeName => _iUriRuntimeClass.schemeName;

  @override
  String get userName => _iUriRuntimeClass.userName;

  @override
  int get port => _iUriRuntimeClass.port;

  @override
  bool get suspicious => _iUriRuntimeClass.suspicious;

  @override
  bool equals(Uri? pUri) => _iUriRuntimeClass.equals(pUri);

  @override
  Uri? combineUri(String relativeUri) =>
      _iUriRuntimeClass.combineUri(relativeUri);

  late final _iUriRuntimeClassWithAbsoluteCanonicalUri =
      IUriRuntimeClassWithAbsoluteCanonicalUri.from(this);

  @override
  String get absoluteCanonicalUri =>
      _iUriRuntimeClassWithAbsoluteCanonicalUri.absoluteCanonicalUri;

  @override
  String get displayIri => _iUriRuntimeClassWithAbsoluteCanonicalUri.displayIri;

  late final _iStringable = IStringable.from(this);

  @override
  String toString() => _iStringable.toString();
}
