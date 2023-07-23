// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_graphics/windows_graphics.dart';
import 'package:windows_storage/windows_storage.dart';
import 'package:windows_ui/windows_ui.dart';

import '../devices/audiodevicecontroller.dart';
import '../devices/camerastreamstate.dart';
import '../devices/mediacapturepausebehavior.dart';
import '../devices/videodevicecontroller.dart';
import '../effects/iaudioeffectdefinition.dart';
import '../effects/ivideoeffectdefinition.dart';
import '../imediaextension.dart';
import '../mediaproperties/imageencodingproperties.dart';
import '../mediaproperties/imediaencodingproperties.dart';
import '../mediaproperties/mediaencodingprofile.dart';
import '../mediaproperties/mediapropertyset.dart';
import '../videoframe.dart';
import 'advancedphotocapture.dart';
import 'core/variablephotosequencecapture.dart';
import 'frames/mediaframereader.dart';
import 'frames/mediaframesource.dart';
import 'frames/multisourcemediaframereader.dart';
import 'imediacapture.dart';
import 'imediacapture2.dart';
import 'imediacapture3.dart';
import 'imediacapture4.dart';
import 'imediacapture5.dart';
import 'imediacapture6.dart';
import 'imediacapture7.dart';
import 'imediacapturestatics.dart';
import 'imediacapturevideopreview.dart';
import 'knownvideoprofile.dart';
import 'lowlagmediarecording.dart';
import 'lowlagphotocapture.dart';
import 'lowlagphotosequencecapture.dart';
import 'mediacaptureinitializationsettings.dart';
import 'mediacapturepauseresult.dart';
import 'mediacapturerelativepanelwatcher.dart';
import 'mediacapturesettings.dart';
import 'mediacapturestopresult.dart';
import 'mediacapturethermalstatus.dart';
import 'mediacapturevideoprofile.dart';
import 'mediastreamtype.dart';
import 'streamingcapturemode.dart';
import 'videorotation.dart';

/// Provides functionality for capturing photos, audio, and videos from a
/// capture device, such as a webcam.
class MediaCapture extends IInspectable
    implements
        IMediaCapture,
        IMediaCaptureVideoPreview,
        IMediaCapture2,
        IClosable,
        IMediaCapture3,
        IMediaCapture4,
        IMediaCapture5,
        IMediaCapture6,
        IMediaCapture7 {
  MediaCapture() : super(activateClass(_className));
  MediaCapture.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Capture.MediaCapture';

  static bool isVideoProfileSupported(String videoDeviceId) =>
      createActivationFactory(IMediaCaptureStatics.fromPtr, _className,
              IID_IMediaCaptureStatics)
          .isVideoProfileSupported(videoDeviceId);

  static List<MediaCaptureVideoProfile?> findAllVideoProfiles(
          String videoDeviceId) =>
      createActivationFactory(IMediaCaptureStatics.fromPtr, _className,
              IID_IMediaCaptureStatics)
          .findAllVideoProfiles(videoDeviceId);

  static List<MediaCaptureVideoProfile?> findConcurrentProfiles(
          String videoDeviceId) =>
      createActivationFactory(IMediaCaptureStatics.fromPtr, _className,
              IID_IMediaCaptureStatics)
          .findConcurrentProfiles(videoDeviceId);

  static List<MediaCaptureVideoProfile?> findKnownVideoProfiles(
          String videoDeviceId, KnownVideoProfile name) =>
      createActivationFactory(IMediaCaptureStatics.fromPtr, _className,
              IID_IMediaCaptureStatics)
          .findKnownVideoProfiles(videoDeviceId, name);

  late final _iMediaCapture = IMediaCapture.from(this);

  @override
  Future<void> initializeAsync() => _iMediaCapture.initializeAsync();

  @override
  Future<void> initializeWithSettingsAsync(
          MediaCaptureInitializationSettings?
              mediaCaptureInitializationSettings) =>
      _iMediaCapture
          .initializeWithSettingsAsync(mediaCaptureInitializationSettings);

  @override
  Future<void> startRecordToStorageFileAsync(
          MediaEncodingProfile? encodingProfile, IStorageFile? file) =>
      _iMediaCapture.startRecordToStorageFileAsync(encodingProfile, file);

  @override
  Future<void> startRecordToStreamAsync(
          MediaEncodingProfile? encodingProfile, IRandomAccessStream? stream) =>
      _iMediaCapture.startRecordToStreamAsync(encodingProfile, stream);

  @override
  Future<void> startRecordToCustomSinkAsync(
          MediaEncodingProfile? encodingProfile,
          IMediaExtension? customMediaSink) =>
      _iMediaCapture.startRecordToCustomSinkAsync(
          encodingProfile, customMediaSink);

  @override
  Future<void> startRecordToCustomSinkIdAsync(
          MediaEncodingProfile? encodingProfile,
          String customSinkActivationId,
          IPropertySet? customSinkSettings) =>
      _iMediaCapture.startRecordToCustomSinkIdAsync(
          encodingProfile, customSinkActivationId, customSinkSettings);

  @override
  Future<void> stopRecordAsync() => _iMediaCapture.stopRecordAsync();

  @override
  Future<void> capturePhotoToStorageFileAsync(
          ImageEncodingProperties? type, IStorageFile? file) =>
      _iMediaCapture.capturePhotoToStorageFileAsync(type, file);

  @override
  Future<void> capturePhotoToStreamAsync(
          ImageEncodingProperties? type, IRandomAccessStream? stream) =>
      _iMediaCapture.capturePhotoToStreamAsync(type, stream);

  @Deprecated(
      "AddEffectAsync might not be available in future versions of Windows. Starting with Windows Threshold, use AddAudioEffectAsync and AddVideoEffectAsync instead")
  @override
  Future<void> addEffectAsync(MediaStreamType mediaStreamType,
          String effectActivationID, IPropertySet? effectSettings) =>
      _iMediaCapture.addEffectAsync(
          mediaStreamType, effectActivationID, effectSettings);

  @override
  Future<void> clearEffectsAsync(MediaStreamType mediaStreamType) =>
      _iMediaCapture.clearEffectsAsync(mediaStreamType);

  @override
  void setEncoderProperty(MediaStreamType mediaStreamType, Guid propertyId,
          Object? propertyValue) =>
      _iMediaCapture.setEncoderProperty(
          mediaStreamType, propertyId, propertyValue);

  @override
  Object? getEncoderProperty(
          MediaStreamType mediaStreamType, Guid propertyId) =>
      _iMediaCapture.getEncoderProperty(mediaStreamType, propertyId);

  @override
  int add_Failed(Pointer<COMObject> errorEventHandler) =>
      _iMediaCapture.add_Failed(errorEventHandler);

  @override
  void remove_Failed(int eventCookie) =>
      _iMediaCapture.remove_Failed(eventCookie);

  @override
  int add_RecordLimitationExceeded(
          Pointer<COMObject> recordLimitationExceededEventHandler) =>
      _iMediaCapture
          .add_RecordLimitationExceeded(recordLimitationExceededEventHandler);

  @override
  void remove_RecordLimitationExceeded(int eventCookie) =>
      _iMediaCapture.remove_RecordLimitationExceeded(eventCookie);

  @override
  MediaCaptureSettings? get mediaCaptureSettings =>
      _iMediaCapture.mediaCaptureSettings;

  @override
  AudioDeviceController? get audioDeviceController =>
      _iMediaCapture.audioDeviceController;

  @override
  VideoDeviceController? get videoDeviceController =>
      _iMediaCapture.videoDeviceController;

  @override
  void setPreviewMirroring(bool value) =>
      _iMediaCapture.setPreviewMirroring(value);

  @override
  bool getPreviewMirroring() => _iMediaCapture.getPreviewMirroring();

  @override
  void setPreviewRotation(VideoRotation value) =>
      _iMediaCapture.setPreviewRotation(value);

  @override
  VideoRotation getPreviewRotation() => _iMediaCapture.getPreviewRotation();

  @override
  void setRecordRotation(VideoRotation value) =>
      _iMediaCapture.setRecordRotation(value);

  @override
  VideoRotation getRecordRotation() => _iMediaCapture.getRecordRotation();

  late final _iMediaCaptureVideoPreview = IMediaCaptureVideoPreview.from(this);

  @override
  Future<void> startPreviewAsync() =>
      _iMediaCaptureVideoPreview.startPreviewAsync();

  @override
  Future<void> startPreviewToCustomSinkAsync(
          MediaEncodingProfile? encodingProfile,
          IMediaExtension? customMediaSink) =>
      _iMediaCaptureVideoPreview.startPreviewToCustomSinkAsync(
          encodingProfile, customMediaSink);

  @override
  Future<void> startPreviewToCustomSinkIdAsync(
          MediaEncodingProfile? encodingProfile,
          String customSinkActivationId,
          IPropertySet? customSinkSettings) =>
      _iMediaCaptureVideoPreview.startPreviewToCustomSinkIdAsync(
          encodingProfile, customSinkActivationId, customSinkSettings);

  @override
  Future<void> stopPreviewAsync() =>
      _iMediaCaptureVideoPreview.stopPreviewAsync();

  late final _iMediaCapture2 = IMediaCapture2.from(this);

  @override
  Future<LowLagMediaRecording?> prepareLowLagRecordToStorageFileAsync(
          MediaEncodingProfile? encodingProfile, IStorageFile? file) =>
      _iMediaCapture2.prepareLowLagRecordToStorageFileAsync(
          encodingProfile, file);

  @override
  Future<LowLagMediaRecording?> prepareLowLagRecordToStreamAsync(
          MediaEncodingProfile? encodingProfile, IRandomAccessStream? stream) =>
      _iMediaCapture2.prepareLowLagRecordToStreamAsync(encodingProfile, stream);

  @override
  Future<LowLagMediaRecording?> prepareLowLagRecordToCustomSinkAsync(
          MediaEncodingProfile? encodingProfile,
          IMediaExtension? customMediaSink) =>
      _iMediaCapture2.prepareLowLagRecordToCustomSinkAsync(
          encodingProfile, customMediaSink);

  @override
  Future<LowLagMediaRecording?> prepareLowLagRecordToCustomSinkIdAsync(
          MediaEncodingProfile? encodingProfile,
          String customSinkActivationId,
          IPropertySet? customSinkSettings) =>
      _iMediaCapture2.prepareLowLagRecordToCustomSinkIdAsync(
          encodingProfile, customSinkActivationId, customSinkSettings);

  @override
  Future<LowLagPhotoCapture?> prepareLowLagPhotoCaptureAsync(
          ImageEncodingProperties? type) =>
      _iMediaCapture2.prepareLowLagPhotoCaptureAsync(type);

  @override
  Future<LowLagPhotoSequenceCapture?> prepareLowLagPhotoSequenceCaptureAsync(
          ImageEncodingProperties? type) =>
      _iMediaCapture2.prepareLowLagPhotoSequenceCaptureAsync(type);

  @override
  Future<void> setEncodingPropertiesAsync(
          MediaStreamType mediaStreamType,
          IMediaEncodingProperties? mediaEncodingProperties,
          MediaPropertySet? encoderProperties) =>
      _iMediaCapture2.setEncodingPropertiesAsync(
          mediaStreamType, mediaEncodingProperties, encoderProperties);

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  late final _iMediaCapture3 = IMediaCapture3.from(this);

  @override
  Future<VariablePhotoSequenceCapture?>
      prepareVariablePhotoSequenceCaptureAsync(ImageEncodingProperties? type) =>
          _iMediaCapture3.prepareVariablePhotoSequenceCaptureAsync(type);

  @override
  int add_FocusChanged(Pointer<COMObject> handler) =>
      _iMediaCapture3.add_FocusChanged(handler);

  @override
  void remove_FocusChanged(int token) =>
      _iMediaCapture3.remove_FocusChanged(token);

  @override
  int add_PhotoConfirmationCaptured(Pointer<COMObject> handler) =>
      _iMediaCapture3.add_PhotoConfirmationCaptured(handler);

  @override
  void remove_PhotoConfirmationCaptured(int token) =>
      _iMediaCapture3.remove_PhotoConfirmationCaptured(token);

  late final _iMediaCapture4 = IMediaCapture4.from(this);

  @override
  Future<IMediaExtension?> addAudioEffectAsync(
          IAudioEffectDefinition? definition) =>
      _iMediaCapture4.addAudioEffectAsync(definition);

  @override
  Future<IMediaExtension?> addVideoEffectAsync(
          IVideoEffectDefinition? definition,
          MediaStreamType mediaStreamType) =>
      _iMediaCapture4.addVideoEffectAsync(definition, mediaStreamType);

  @override
  Future<void> pauseRecordAsync(MediaCapturePauseBehavior behavior) =>
      _iMediaCapture4.pauseRecordAsync(behavior);

  @override
  Future<void> resumeRecordAsync() => _iMediaCapture4.resumeRecordAsync();

  @override
  int add_CameraStreamStateChanged(Pointer<COMObject> handler) =>
      _iMediaCapture4.add_CameraStreamStateChanged(handler);

  @override
  void remove_CameraStreamStateChanged(int token) =>
      _iMediaCapture4.remove_CameraStreamStateChanged(token);

  @override
  CameraStreamState get cameraStreamState => _iMediaCapture4.cameraStreamState;

  @override
  Future<VideoFrame?> getPreviewFrameAsync() =>
      _iMediaCapture4.getPreviewFrameAsync();

  @override
  Future<VideoFrame?> getPreviewFrameCopyAsync(VideoFrame? destination) =>
      _iMediaCapture4.getPreviewFrameCopyAsync(destination);

  @override
  int add_ThermalStatusChanged(Pointer<COMObject> handler) =>
      _iMediaCapture4.add_ThermalStatusChanged(handler);

  @override
  void remove_ThermalStatusChanged(int token) =>
      _iMediaCapture4.remove_ThermalStatusChanged(token);

  @override
  MediaCaptureThermalStatus get thermalStatus => _iMediaCapture4.thermalStatus;

  @override
  Future<AdvancedPhotoCapture?> prepareAdvancedPhotoCaptureAsync(
          ImageEncodingProperties? encodingProperties) =>
      _iMediaCapture4.prepareAdvancedPhotoCaptureAsync(encodingProperties);

  late final _iMediaCapture5 = IMediaCapture5.from(this);

  @override
  Future<void> removeEffectAsync(IMediaExtension? effect) =>
      _iMediaCapture5.removeEffectAsync(effect);

  @override
  Future<MediaCapturePauseResult?> pauseRecordWithResultAsync(
          MediaCapturePauseBehavior behavior) =>
      _iMediaCapture5.pauseRecordWithResultAsync(behavior);

  @override
  Future<MediaCaptureStopResult?> stopRecordWithResultAsync() =>
      _iMediaCapture5.stopRecordWithResultAsync();

  @override
  Map<String, MediaFrameSource?>? get frameSources =>
      _iMediaCapture5.frameSources;

  @override
  Future<MediaFrameReader?> createFrameReaderAsync(
          MediaFrameSource? inputSource) =>
      _iMediaCapture5.createFrameReaderAsync(inputSource);

  @override
  Future<MediaFrameReader?> createFrameReaderWithSubtypeAsync(
          MediaFrameSource? inputSource, String outputSubtype) =>
      _iMediaCapture5.createFrameReaderWithSubtypeAsync(
          inputSource, outputSubtype);

  @override
  Future<MediaFrameReader?> createFrameReaderWithSubtypeAndSizeAsync(
          MediaFrameSource? inputSource,
          String outputSubtype,
          BitmapSize outputSize) =>
      _iMediaCapture5.createFrameReaderWithSubtypeAndSizeAsync(
          inputSource, outputSubtype, outputSize);

  late final _iMediaCapture6 = IMediaCapture6.from(this);

  @override
  int add_CaptureDeviceExclusiveControlStatusChanged(
          Pointer<COMObject> handler) =>
      _iMediaCapture6.add_CaptureDeviceExclusiveControlStatusChanged(handler);

  @override
  void remove_CaptureDeviceExclusiveControlStatusChanged(int token) =>
      _iMediaCapture6.remove_CaptureDeviceExclusiveControlStatusChanged(token);

  @override
  Future<MultiSourceMediaFrameReader?> createMultiSourceFrameReaderAsync(
          IIterable<MediaFrameSource?>? inputSources) =>
      _iMediaCapture6.createMultiSourceFrameReaderAsync(inputSources);

  late final _iMediaCapture7 = IMediaCapture7.from(this);

  @override
  MediaCaptureRelativePanelWatcher? createRelativePanelWatcher(
          StreamingCaptureMode captureMode, DisplayRegion? displayRegion) =>
      _iMediaCapture7.createRelativePanelWatcher(captureMode, displayRegion);
}
