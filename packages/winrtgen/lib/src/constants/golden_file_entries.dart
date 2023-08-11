// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Set of golden test file entries.
///
/// When adding a new golden test, add a new entry that contains the golden
/// file name and the path of the original file to this set.
const Set<GoldenTestFileEntry> goldenFileEntries = {
  (
    goldenFileName: 'icalendar.golden',
    originalFilePath: 'windows_globalization/lib/src/icalendar.dart'
  ),
  (
    goldenFileName: 'imap_part.golden',
    originalFilePath: 'windows_foundation/lib/src/collections/imap_part.dart'
  ),
  (
    goldenFileName: 'ireference_part.golden',
    originalFilePath: 'windows_foundation/lib/src/ireference_part.dart'
  ),
  (
    goldenFileName: 'ivector_part.golden',
    originalFilePath: 'windows_foundation/lib/src/collections/ivector_part.dart'
  ),
  (
    goldenFileName: 'storagefolder.golden',
    originalFilePath: 'windows_storage/lib/src/storagefolder.dart'
  ),
};

/// Represents a golden test file entry.
typedef GoldenTestFileEntry = ({
  String goldenFileName,
  String originalFilePath
});
