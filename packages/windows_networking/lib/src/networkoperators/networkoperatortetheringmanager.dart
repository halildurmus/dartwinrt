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

import '../connectivity/connectionprofile.dart';
import '../connectivity/networkadapter.dart';
import 'inetworkoperatortetheringclientmanager.dart';
import 'inetworkoperatortetheringmanager.dart';
import 'inetworkoperatortetheringmanagerstatics.dart';
import 'inetworkoperatortetheringmanagerstatics2.dart';
import 'inetworkoperatortetheringmanagerstatics3.dart';
import 'inetworkoperatortetheringmanagerstatics4.dart';
import 'networkoperatortetheringaccesspointconfiguration.dart';
import 'networkoperatortetheringclient.dart';
import 'networkoperatortetheringoperationresult.dart';
import 'tetheringcapability.dart';
import 'tetheringoperationalstate.dart';

/// This interface exposes the methods and properties used to control and
/// configure tethering capabilities for a specific network account.
class NetworkOperatorTetheringManager extends IInspectable
    implements
        INetworkOperatorTetheringManager,
        INetworkOperatorTetheringClientManager {
  NetworkOperatorTetheringManager.fromPtr(super.ptr);

  static const _className =
      'Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager';

  static TetheringCapability getTetheringCapability(String networkAccountId) =>
      createActivationFactory(INetworkOperatorTetheringManagerStatics.fromPtr,
              _className, IID_INetworkOperatorTetheringManagerStatics)
          .getTetheringCapability(networkAccountId);

  static NetworkOperatorTetheringManager? createFromNetworkAccountId(
          String networkAccountId) =>
      createActivationFactory(INetworkOperatorTetheringManagerStatics.fromPtr,
              _className, IID_INetworkOperatorTetheringManagerStatics)
          .createFromNetworkAccountId(networkAccountId);

  static TetheringCapability getTetheringCapabilityFromConnectionProfile(
          ConnectionProfile? profile) =>
      createActivationFactory(INetworkOperatorTetheringManagerStatics2.fromPtr,
              _className, IID_INetworkOperatorTetheringManagerStatics2)
          .getTetheringCapabilityFromConnectionProfile(profile);

  static NetworkOperatorTetheringManager? createFromConnectionProfile(
          ConnectionProfile? profile) =>
      createActivationFactory(INetworkOperatorTetheringManagerStatics2.fromPtr,
              _className, IID_INetworkOperatorTetheringManagerStatics2)
          .createFromConnectionProfile(profile);

  static NetworkOperatorTetheringManager?
      createFromConnectionProfileWithTargetAdapter(
              ConnectionProfile? profile, NetworkAdapter? adapter) =>
          createActivationFactory(
                  INetworkOperatorTetheringManagerStatics3.fromPtr,
                  _className,
                  IID_INetworkOperatorTetheringManagerStatics3)
              .createFromConnectionProfileWithTargetAdapter(profile, adapter);

  static bool isNoConnectionsTimeoutEnabled() => createActivationFactory(
          INetworkOperatorTetheringManagerStatics4.fromPtr,
          _className,
          IID_INetworkOperatorTetheringManagerStatics4)
      .isNoConnectionsTimeoutEnabled();

  static void enableNoConnectionsTimeout() => createActivationFactory(
          INetworkOperatorTetheringManagerStatics4.fromPtr,
          _className,
          IID_INetworkOperatorTetheringManagerStatics4)
      .enableNoConnectionsTimeout();

  static Future<void> enableNoConnectionsTimeoutAsync() =>
      createActivationFactory(INetworkOperatorTetheringManagerStatics4.fromPtr,
              _className, IID_INetworkOperatorTetheringManagerStatics4)
          .enableNoConnectionsTimeoutAsync();

  static void disableNoConnectionsTimeout() => createActivationFactory(
          INetworkOperatorTetheringManagerStatics4.fromPtr,
          _className,
          IID_INetworkOperatorTetheringManagerStatics4)
      .disableNoConnectionsTimeout();

  static Future<void> disableNoConnectionsTimeoutAsync() =>
      createActivationFactory(INetworkOperatorTetheringManagerStatics4.fromPtr,
              _className, IID_INetworkOperatorTetheringManagerStatics4)
          .disableNoConnectionsTimeoutAsync();

  late final _iNetworkOperatorTetheringManager =
      INetworkOperatorTetheringManager.from(this);

  @override
  int get maxClientCount => _iNetworkOperatorTetheringManager.maxClientCount;

  @override
  int get clientCount => _iNetworkOperatorTetheringManager.clientCount;

  @override
  TetheringOperationalState get tetheringOperationalState =>
      _iNetworkOperatorTetheringManager.tetheringOperationalState;

  @override
  NetworkOperatorTetheringAccessPointConfiguration?
      getCurrentAccessPointConfiguration() => _iNetworkOperatorTetheringManager
          .getCurrentAccessPointConfiguration();

  @override
  Future<void> configureAccessPointAsync(
          NetworkOperatorTetheringAccessPointConfiguration? configuration) =>
      _iNetworkOperatorTetheringManager
          .configureAccessPointAsync(configuration);

  @override
  Future<NetworkOperatorTetheringOperationResult?> startTetheringAsync() =>
      _iNetworkOperatorTetheringManager.startTetheringAsync();

  @override
  Future<NetworkOperatorTetheringOperationResult?> stopTetheringAsync() =>
      _iNetworkOperatorTetheringManager.stopTetheringAsync();

  late final _iNetworkOperatorTetheringClientManager =
      INetworkOperatorTetheringClientManager.from(this);

  @override
  List<NetworkOperatorTetheringClient> getTetheringClients() =>
      _iNetworkOperatorTetheringClientManager.getTetheringClients();
}
