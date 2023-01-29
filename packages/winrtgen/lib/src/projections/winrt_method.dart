// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/winrt_method_return_type.dart';
import '../utils.dart';
import 'method.dart';
import 'parameter.dart';
import 'type.dart';
import 'types/types.dart';
import 'winrt_parameter.dart';

abstract class WinRTMethodProjection extends MethodProjection {
  WinRTMethodProjection(super.method, super.vtableOffset);

  /// Returns the appropriate method projection for the [method] based on the
  /// return type.
  factory WinRTMethodProjection.create(Method method, int vtableOffset) {
    final typeProjection = TypeProjection(method.returnType.typeIdentifier);
    final methodReturnType = WinRTMethodReturnType.from(typeProjection);
    if (methodReturnType == WinRTMethodReturnType.uri &&
        methodBelongsToUriRuntimeClass(method)) {
      return WinRTInterfaceMethodProjection(method, vtableOffset);
    }

    switch (methodReturnType) {
      case WinRTMethodReturnType.asyncAction:
        return WinRTAsyncActionMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.asyncOperation:
        return WinRTAsyncOperationMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.class_:
        return WinRTClassMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.asyncActionWithProgress:
      case WinRTMethodReturnType.asyncOperationWithProgress:
      case WinRTMethodReturnType.interface:
        return WinRTInterfaceMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.dateTime:
        return WinRTDateTimeMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.delegate:
        return WinRTDelegateMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.duration:
        return WinRTDurationMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.enum_:
        return WinRTEnumMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.guid:
        return WinRTGuidMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.map:
        return WinRTMapMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.mapView:
        return WinRTMapViewMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.object:
        return WinRTObjectMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.reference:
        return WinRTReferenceMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.string:
        return WinRTStringMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.struct:
        return WinRTStructMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.uri:
        return WinRTUriMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.vector:
        return WinRTVectorMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.vectorView:
        return WinRTVectorViewMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.void_:
        return WinRTVoidMethodProjection(method, vtableOffset);
      case WinRTMethodReturnType.bool:
      case WinRTMethodReturnType.double:
      case WinRTMethodReturnType.int:
        return WinRTDefaultMethodProjection(method, vtableOffset);
    }
  }

  // MethodProjection overrides

  @override
  List<ParameterProjection> get parameters => method.parameters
      .map((param) => WinRTParameterProjection.create(method, param.name,
          TypeProjection(param.typeIdentifier, isParameter: true)))
      .toList();

  @override
  TypeProjection get returnType =>
      TypeProjection(method.returnType.typeIdentifier);

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
        if (!returnType.isVoid)
          returnType.dartType == 'Pointer<COMObject>'
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].join(', ');

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
        if (!returnType.isVoid)
          returnType.dartType == 'Pointer<COMObject>'
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
        ...parameters.map((param) => param.localIdentifier),
        if (!returnType.isVoid) 'retValuePtr',
      ].join(', ');

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

  @override
  String toString() {
    try {
      return methodDeclaration.toString();
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project WinRT method: ${method.name}');
      return '';
    }
  }
}
