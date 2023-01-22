// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

import 'declarations/async.dart';
import 'declarations/class_or_interface.dart';
import 'declarations/datetime.dart';
import 'declarations/default.dart';
import 'declarations/duration.dart';
import 'declarations/enum.dart';
import 'declarations/guid.dart';
import 'declarations/map.dart';
import 'declarations/reference.dart';
import 'declarations/string.dart';
import 'declarations/uri.dart';
import 'declarations/vector.dart';
import 'declarations/void.dart';
import 'winrt_parameter.dart';
import 'winrt_type.dart';

class WinRTMethodProjection extends MethodProjection {
  WinRTMethodProjection(super.method, super.vtableOffset) {
    parameters = method.parameters
        .map((param) => WinRTParameterProjection(
            method, param.name, WinRTTypeProjection(param.typeIdentifier)))
        .toList();
    returnType = WinRTTypeProjection(method.returnType.typeIdentifier);
  }

  // MethodProjection overrides

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
        if (!isVoidReturn)
          isClassOrInterfaceReturn
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].join(', ');

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
        if (!isVoidReturn)
          isClassOrInterfaceReturn
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
  /// dart:core's `Uri`.
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

  /// Returns the method declaration for a method or property declaration class
  /// specified in [creator].
  ///
  /// [creator] must be the constructor of a WinRT method or property
  /// declaration class (e.g. `WinRTVectorMethodProjection.new`,
  /// `WinRTStringGetterProjection.new`, `WinRTEnumSetterProjection.new`).
  String declarationFor(WinRTMethodProjection Function(Method, int) creator) =>
      creator(method, vtableOffset).toString();

  @override
  String toString() {
    try {
      if (isClassOrInterfaceReturn) {
        if (isAsyncActionReturn) {
          return declarationFor(WinRTAsyncActionMethodProjection.new);
        }

        if (isAsyncOperationReturn) {
          return declarationFor(WinRTAsyncOperationMethodProjection.new);
        }

        if (isMapReturn) return declarationFor(WinRTMapMethodProjection.new);

        if (isMapViewReturn) {
          return declarationFor(WinRTMapViewMethodProjection.new);
        }

        if (isReferenceReturn) {
          return declarationFor(WinRTReferenceMethodProjection.new);
        }

        if (isUriReturn && !methodBelongsToUriRuntimeClass) {
          return declarationFor(WinRTUriMethodProjection.new);
        }

        if (isVectorReturn) {
          return declarationFor(WinRTVectorMethodProjection.new);
        }

        if (isVectorViewReturn) {
          return declarationFor(WinRTVectorViewMethodProjection.new);
        }

        return declarationFor(WinRTClassOrInterfaceMethodProjection.new);
      }

      if (isDateTimeReturn) {
        return declarationFor(WinRTDateTimeMethodProjection.new);
      }

      if (isDurationReturn) {
        return declarationFor(WinRTDurationMethodProjection.new);
      }

      if (isEnumReturn) return declarationFor(WinRTEnumMethodProjection.new);
      if (isGuidReturn) return declarationFor(WinRTGuidMethodProjection.new);

      if (isStringReturn) {
        return declarationFor(WinRTStringMethodProjection.new);
      }

      if (isVoidReturn) return declarationFor(WinRTVoidMethodProjection.new);

      return declarationFor(WinRTDefaultMethodProjection.new);
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project WinRT method: ${method.name}');
      return '';
    }
  }
}
