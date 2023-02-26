// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'enums.g.dart';
import 'iknownfolderscamerarollstatics.dart';
import 'iknownfoldersplaylistsstatics.dart';
import 'iknownfolderssavedpicturesstatics.dart';
import 'iknownfoldersstatics.dart';
import 'iknownfoldersstatics2.dart';
import 'iknownfoldersstatics3.dart';
import 'iknownfoldersstatics4.dart';
import 'storagefolder.dart';

/// Provides access to common locations that contain user content. This
/// includes content from a user's local libraries (such as Documents,
/// Pictures, Music, and Videos), HomeGroup, removable devices, and media
/// server devices.
///
/// {@category class}
class KnownFolders extends IInspectable {
  KnownFolders.fromRawPointer(super.ptr);

  static const _className = 'Windows.Storage.KnownFolders';

  // IKnownFoldersCameraRollStatics methods
  static StorageFolder? get cameraRoll {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersCameraRollStatics);
    final object =
        IKnownFoldersCameraRollStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.cameraRoll;
    } finally {
      object.release();
    }
  }

  // IKnownFoldersPlaylistsStatics methods
  static StorageFolder? get playlists {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersPlaylistsStatics);
    final object =
        IKnownFoldersPlaylistsStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.playlists;
    } finally {
      object.release();
    }
  }

  // IKnownFoldersSavedPicturesStatics methods
  static StorageFolder? get savedPictures {
    final activationFactoryPtr = createActivationFactory(
        _className, IID_IKnownFoldersSavedPicturesStatics);
    final object =
        IKnownFoldersSavedPicturesStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.savedPictures;
    } finally {
      object.release();
    }
  }

  // IKnownFoldersStatics methods
  static StorageFolder? get musicLibrary {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics);
    final object = IKnownFoldersStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.musicLibrary;
    } finally {
      object.release();
    }
  }

  static StorageFolder? get picturesLibrary {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics);
    final object = IKnownFoldersStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.picturesLibrary;
    } finally {
      object.release();
    }
  }

  static StorageFolder? get videosLibrary {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics);
    final object = IKnownFoldersStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.videosLibrary;
    } finally {
      object.release();
    }
  }

  static StorageFolder? get documentsLibrary {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics);
    final object = IKnownFoldersStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.documentsLibrary;
    } finally {
      object.release();
    }
  }

  static StorageFolder? get homeGroup {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics);
    final object = IKnownFoldersStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.homeGroup;
    } finally {
      object.release();
    }
  }

  static StorageFolder? get removableDevices {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics);
    final object = IKnownFoldersStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.removableDevices;
    } finally {
      object.release();
    }
  }

  static StorageFolder? get mediaServerDevices {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics);
    final object = IKnownFoldersStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.mediaServerDevices;
    } finally {
      object.release();
    }
  }

  // IKnownFoldersStatics2 methods
  static StorageFolder? get objects3D {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics2);
    final object = IKnownFoldersStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.objects3D;
    } finally {
      object.release();
    }
  }

  static StorageFolder? get appCaptures {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics2);
    final object = IKnownFoldersStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.appCaptures;
    } finally {
      object.release();
    }
  }

  static StorageFolder? get recordedCalls {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics2);
    final object = IKnownFoldersStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.recordedCalls;
    } finally {
      object.release();
    }
  }

  // IKnownFoldersStatics3 methods
  static Future<StorageFolder?> getFolderForUserAsync(
      User? user, KnownFolderId folderId) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics3);
    final object = IKnownFoldersStatics3.fromRawPointer(activationFactoryPtr);

    try {
      return object.getFolderForUserAsync(user, folderId);
    } finally {
      object.release();
    }
  }

  // IKnownFoldersStatics4 methods
  static Future<KnownFoldersAccessStatus> requestAccessAsync(
      KnownFolderId folderId) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics4);
    final object = IKnownFoldersStatics4.fromRawPointer(activationFactoryPtr);

    try {
      return object.requestAccessAsync(folderId);
    } finally {
      object.release();
    }
  }

  static Future<KnownFoldersAccessStatus> requestAccessForUserAsync(
      User? user, KnownFolderId folderId) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics4);
    final object = IKnownFoldersStatics4.fromRawPointer(activationFactoryPtr);

    try {
      return object.requestAccessForUserAsync(user, folderId);
    } finally {
      object.release();
    }
  }

  static Future<StorageFolder?> getFolderAsync(KnownFolderId folderId) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IKnownFoldersStatics4);
    final object = IKnownFoldersStatics4.fromRawPointer(activationFactoryPtr);

    try {
      return object.getFolderAsync(folderId);
    } finally {
      object.release();
    }
  }
}
