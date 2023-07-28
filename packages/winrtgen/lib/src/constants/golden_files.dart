// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Map of golden file names to the path of the file that contains the original
/// content.
///
/// When adding a new golden test, add the golden file name and the path of the
/// original file to this map.
const goldenFiles = <String, String>{
  'icalendar.golden': 'windows_globalization/lib/src/icalendar.dart',
  'imap_part.golden': 'windows_foundation/lib/src/collections/imap_part.dart',
  'ireference_part.golden': 'windows_foundation/lib/src/ireference_part.dart',
  'ivector_part.golden':
      'windows_foundation/lib/src/collections/ivector_part.dart',
  'storagefolder.golden': 'windows_storage/lib/src/storagefolder.dart'
};
