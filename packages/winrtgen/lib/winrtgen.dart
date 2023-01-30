// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Provides functionality to generate Windows Runtime APIs from Windows
/// Metadata (WinMD) files.
library winrtgen;

export 'src/constants/constants.dart';
export 'src/extensions.dart';
export 'src/models/load_json.dart';
export 'src/models/namespace_group.dart';
export 'src/models/winrt_getter_return_type.dart';
export 'src/models/winrt_method_return_type.dart';
export 'src/models/winrt_parameter_type.dart';
export 'src/projections/type.dart';
export 'src/projections/types/types.dart';
export 'src/projections/winrt_class.dart';
export 'src/projections/winrt_enum.dart';
export 'src/projections/winrt_get_property.dart';
export 'src/projections/winrt_interface.dart';
export 'src/projections/winrt_method.dart';
export 'src/projections/winrt_parameter.dart';
export 'src/projections/winrt_property.dart';
export 'src/projections/winrt_set_property.dart';
export 'src/projections/winrt_struct.dart';
export 'src/utils.dart';
