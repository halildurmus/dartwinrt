// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Exposes internally used classes, enums, native structs, and helper
/// functions.
///
/// Note: This library is not intended for direct use by end users. Its purpose
/// is to support other packages within this repository. Consequently, the API
/// is not guaranteed to remain stable, and breaking changes may be introduced
/// without a major version bump.
library internal;

export 'src/asyncstatus.dart';
export 'src/iasyncaction.dart';
export 'src/iasyncinfo.dart';
export 'src/iasyncoperation.dart';
export 'src/internal/extensions/extensions.dart';
export 'src/internal/helpers.dart';
export 'src/internal/hstring.dart';
export 'src/internal/iids.dart';
export 'src/internal/native_structs.g.dart';
export 'src/ipropertyvalue.dart';
export 'src/ireference.dart';
export 'src/propertytype.dart';
export 'src/propertyvalue.dart';
