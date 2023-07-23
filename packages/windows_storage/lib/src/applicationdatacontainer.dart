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

import 'applicationdatacreatedisposition.dart';
import 'applicationdatalocality.dart';
import 'iapplicationdatacontainer.dart';

/// Represents a container for app settings. The methods and properties of
/// this class support creating, deleting, enumerating, and traversing the
/// container hierarchy.
class ApplicationDataContainer extends IInspectable
    implements IApplicationDataContainer, IClosable {
  ApplicationDataContainer.fromPtr(super.ptr);

  late final _iApplicationDataContainer = IApplicationDataContainer.from(this);

  @override
  String get name => _iApplicationDataContainer.name;

  @override
  ApplicationDataLocality get locality => _iApplicationDataContainer.locality;

  @override
  IPropertySet? get values => _iApplicationDataContainer.values;

  @override
  Map<String, ApplicationDataContainer?>? get containers =>
      _iApplicationDataContainer.containers;

  @override
  ApplicationDataContainer? createContainer(
          String name, ApplicationDataCreateDisposition disposition) =>
      _iApplicationDataContainer.createContainer(name, disposition);

  @override
  void deleteContainer(String name) =>
      _iApplicationDataContainer.deleteContainer(name);

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
