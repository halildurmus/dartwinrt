// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Example is based on:
// https://learn.microsoft.com/en-us/windows/ai/windows-ml/get-started-desktop

import 'dart:convert';
import 'dart:io';

import 'package:win32/win32.dart';
import 'package:windows_ai/windows_ai.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_graphics/windows_graphics.dart';
import 'package:windows_media/windows_media.dart';
import 'package:windows_storage/windows_storage.dart';

Future<List<String>> loadLabels(String filePath) async {
  final file = File(filePath);
  if (!file.existsSync()) throw Exception('Labels.txt not found at $filePath');

  final labels = <String>[];
  final lines =
      file.openRead().transform(utf8.decoder).transform(const LineSplitter());

  await for (final line in lines) {
    // Strip off the index number at the start of the line
    // e.g. '281,tabby, tabby cat'-> 'tabby, tabby cat'
    final formattedLine = line.split(',').skip(1).join(',');
    labels.add(formattedLine);
  }

  return labels;
}

Future<VideoFrame> loadImageFile(String filePath) async {
  try {
    // Open the file
    final file = await StorageFile.getFileFromPathAsync(filePath);
    // Get a stream on it
    final stream = await file?.openAsync(FileAccessMode.read);
    // Create the decoder from the stream
    final decoder = await BitmapDecoder.createAsync(stream);
    // Get the bitmap
    final softwareBitmap = await decoder?.getSoftwareBitmapAsync();
    // Load a VideoFrame from it
    final videoFrame = VideoFrame.createWithSoftwareBitmap(softwareBitmap);
    if (videoFrame == null) throw Exception('Failed to load the image file!');
    return videoFrame;
  } catch (_) {
    throw Exception('Failed to load the image file!');
  }
}

void printResults(List<String> labels, List<double> results) {
  // Find the top 3 probabilities
  final topProbabilities = List<double>.filled(3, 0);
  final topProbabilityLabelIndexes = List<int>.filled(3, 0);

  // SqueezeNet returns a list of 1000 options, with probabilities for each,
  // loop through all
  for (var i = 0; i < results.length; i++) {
    // Is it one of the top 3?
    for (var j = 0; j < 3; j++) {
      if (results[i] > topProbabilities[j]) {
        topProbabilityLabelIndexes[j] = i;
        topProbabilities[j] = results[i];
        break;
      }
    }
  }

  // Display the result
  for (var i = 0; i < 3; i++) {
    final labelIndex = topProbabilityLabelIndexes[i];
    final label = labels[labelIndex];
    final probability = (topProbabilities[i] * 100).toStringAsFixed(2);
    print('$label with confidence of $probability%');
  }
}

void main() async {
  // Replace this path with the path to your dartwinrt directory
  const dartwinrtPath = r'c:\src\dartwinrt';
  const assetsPath =
      '$dartwinrtPath\\packages\\windows_ai\\example\\machinelearning\\assets';
  const labelsPath = '$assetsPath\\Labels.txt';
  const modelPath = '$assetsPath\\SqueezeNet.onnx';
  const imagePath = '$assetsPath\\kitten_224.png';

  // Load the labels
  final labels = await loadLabels(labelsPath);

  // Load the model
  final model = LearningModel.loadFromFilePath(modelPath)!;

  // Load the image
  final imageFrame = await loadImageFile(imagePath);

  // Create a session and binding
  final device = LearningModelDevice.create(LearningModelDeviceKind.default_);
  final session = LearningModelSession.createFromModelOnDevice(model, device);
  final binding = LearningModelBinding.createFromSession(session)
    // Bind the input image
    ..bind('data_0', ImageFeatureValue.createFromVideoFrame(imageFrame))
    // Bind the output
    ..bind('softmaxout_1',
        TensorFloat.createFromShapeArrayAndDataArray([1, 1000, 1, 1], []));

  // Run the model
  final results = session.evaluate(binding, 'RunId')!;

  // Get the output
  final resultTensor = results.outputs['softmaxout_1'];

  if (resultTensor is IInspectable) {
    // Cast it to TensorFloat
    final tensorFloat =
        resultTensor.cast(TensorFloat.fromPtr, IID_ITensorFloat);
    final resultVector = tensorFloat.getAsVectorView();
    printResults(labels, resultVector);
  }
}
