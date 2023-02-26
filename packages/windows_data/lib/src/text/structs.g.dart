// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

/// Identifies a sub-string of a source text string. Your app can use this
/// structure to obtain the segment of your provided text that is identified
/// by AlternateWordForm, SelectableWordSegment, WordSegment, or
/// SemanticTextQuery.
///
/// {@category struct}
class TextSegment extends Struct {
  @Uint32()
  external int startPosition;

  @Uint32()
  external int length;
}
