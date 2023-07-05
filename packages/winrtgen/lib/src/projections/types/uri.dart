// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../utilities/utilities.dart';
import '../parameter.dart';

/// Parameter projection for `Uri` parameters.
final class UriParameterProjection extends ParameterProjection {
  UriParameterProjection(super.parameter);

  @override
  bool get isNullable => !method.parent.isFactoryInterface;

  @override
  String get type => isNullable ? 'Uri?' : 'Uri';

  @override
  String get creator => needsConversionToWinRTUri
      ? '$identifier.toWinRTUri().toDartUri()'
      : 'Uri.fromPtr($identifier)';

  @override
  String get into {
    final buffer = StringBuffer()..write(identifier);
    if (isNullable) buffer.write('?');
    if (needsConversionToWinRTUri) buffer.write('.toWinRTUri()');
    buffer.write('.ptr');
    if (!typeProjection.isReferenceType) {
      buffer.write('.ref.lpVtbl');
      if (isNullable) buffer.write(' ?? nullptr');
    }
    return buffer.toString();
  }

  @override
  String get toListInto =>
      '$identifier[i]?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr';

  @override
  String get toListIdentifier => 'toDartUriList';

  // No deallocation is needed as NativeFinalizer will handle it.
  @override
  bool get needsDeallocation => false;

  @override
  String get nullCheck {
    if (!isNullable) return '';
    return '''
    if ($identifier.isNull) {
      free($identifier);
      return null;
    }
''';
  }
}

extension on ParameterProjection {
  /// Used to determine whether the method return type or parameter should be
  /// converted to WinRT `Uri`.
  bool get needsConversionToWinRTUri => switch (method.parent.name) {
        'Windows.Foundation.IUriRuntimeClass' ||
        'Windows.Foundation.IUriRuntimeClassFactory' =>
          false,
        _ => true
      };
}
