// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../utilities/utilities.dart';
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
bool _methodBelongsToUriRuntimeClass(Method method) =>
    switch (method.parent.name) {
      'Windows.Foundation.IUriRuntimeClass' ||
      'Windows.Foundation.IUriRuntimeClassFactory' =>
        true,
      _ => false
    };

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
final class UriMethodProjection extends MethodProjection with _UriMixin {
  UriMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `Uri` getters.
final class UriGetterProjection extends GetterProjection with _UriMixin {
  UriGetterProjection(super.method, super.vtableOffset);
}

/// Method projection for methods that return `List<Uri>`.
final class UriListMethodProjection extends DefaultListMethodProjection {
  UriListMethodProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<Uri>';

  @override
  String get returnStatement => '''
return retValuePtr.value
  .toList(winrt_uri.Uri.fromPtr, length: $sizeIdentifier.value)
  .map((winrtUri) => Uri.parse(winrtUri.toString()));''';
}

/// Getter projection for `List<Uri>` getters.
final class UriListGetterProjection extends DefaultListGetterProjection {
  UriListGetterProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<Uri>';

  @override
  String get returnStatement => '''
return retValuePtr.value
  .toList(winrt_uri.Uri.fromPtr, length: $sizeIdentifier.value)
  .map((winrtUri) => Uri.parse(winrtUri.toString()));''';
}

/// Setter projection for `Uri` setters.
final class UriSetterProjection extends SetterProjection {
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
final class UriParameterProjection extends ParameterProjection {
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
final class UriListParameterProjection extends DefaultListParameterProjection {
  UriListParameterProjection(super.parameter);

  @override
  String get type => 'List<Uri>';

  @override
  String get fillArrayPreamble =>
      'final $localIdentifier = calloc<COMObject>($sizeParamName);';

  @override
  String get passArrayPreamble => '''
    final $localIdentifier = calloc<COMObject>($paramName.length);
    for (var i = 0; i < $paramName.length; i++) {
      final ${paramName}WinrtUri = $paramName.elementAt(i).toWinRTUri();
      $localIdentifier[i] = ${paramName}WinrtUri.ptr.ref;
    }''';

  @override
  String get receiveArrayPreamble => '''
    final $sizeIdentifier = calloc<Uint32>();
    final $localIdentifier = calloc<${typeArgProjection.nativeType}>();''';

  @override
  String get fillArrayPostamble => '''
    if ($fillArraySizeVariable > 0) {
      $paramName.addAll($localIdentifier.toDartUriList(length: $fillArraySizeVariable));
    }
    free($localIdentifier);''';

  @override
  String get receiveArrayPostamble => '''
    if ($sizeIdentifier.value > 0) {
      $paramName.addAll($localIdentifier.value.toDartUriList(length: $sizeIdentifier.value));
    }
    free($sizeIdentifier);
    free($localIdentifier);''';
}
