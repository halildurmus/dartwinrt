// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import '../capture/mediacapturedeviceexclusivecontrolreleasemode.dart';
import '../capture/mediastreamtype.dart';
import '../capture/powerlinefrequency.dart';
import '../mediaproperties/imediaencodingproperties.dart';
import 'advancedphotocontrol.dart';
import 'cameraocclusioninfo.dart';
import 'captureuse.dart';
import 'core/variablephotosequencecontroller.dart';
import 'digitalwindowcontrol.dart';
import 'exposurecompensationcontrol.dart';
import 'exposurecontrol.dart';
import 'exposurepriorityvideocontrol.dart';
import 'flashcontrol.dart';
import 'focuscontrol.dart';
import 'hdrvideocontrol.dart';
import 'iadvancedvideocapturedevicecontroller.dart';
import 'iadvancedvideocapturedevicecontroller10.dart';
import 'iadvancedvideocapturedevicecontroller11.dart';
import 'iadvancedvideocapturedevicecontroller2.dart';
import 'iadvancedvideocapturedevicecontroller3.dart';
import 'iadvancedvideocapturedevicecontroller4.dart';
import 'iadvancedvideocapturedevicecontroller5.dart';
import 'iadvancedvideocapturedevicecontroller6.dart';
import 'iadvancedvideocapturedevicecontroller7.dart';
import 'iadvancedvideocapturedevicecontroller8.dart';
import 'iadvancedvideocapturedevicecontroller9.dart';
import 'imediadevicecontroller.dart';
import 'infraredtorchcontrol.dart';
import 'isospeedcontrol.dart';
import 'ivideodevicecontroller.dart';
import 'lowlagphotocontrol.dart';
import 'lowlagphotosequencecontrol.dart';
import 'mediacaptureoptimization.dart';
import 'mediadevicecontrol.dart';
import 'opticalimagestabilizationcontrol.dart';
import 'panelbasedoptimizationcontrol.dart';
import 'photoconfirmationcontrol.dart';
import 'regionsofinterestcontrol.dart';
import 'scenemodecontrol.dart';
import 'torchcontrol.dart';
import 'videodevicecontrollergetdevicepropertyresult.dart';
import 'videodevicecontrollersetdevicepropertystatus.dart';
import 'videotemporaldenoisingcontrol.dart';
import 'whitebalancecontrol.dart';
import 'zoomcontrol.dart';

/// Controls device settings on the camera.
class VideoDeviceController extends IInspectable
    implements
        IVideoDeviceController,
        IMediaDeviceController,
        IAdvancedVideoCaptureDeviceController,
        IAdvancedVideoCaptureDeviceController2,
        IAdvancedVideoCaptureDeviceController3,
        IAdvancedVideoCaptureDeviceController4,
        IAdvancedVideoCaptureDeviceController5,
        IAdvancedVideoCaptureDeviceController6,
        IAdvancedVideoCaptureDeviceController7,
        IAdvancedVideoCaptureDeviceController8,
        IAdvancedVideoCaptureDeviceController9,
        IAdvancedVideoCaptureDeviceController10,
        IAdvancedVideoCaptureDeviceController11 {
  VideoDeviceController.fromPtr(super.ptr);

  late final _iVideoDeviceController = IVideoDeviceController.from(this);

  @override
  MediaDeviceControl? get brightness => _iVideoDeviceController.brightness;

  @override
  MediaDeviceControl? get contrast => _iVideoDeviceController.contrast;

  @override
  MediaDeviceControl? get hue => _iVideoDeviceController.hue;

  @override
  MediaDeviceControl? get whiteBalance => _iVideoDeviceController.whiteBalance;

  @override
  MediaDeviceControl? get backlightCompensation =>
      _iVideoDeviceController.backlightCompensation;

  @override
  MediaDeviceControl? get pan => _iVideoDeviceController.pan;

  @override
  MediaDeviceControl? get tilt => _iVideoDeviceController.tilt;

  @override
  MediaDeviceControl? get zoom => _iVideoDeviceController.zoom;

  @override
  MediaDeviceControl? get roll => _iVideoDeviceController.roll;

  @override
  MediaDeviceControl? get exposure => _iVideoDeviceController.exposure;

  @override
  MediaDeviceControl? get focus => _iVideoDeviceController.focus;

  @override
  bool trySetPowerlineFrequency(PowerlineFrequency value) =>
      _iVideoDeviceController.trySetPowerlineFrequency(value);

  @override
  (bool, {PowerlineFrequency value}) tryGetPowerlineFrequency() =>
      _iVideoDeviceController.tryGetPowerlineFrequency();

  late final _iMediaDeviceController = IMediaDeviceController.from(this);

  @override
  List<IMediaEncodingProperties?> getAvailableMediaStreamProperties(
          MediaStreamType mediaStreamType) =>
      _iMediaDeviceController
          .getAvailableMediaStreamProperties(mediaStreamType);

  @override
  IMediaEncodingProperties? getMediaStreamProperties(
          MediaStreamType mediaStreamType) =>
      _iMediaDeviceController.getMediaStreamProperties(mediaStreamType);

  @override
  Future<void> setMediaStreamPropertiesAsync(MediaStreamType mediaStreamType,
          IMediaEncodingProperties? mediaEncodingProperties) =>
      _iMediaDeviceController.setMediaStreamPropertiesAsync(
          mediaStreamType, mediaEncodingProperties);

  late final _iAdvancedVideoCaptureDeviceController =
      IAdvancedVideoCaptureDeviceController.from(this);

  @override
  void setDeviceProperty(String propertyId, Object? propertyValue) =>
      _iAdvancedVideoCaptureDeviceController.setDeviceProperty(
          propertyId, propertyValue);

  @override
  Object? getDeviceProperty(String propertyId) =>
      _iAdvancedVideoCaptureDeviceController.getDeviceProperty(propertyId);

  late final _iAdvancedVideoCaptureDeviceController2 =
      IAdvancedVideoCaptureDeviceController2.from(this);

  @override
  LowLagPhotoSequenceControl? get lowLagPhotoSequence =>
      _iAdvancedVideoCaptureDeviceController2.lowLagPhotoSequence;

  @override
  LowLagPhotoControl? get lowLagPhoto =>
      _iAdvancedVideoCaptureDeviceController2.lowLagPhoto;

  @override
  SceneModeControl? get sceneModeControl =>
      _iAdvancedVideoCaptureDeviceController2.sceneModeControl;

  @override
  TorchControl? get torchControl =>
      _iAdvancedVideoCaptureDeviceController2.torchControl;

  @override
  FlashControl? get flashControl =>
      _iAdvancedVideoCaptureDeviceController2.flashControl;

  @override
  WhiteBalanceControl? get whiteBalanceControl =>
      _iAdvancedVideoCaptureDeviceController2.whiteBalanceControl;

  @override
  ExposureControl? get exposureControl =>
      _iAdvancedVideoCaptureDeviceController2.exposureControl;

  @override
  FocusControl? get focusControl =>
      _iAdvancedVideoCaptureDeviceController2.focusControl;

  @override
  ExposureCompensationControl? get exposureCompensationControl =>
      _iAdvancedVideoCaptureDeviceController2.exposureCompensationControl;

  @override
  IsoSpeedControl? get isoSpeedControl =>
      _iAdvancedVideoCaptureDeviceController2.isoSpeedControl;

  @override
  RegionsOfInterestControl? get regionsOfInterestControl =>
      _iAdvancedVideoCaptureDeviceController2.regionsOfInterestControl;

  @override
  CaptureUse get primaryUse =>
      _iAdvancedVideoCaptureDeviceController2.primaryUse;

  @override
  set primaryUse(CaptureUse value) =>
      _iAdvancedVideoCaptureDeviceController2.primaryUse = value;

  late final _iAdvancedVideoCaptureDeviceController3 =
      IAdvancedVideoCaptureDeviceController3.from(this);

  @override
  VariablePhotoSequenceController? get variablePhotoSequenceController =>
      _iAdvancedVideoCaptureDeviceController3.variablePhotoSequenceController;

  @override
  PhotoConfirmationControl? get photoConfirmationControl =>
      _iAdvancedVideoCaptureDeviceController3.photoConfirmationControl;

  @override
  ZoomControl? get zoomControl =>
      _iAdvancedVideoCaptureDeviceController3.zoomControl;

  late final _iAdvancedVideoCaptureDeviceController4 =
      IAdvancedVideoCaptureDeviceController4.from(this);

  @override
  ExposurePriorityVideoControl? get exposurePriorityVideoControl =>
      _iAdvancedVideoCaptureDeviceController4.exposurePriorityVideoControl;

  @override
  MediaCaptureOptimization get desiredOptimization =>
      _iAdvancedVideoCaptureDeviceController4.desiredOptimization;

  @override
  set desiredOptimization(MediaCaptureOptimization value) =>
      _iAdvancedVideoCaptureDeviceController4.desiredOptimization = value;

  @override
  HdrVideoControl? get hdrVideoControl =>
      _iAdvancedVideoCaptureDeviceController4.hdrVideoControl;

  @override
  OpticalImageStabilizationControl? get opticalImageStabilizationControl =>
      _iAdvancedVideoCaptureDeviceController4.opticalImageStabilizationControl;

  @override
  AdvancedPhotoControl? get advancedPhotoControl =>
      _iAdvancedVideoCaptureDeviceController4.advancedPhotoControl;

  late final _iAdvancedVideoCaptureDeviceController5 =
      IAdvancedVideoCaptureDeviceController5.from(this);

  @override
  String get id => _iAdvancedVideoCaptureDeviceController5.id;

  @override
  VideoDeviceControllerGetDevicePropertyResult? getDevicePropertyById(
          String propertyId, int? maxPropertyValueSize) =>
      _iAdvancedVideoCaptureDeviceController5.getDevicePropertyById(
          propertyId, maxPropertyValueSize);

  @override
  VideoDeviceControllerSetDevicePropertyStatus setDevicePropertyById(
          String propertyId, Object? propertyValue) =>
      _iAdvancedVideoCaptureDeviceController5.setDevicePropertyById(
          propertyId, propertyValue);

  @override
  VideoDeviceControllerGetDevicePropertyResult? getDevicePropertyByExtendedId(
          List<int> extendedPropertyId, int? maxPropertyValueSize) =>
      _iAdvancedVideoCaptureDeviceController5.getDevicePropertyByExtendedId(
          extendedPropertyId, maxPropertyValueSize);

  @override
  VideoDeviceControllerSetDevicePropertyStatus setDevicePropertyByExtendedId(
          List<int> extendedPropertyId, List<int> propertyValue) =>
      _iAdvancedVideoCaptureDeviceController5.setDevicePropertyByExtendedId(
          extendedPropertyId, propertyValue);

  late final _iAdvancedVideoCaptureDeviceController6 =
      IAdvancedVideoCaptureDeviceController6.from(this);

  @override
  VideoTemporalDenoisingControl? get videoTemporalDenoisingControl =>
      _iAdvancedVideoCaptureDeviceController6.videoTemporalDenoisingControl;

  late final _iAdvancedVideoCaptureDeviceController7 =
      IAdvancedVideoCaptureDeviceController7.from(this);

  @override
  InfraredTorchControl? get infraredTorchControl =>
      _iAdvancedVideoCaptureDeviceController7.infraredTorchControl;

  late final _iAdvancedVideoCaptureDeviceController8 =
      IAdvancedVideoCaptureDeviceController8.from(this);

  @override
  PanelBasedOptimizationControl? get panelBasedOptimizationControl =>
      _iAdvancedVideoCaptureDeviceController8.panelBasedOptimizationControl;

  late final _iAdvancedVideoCaptureDeviceController9 =
      IAdvancedVideoCaptureDeviceController9.from(this);

  @override
  DigitalWindowControl? get digitalWindowControl =>
      _iAdvancedVideoCaptureDeviceController9.digitalWindowControl;

  late final _iAdvancedVideoCaptureDeviceController10 =
      IAdvancedVideoCaptureDeviceController10.from(this);

  @override
  CameraOcclusionInfo? get cameraOcclusionInfo =>
      _iAdvancedVideoCaptureDeviceController10.cameraOcclusionInfo;

  late final _iAdvancedVideoCaptureDeviceController11 =
      IAdvancedVideoCaptureDeviceController11.from(this);

  @override
  bool tryAcquireExclusiveControl(String deviceId,
          MediaCaptureDeviceExclusiveControlReleaseMode mode) =>
      _iAdvancedVideoCaptureDeviceController11.tryAcquireExclusiveControl(
          deviceId, mode);
}
