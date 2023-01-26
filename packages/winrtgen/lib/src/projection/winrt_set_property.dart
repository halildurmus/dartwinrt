// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'declarations/declarations.dart';
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
      (parameters.first.type.isClass || parameters.first.type.isInterface) &&
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
  WinRTSetPropertyProjection get projection {
    // Not sure if there are setters for these in WinMD but just in case...
    // TODO: WinRTMapSetterProjection(this);
    // TODO: WinRTMapViewSetterProjection(this);
    // TODO: WinRTVectorSetterProjection(this);
    // TODO: WinRTVectorViewSetterProjection(this);

    if (isDateTimeProperty) return WinRTDateTimeSetterProjection(this);
    if (isDurationProperty) return WinRTDurationSetterProjection(this);
    if (isEnumProperty) return WinRTEnumSetterProjection(this);
    if (isGuidProperty) return WinRTGuidSetterProjection(this);
    if (isObjectProperty) return WinRTObjectSetterProjection(this);
    if (isReferenceProperty) return WinRTReferenceSetterProjection(this);
    if (isStringProperty) return WinRTStringSetterProjection(this);
    if (isUriProperty) return WinRTUriSetterProjection(this);
    if (isClassOrInterfaceProperty) {
      return WinRTClassOrInterfaceSetterProjection(this);
    }

    return WinRTDefaultSetterProjection(this);
  }
}
