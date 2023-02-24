// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../extensions/extensions.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

/// Whether the method belongs to `IUriRuntimeClass` or
/// `IUriRuntimeClassFactory`.
///
/// Used to determine whether the method return type or parameter should be
/// exposed as WinRT `Uri` or dart:core's `Uri`.
bool _methodBelongsToUriRuntimeClass(Method method) => [
      'Windows.Foundation.IUriRuntimeClass',
      'Windows.Foundation.IUriRuntimeClassFactory'
    ].contains(method.parent.name);

mixin _UriProjection on MethodProjection {
  bool get isNullable {
    // Factory interface methods (constructors) cannot return null.
    final factoryInterfacePattern = RegExp(r'^I\w+Factory\d{0,2}$');
    if (factoryInterfacePattern.hasMatch(method.parent.shortName)) {
      return false;
    }

    return !method.parent.name.endsWith('IIterator`1') &&
        !method.parent.name.endsWith('IVector`1') &&
        !method.parent.name.endsWith('IVectorView`1');
  }

  @override
  String get returnType => 'Uri${isNullable ? '?' : ''}';

  String get nullCheck => isNullable
      ? '''
    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }
'''
      : '';

  String get winrtUriToDartUriConvertsion =>
      _methodBelongsToUriRuntimeClass(method)
          ? ''
          : '''
    final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
    final uriAsString = winrtUri.toString();
    winrtUri.release();
''';

  String get returnStatement => _methodBelongsToUriRuntimeClass(method)
      ? 'return Uri.fromRawPointer(retValuePtr);'
      : 'return Uri.parse(uriAsString);';
}

/// Method projection for methods that return an `Uri`.
class UriMethodProjection extends MethodProjection with _UriProjection {
  UriMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    $parametersPostamble

    $nullCheck

    $winrtUriToDartUriConvertsion

    $returnStatement
  }
''';
}

/// Getter projection for `Uri` getters.
class UriGetterProjection extends GetterProjection with _UriProjection {
  UriGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    $winrtUriToDartUriConvertsion

    $returnStatement
  }
''';
}

/// Setter projection for `Uri` setters.
class UriSetterProjection extends SetterProjection {
  UriSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${param.type} value) {
    final winrtUri =
        value == null ? null : winrt_uri.Uri.createUri(value.toString());

    try {
      ${ffiCall(params: 'winrtUri == null ? nullptr : winrtUri.ptr.ref.lpVtbl')}
    } finally {
      winrtUri?.release();
    }
  }
''';
}

/// Parameter projection for `Uri` parameters.
class UriParameterProjection extends ParameterProjection {
  UriParameterProjection(super.parameter);

  bool get isNullable =>
      !method.parent.name.endsWith('IIterator`1') &&
      !method.parent.name.endsWith('IVector`1') &&
      !method.parent.name.endsWith('IVectorView`1');

  @override
  String get type => 'Uri${isNullable ? '?' : ''}';

  @override
  String get preamble {
    if (_methodBelongsToUriRuntimeClass(method)) return '';
    return isNullable
        ? 'final ${name}Uri = $name == null ? null : '
            'winrt_uri.Uri.createUri($name.toString());'
        : 'final ${name}Uri = winrt_uri.Uri.createUri($name.toString());';
  }

  @override
  String get postamble {
    if (_methodBelongsToUriRuntimeClass(method)) return '';
    return isNullable ? '${name}Uri?.release();' : '${name}Uri.release();';
  }

  @override
  String get localIdentifier {
    final variableName =
        _methodBelongsToUriRuntimeClass(method) ? name : '${name}Uri';
    return isNullable
        ? '$variableName == null ? nullptr : $variableName.ptr.ref.lpVtbl'
        : '$variableName.ptr.ref.lpVtbl';
  }
}

/// Parameter projection for `List<Uri>` parameters.
class UriListParameterProjection extends DefaultListParameterProjection {
  UriListParameterProjection(super.parameter);

  @override
  String get type => 'List<Uri>';

  @override
  String get fillArrayPreamble =>
      'final pArray = calloc<COMObject>(valueSize);';

  @override
  String get passArrayPreamble => '''
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      final winrtUri = winrt_uri.Uri.createUri(value.elementAt(i).toString());
      pArray[i] = winrtUri.ptr.ref;
    }''';

  @override
  String get receiveArrayPreamble => '''
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<COMObject>>();''';

  @override
  String get fillArrayPostamble => '''
    if (retValuePtr.value > 0) {
      value.addAll(pArray
          .toList(winrt_uri.Uri.fromRawPointer, length: valueSize)
          .map((winrtUri) => Uri.parse(winrtUri.toString())));
    }
    free(pArray);''';

  @override
  String get receiveArrayPostamble => '''
    value.addAll(pArray.value
        .toList(winrt_uri.Uri.fromRawPointer, length: pValueSize.value)
        .map((winrtUri) => Uri.parse(winrtUri.toString())));
    free(pValueSize);
    free(pArray);''';
}
