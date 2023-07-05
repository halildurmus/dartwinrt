// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../parameter.dart';
import 'default.dart';

/// Parameter projection for `String` parameters.
final class StringParameterProjection extends ParameterProjection {
  StringParameterProjection(super.parameter);

  @override
  String get type => 'String';

  @override
  String get creator => '$identifier.toDartString()';

  @override
  String get into => '${identifier}HString';

  @override
  List<String> get preambles => isInParam
      ? ['final ${identifier}HString = $identifier.toHString();']
      : super.preambles;

  @override
  List<String> get postambles => isInParam
      ? ['WindowsDeleteString(${identifier}HString);']
      : ['WindowsDeleteString($identifier.value);', 'free($identifier);'];

  @override
  bool get needsAllocation => true;
}

/// Parameter projection for `List<String>` parameters.
final class StringListParameterProjection
    extends DefaultListParameterProjection {
  StringListParameterProjection(super.parameter);

  @override
  List<String> get passArrayPreambles => [
        'final ${identifier}Handles = <int>[];',
        'final $localIdentifier = calloc<HSTRING>($identifier.length);',
        '''
    for (var i = 0; i < $identifier.length; i++) {
      $localIdentifier[i] = $identifier[i].toHString();
      ${identifier}Handles.add($localIdentifier[i]);
    }'''
      ];

  @override
  List<String> get passArrayPostambles => [
        '${identifier}Handles.forEach(WindowsDeleteString);',
        'free($localIdentifier);'
      ];
}
