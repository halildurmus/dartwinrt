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

mixin _UriMixin on MethodProjection {
  @override
  bool get isNullable {
    // Factory interface methods (constructors) cannot return null.
    if (method.parent.isFactoryInterface) return false;

    // Methods of IIterator, IVector, and IVectorView cannot return null.
    return !method.parent.name.endsWith('IIterator`1') &&
        !method.parent.name.endsWith('IVector`1') &&
        !method.parent.name.endsWith('IVectorView`1');
  }

  @override
  String get returnType => 'Uri${isNullable ? '?' : ''}';

  String get nullCheck {
    if (!isNullable) return '';
    return '''
    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }
''';
  }

  String get returnStatement {
    if (_methodBelongsToUriRuntimeClass(method)) {
      return 'return Uri.fromPtr(retValuePtr);';
    }

    return '''
    final winrtUri = retValuePtr.toWinRTUri();
    return winrtUri.toDartUri();''';
  }

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    $returnStatement
  }
''';
}

/// Method projection for methods that return `Uri`.
class UriMethodProjection extends MethodProjection with _UriMixin {
  UriMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `Uri` getters.
class UriGetterProjection extends GetterProjection with _UriMixin {
  UriGetterProjection(super.method, super.vtableOffset);
}

mixin _UriListMixin on MethodProjection {
  @override
  String get returnType => 'List<Uri>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final pValueSize = calloc<Uint32>();
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      ${ffiCall()}

      return retValuePtr.value
        .toList(winrt_uri.Uri.fromPtr, length: pValueSize.value)
        .map((winrtUri) => Uri.parse(winrtUri.toString()));
    } finally {
      free(pValueSize);
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return `List<Uri>`.
class UriListMethodProjection extends MethodProjection with _UriListMixin {
  UriListMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `List<Uri>` getters.
class UriListGetterProjection extends GetterProjection with _UriListMixin {
  UriListGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for `Uri` setters.
class UriSetterProjection extends SetterProjection {
  UriSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final winrtUri = value?.toWinRTUri();
    ${ffiCall(identifier: 'winrtUri == null ? nullptr : winrtUri.ptr.ref.lpVtbl')}
  }
''';
}

/// Parameter projection for `Uri` parameters.
class UriParameterProjection extends ParameterProjection {
  UriParameterProjection(super.parameter);

  @override
  bool get isNullable =>
      !method.parent.name.endsWith('IIterator`1') &&
      !method.parent.name.endsWith('IVector`1') &&
      !method.parent.name.endsWith('IVectorView`1');

  @override
  String get type => 'Uri${isNullable ? '?' : ''}';

  @override
  String get preamble {
    if (_methodBelongsToUriRuntimeClass(method)) return '';
    final expression =
        isNullable ? '$identifier?.toWinRTUri()' : '$identifier.toWinRTUri()';
    return 'final ${name}Uri = $expression;';
  }

  @override
  String get localIdentifier {
    final winrtUri =
        _methodBelongsToUriRuntimeClass(method) ? identifier : '${name}Uri';
    return isNullable
        ? '$winrtUri == null ? nullptr : $winrtUri.ptr.ref.lpVtbl'
        : '$winrtUri.ptr.ref.lpVtbl';
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
      final winrtUri = value.elementAt(i).toWinRTUri();
      pArray[i] = winrtUri.ptr.ref;
    }''';

  @override
  String get receiveArrayPreamble => '''
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<COMObject>>();''';

  @override
  String get fillArrayPostamble => '''
    if ($fillArraySizeVariable > 0) {
      value.addAll(pArray.toDartUriList(length: $fillArraySizeVariable));
    }
    free(pArray);''';

  @override
  String get receiveArrayPostamble => '''
    if (pValueSize.value > 0) {
      value.addAll(pArray.value.toDartUriList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pArray);''';
}
