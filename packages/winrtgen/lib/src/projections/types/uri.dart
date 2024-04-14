// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../parameter.dart';

/// Parameter projection for `Uri` parameters.
final class UriParameterProjection extends ParameterProjection {
  UriParameterProjection(super.parameter);

  @override
  bool get isNullable {
    final parent = method.parent;

    // Constructors cannot return null.
    if (isReturnParam && parent.isFactoryInterface) return false;

    // The key type arguments of IKeyValuePair<Uri, V>, IMap<Uri, V>, and
    // IMapView<Uri, V> cannot be null.
    if (parent.genericParams.length == 2 &&
        (parent.name.endsWith('IKeyValuePair`2') ||
            parent.isCollectionObject)) {
      return switch (parameter.typeIdentifier.genericParameterSequence) {
        0 => false,
        _ => true
      };
    }

    // Treat everything else as nullable.
    return true;
  }

  @override
  String get type => isNullable ? 'Uri?' : 'Uri';

  @override
  String get creator => needsConversionToWinRTUri
      ? '$identifier.toWinRTUri().toDartUri()'
      : 'Uri.fromPtr($identifier)';

  @override
  String get into {
    final buffer = StringBuffer()..write(identifier);
    if (isNullable && needsConversionToWinRTUri) buffer.write('?');
    if (needsConversionToWinRTUri) buffer.write('.toWinRTUri()');
    buffer.write('.lpVtbl');
    if (isNullable && needsConversionToWinRTUri) buffer.write(' ?? nullptr');
    return buffer.toString();
  }

  // No deallocation is needed as Finalizer will handle it.
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
