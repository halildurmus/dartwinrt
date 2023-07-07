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
import 'package:windows_storage/windows_storage.dart';

import 'appinstallerinfo.dart';
import 'core/applistentry.dart';
import 'findrelatedpackagesoptions.dart';
import 'ipackage.dart';
import 'ipackage2.dart';
import 'ipackage3.dart';
import 'ipackage4.dart';
import 'ipackage5.dart';
import 'ipackage6.dart';
import 'ipackage7.dart';
import 'ipackage8.dart';
import 'ipackage9.dart';
import 'ipackagestatics.dart';
import 'ipackagewithmetadata.dart';
import 'packagecontentgroup.dart';
import 'packageid.dart';
import 'packagesignaturekind.dart';
import 'packagestatus.dart';
import 'packageupdateavailabilityresult.dart';

/// Provides information about a package.
class Package extends IInspectable
    implements
        IPackage,
        IPackage2,
        IPackage3,
        IPackageWithMetadata,
        IPackage4,
        IPackage5,
        IPackage6,
        IPackage7,
        IPackage8,
        IPackage9 {
  Package.fromPtr(super.ptr);

  static const _className = 'Windows.ApplicationModel.Package';

  static Package? get current => createActivationFactory(
          IPackageStatics.fromPtr, _className, IID_IPackageStatics)
      .current;

  late final _iPackage = IPackage.from(this);

  @override
  PackageId? get id => _iPackage.id;

  @override
  StorageFolder? get installedLocation => _iPackage.installedLocation;

  @override
  bool get isFramework => _iPackage.isFramework;

  @override
  List<Package?>? get dependencies => _iPackage.dependencies;

  late final _iPackage2 = IPackage2.from(this);

  @override
  String get displayName => _iPackage2.displayName;

  @override
  String get publisherDisplayName => _iPackage2.publisherDisplayName;

  @override
  String get description => _iPackage2.description;

  @override
  Uri? get logo => _iPackage2.logo;

  @override
  bool get isResourcePackage => _iPackage2.isResourcePackage;

  @override
  bool get isBundle => _iPackage2.isBundle;

  @override
  bool get isDevelopmentMode => _iPackage2.isDevelopmentMode;

  late final _iPackage3 = IPackage3.from(this);

  @override
  PackageStatus? get status => _iPackage3.status;

  @override
  DateTime get installedDate => _iPackage3.installedDate;

  @override
  Future<List<AppListEntry?>> getAppListEntriesAsync() =>
      _iPackage3.getAppListEntriesAsync();

  late final _iPackageWithMetadata = IPackageWithMetadata.from(this);

  @override
  DateTime get installDate => _iPackageWithMetadata.installDate;

  @override
  String getThumbnailToken() => _iPackageWithMetadata.getThumbnailToken();

  @Deprecated(
      "Launch may be altered or unavailable for releases after Windows 8.1. Instead, for SmartCardTrigger scenarios use SmartCardTriggerDetails.TryLaunchSelfAsync")
  @override
  void launch(String parameters) => _iPackageWithMetadata.launch(parameters);

  late final _iPackage4 = IPackage4.from(this);

  @override
  PackageSignatureKind get signatureKind => _iPackage4.signatureKind;

  @override
  bool get isOptional => _iPackage4.isOptional;

  @override
  Future<bool> verifyContentIntegrityAsync() =>
      _iPackage4.verifyContentIntegrityAsync();

  late final _iPackage5 = IPackage5.from(this);

  @override
  Future<IVector<PackageContentGroup?>> getContentGroupsAsync() =>
      _iPackage5.getContentGroupsAsync();

  @override
  Future<PackageContentGroup?> getContentGroupAsync(String name) =>
      _iPackage5.getContentGroupAsync(name);

  @override
  Future<IVector<PackageContentGroup?>> stageContentGroupsAsync(
          IIterable<String>? names) =>
      _iPackage5.stageContentGroupsAsync(names);

  @override
  Future<IVector<PackageContentGroup?>> stageContentGroupsWithPriorityAsync(
          IIterable<String>? names, bool moveToHeadOfQueue) =>
      _iPackage5.stageContentGroupsWithPriorityAsync(names, moveToHeadOfQueue);

  @override
  Future<bool> setInUseAsync(bool inUse) => _iPackage5.setInUseAsync(inUse);

  late final _iPackage6 = IPackage6.from(this);

  @override
  AppInstallerInfo? getAppInstallerInfo() => _iPackage6.getAppInstallerInfo();

  @override
  Future<PackageUpdateAvailabilityResult?> checkUpdateAvailabilityAsync() =>
      _iPackage6.checkUpdateAvailabilityAsync();

  late final _iPackage7 = IPackage7.from(this);

  @override
  StorageFolder? get mutableLocation => _iPackage7.mutableLocation;

  @override
  StorageFolder? get effectiveLocation => _iPackage7.effectiveLocation;

  late final _iPackage8 = IPackage8.from(this);

  @override
  StorageFolder? get effectiveExternalLocation =>
      _iPackage8.effectiveExternalLocation;

  @override
  StorageFolder? get machineExternalLocation =>
      _iPackage8.machineExternalLocation;

  @override
  StorageFolder? get userExternalLocation => _iPackage8.userExternalLocation;

  @override
  String get installedPath => _iPackage8.installedPath;

  @override
  String get mutablePath => _iPackage8.mutablePath;

  @override
  String get effectivePath => _iPackage8.effectivePath;

  @override
  String get effectiveExternalPath => _iPackage8.effectiveExternalPath;

  @override
  String get machineExternalPath => _iPackage8.machineExternalPath;

  @override
  String get userExternalPath => _iPackage8.userExternalPath;

  @override
  RandomAccessStreamReference? getLogoAsRandomAccessStreamReference(
          Size size) =>
      _iPackage8.getLogoAsRandomAccessStreamReference(size);

  @override
  List<AppListEntry?> getAppListEntries() => _iPackage8.getAppListEntries();

  @override
  bool get isStub => _iPackage8.isStub;

  late final _iPackage9 = IPackage9.from(this);

  @override
  IVector<Package?> findRelatedPackages(FindRelatedPackagesOptions? options) =>
      _iPackage9.findRelatedPackages(options);

  @override
  String get sourceUriSchemeName => _iPackage9.sourceUriSchemeName;
}
