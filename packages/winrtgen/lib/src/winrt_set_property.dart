// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'declarations/class_or_interface.dart';
import 'declarations/datetime.dart';
import 'declarations/default.dart';
import 'declarations/duration.dart';
import 'declarations/enum.dart';
import 'declarations/guid.dart';
import 'declarations/reference.dart';
import 'declarations/string.dart';
import 'declarations/uri.dart';
import 'winrt_property.dart';

class WinRTSetPropertyProjection extends WinRTPropertyProjection {
  WinRTSetPropertyProjection(super.method, super.vtableOffset);

  // WinRTPropertyProjection overrides

  @override
  String get nativeParams => 'Pointer, ${parameters.first.type.nativeType}';

  @override
  String get dartParams => 'Pointer, ${parameters.first.type.dartType}';

  // MethodProjection override

  @override
  String get shortForm => '$exposedMethodName = value';

  @override
  String ffiCall({String params = '', bool freeRetValOnFailure = false}) => '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, $params);

    if (FAILED(hr)) throw WindowsException(hr);
  ''';

  // Matcher properties

  bool get isClassOrInterfaceProperty =>
      ['LPVTBL', 'Pointer<COMObject>'].contains(parameters.first.type.dartType);

  bool get isDateTimeProperty =>
      parameters.first.type.typeIdentifier.name ==
      'Windows.Foundation.DateTime';

  bool get isDurationProperty =>
      parameters.first.type.typeIdentifier.name ==
      'Windows.Foundation.TimeSpan';

  bool get isEnumProperty => parameters.first.type.isWinRTEnum;

  bool get isGuidProperty => parameters.first.type.dartType == 'GUID';

  bool get isObjectProperty => parameters.first.type.isObject;

  bool get isStringProperty => parameters.first.type.isString;

  bool get isReferenceProperty =>
      parameters.first.type.typeIdentifier.type?.name
          .endsWith('IReference`1') ??
      false;

  bool get isUriProperty =>
      parameters.first.type.typeIdentifier.name == 'Windows.Foundation.Uri';

  @override
  String toString() {
    try {
      if (isClassOrInterfaceProperty) {
        // TODO: declarationFor(WinRTMapSetterProjection.new)
        // TODO: declarationFor(WinRTMapViewSetterProjection.new)
        // TODO: declarationFor(WinRTVectorSetterProjection.new)
        // TODO: declarationFor(WinRTVectorViewSetterProjection.new)
        if (isUriProperty) return declarationFor(WinRTUriSetterProjection.new);

        return isReferenceProperty
            ? declarationFor(WinRTReferenceSetterProjection.new)
            : declarationFor(WinRTClassOrInterfaceSetterProjection.new);
      }

      if (isDateTimeProperty) {
        return declarationFor(WinRTDateTimeSetterProjection.new);
      }

      if (isDurationProperty) {
        return declarationFor(WinRTDurationSetterProjection.new);
      }

      if (isEnumProperty) return declarationFor(WinRTEnumSetterProjection.new);
      if (isGuidProperty) return declarationFor(WinRTGuidSetterProjection.new);

      if (isStringProperty) {
        return declarationFor(WinRTStringSetterProjection.new);
      }

      return declarationFor(WinRTDefaultSetterProjection.new);
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project set property: ${method.name}');
      return '';
    }
  }
}
