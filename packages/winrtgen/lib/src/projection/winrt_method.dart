// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:win32gen/win32gen.dart';

import 'declarations/declarations.dart';
import 'winrt_parameter.dart';
import 'winrt_type.dart';

class WinRTMethodProjection extends MethodProjection {
  WinRTMethodProjection(super.method, super.vtableOffset) {
    parameters = method.parameters
        .map((param) => WinRTParameterProjection(method, param.name,
            WinRTTypeProjection(param.typeIdentifier, isParameter: true)))
        .toList();
    returnType = WinRTTypeProjection(method.returnType.typeIdentifier);
  }

  // MethodProjection overrides

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
        if (!isVoidReturn)
          isClassOrInterfaceReturn || isObjectReturn
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].join(', ');

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
        if (!isVoidReturn)
          isClassOrInterfaceReturn || isObjectReturn
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].join(', ');

  // WinRT methods always return an HRESULT
  @override
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  @override
  String get dartPrototype => 'int Function($dartParams)';

  @override
  String get identifiers => [
        'ptr.ref.lpVtbl',
        ...parameters.map(
            (param) => (param as WinRTParameterProjection).localIdentifier),
        if (!isVoidReturn) 'retValuePtr',
      ].join(', ');

  // Matcher properties

  bool get isAsyncActionReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.IAsyncAction';

  bool get isAsyncOperationReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IAsyncOperation`1') ??
          false);

  bool get isBooleanReturn => returnType.dartType == 'bool';

  bool get isClassOrInterfaceReturn =>
      (returnType.isInterface || returnType.isClass) &&
      returnType.dartType == 'Pointer<COMObject>';

  bool get isDateTimeReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isDurationReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  bool get isEnumReturn => returnType.isWinRTEnum;

  bool get isGuidReturn => returnType.dartType == 'GUID';

  bool get isMapReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IMap`2') ?? false);

  bool get isMapViewReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IMapView`2') ?? false);

  bool get isObjectReturn => returnType.isObject;

  bool get isReferenceReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IReference`1') ?? false);

  bool get isStringReturn => returnType.isString;

  bool get isStructReturn =>
      returnType.dartType == 'GUID' ||
      // Exclude special types (e.g. DateTime, EventRegistrationToken, HResult,
      // TimeSpan) as we don't expose them as structs.
      (returnType.isWinRTStruct &&
          !(returnType as WinRTTypeProjection).isWinRTSpecialType);

  bool get isUriReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.Uri';

  bool get isVectorReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IVector`1') ?? false);

  bool get isVectorViewReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IVectorView`1') ?? false);

  bool get isVoidReturn => returnType.dartType == 'void';

  /// Whether the method belongs to `IUriRuntimeClass` or
  /// `IUriRuntimeClassFactory`.
  ///
  /// Used to determine whether the method should be exposed as WinRT `Uri` or
  /// dart:core's `Uri` (In other words, whether it should be projected with
  /// [WinRTClassOrInterfaceMethodProjection] or [WinRTUriMethodProjection]).
  bool get methodBelongsToUriRuntimeClass => [
        'Windows.Foundation.IUriRuntimeClass',
        'Windows.Foundation.IUriRuntimeClassFactory'
      ].contains(method.parent.name);

  String get parametersPreamble => parameters
      .map((param) => (param as WinRTParameterProjection).preamble)
      .join('\n');

  String get parametersPostamble => parameters
      .map((param) => (param as WinRTParameterProjection).postamble)
      .join('\n');

  String ffiCall({String params = '', bool freeRetValOnFailure = false}) {
    return [
      '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()($identifiers);
''',
      if (freeRetValOnFailure)
        'if (FAILED(hr)) { free(retValuePtr); throw WindowsException(hr); }'
      else
        'if (FAILED(hr)) throw WindowsException(hr);'
    ].join('\n');
  }

  WinRTMethodProjection get projection {
    if (isAsyncActionReturn) return WinRTAsyncActionMethodProjection(this);
    if (isAsyncOperationReturn) {
      return WinRTAsyncOperationMethodProjection(this);
    }
    if (isDateTimeReturn) return WinRTDateTimeMethodProjection(this);
    if (isDurationReturn) return WinRTDurationMethodProjection(this);
    if (isEnumReturn) return WinRTEnumMethodProjection(this);
    if (isGuidReturn) return WinRTGuidMethodProjection(this);
    if (isMapReturn) return WinRTMapMethodProjection(this);
    if (isMapViewReturn) return WinRTMapViewMethodProjection(this);
    if (isObjectReturn) return WinRTObjectMethodProjection(this);
    if (isReferenceReturn) return WinRTReferenceMethodProjection(this);
    if (isStringReturn) return WinRTStringMethodProjection(this);
    if (isUriReturn && !methodBelongsToUriRuntimeClass) {
      return WinRTUriMethodProjection(this);
    }
    if (isVectorReturn) return WinRTVectorMethodProjection(this);
    if (isVectorViewReturn) return WinRTVectorViewMethodProjection(this);
    if (isVoidReturn) return WinRTVoidMethodProjection(this);
    if (isClassOrInterfaceReturn) {
      return WinRTClassOrInterfaceMethodProjection(this);
    }

    return WinRTDefaultMethodProjection(this);
  }

  @override
  String toString() {
    try {
      return projection.toString();
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project WinRT method: ${method.name}');
      return '';
    }
  }
}
