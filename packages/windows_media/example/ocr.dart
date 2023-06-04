// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_graphics/windows_graphics.dart';
import 'package:windows_media/windows_media.dart';
import 'package:windows_storage/windows_storage.dart';

Future<StorageFile> pickFile() async {
  final picker = FileOpenPicker()
    ..fileTypeFilter.replaceAll(['.bmp', '.jpg', '.jpeg', '.png'])
    ..suggestedStartLocation = PickerLocationId.desktop;

  InitializeWithWindow.initialize(picker);

  final pickedFile = await picker.pickSingleFileAsync();
  if (pickedFile == null) throw Exception('No file selected');
  return pickedFile;
}

Future<String> recognizeText(StorageFile file) async {
  // Open a random-access stream over the file
  final stream = await file.openAsync(FileAccessMode.read);

  try {
    if (stream != null) {
      // Create a BitmapDecoder from the stream
      final decoder = await BitmapDecoder.createAsync(stream);
      if (decoder != null) {
        // Get the SoftwareBitmap representation of the file
        final softwareBitmap = await decoder.getSoftwareBitmapAsync();
        // Create an OcrEngine from the user's preferred languages
        final ocrEngine = OcrEngine.tryCreateFromUserProfileLanguages();
        if (ocrEngine != null) {
          // Recognize the text in the image
          final ocrResult = await ocrEngine.recognizeAsync(softwareBitmap);
          if (ocrResult != null) return ocrResult.text;
        }
      }
    }
  } finally {
    // Close the stream once we're done with it
    stream?.close();
  }

  throw Exception('Unable to recognize text');
}

void main() async {
  final pickedFile = await pickFile();
  final text = await recognizeText(pickedFile);
  print('Recognized text: $text');
}
