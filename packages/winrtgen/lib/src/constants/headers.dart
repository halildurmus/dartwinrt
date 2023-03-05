// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

const copyrightHeader = '''
// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
''';

const classFileHeader = '''
$copyrightHeader

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import
''';

const enumFileHeader = '''
$copyrightHeader

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

''';

const exportsFileHeader = '''
$copyrightHeader

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

''';

const nativeStructsFileHeader = '''
$copyrightHeader

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';
''';

const structFileHeader = '''
$copyrightHeader

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

''';
