// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Files to exclude when generating the package exports.
const excludedPackageFiles = <String>{
  // Async delegates
  'iasyncaction.dart',
  'iasyncactionwithprogress.dart',
  'iasyncinfo.dart',
  'iasyncoperation.dart',
  'iasyncoperationwithprogress.dart',

  'exports.g.dart', // Generated package exports file

  // Fully wrapped by projection
  'ipropertyvalue.dart',
  'propertyvalue.dart',
  'ireference.dart',

  // WinRT Uri files
  'iuriruntimeclass.dart',
  'iuriruntimeclasswithabsolutecanonicaluri.dart',
  'iwwwformurldecoderentry.dart',
  'iwwwformurldecoderruntimeclass.dart',
  'uri.dart',
  'wwwformurldecoder.dart',
  'wwwformurldecoderentry.dart',
};

/// WinRT classes and interfaces to exclude from code generation.
const excludedWindowsRuntimeClassesAndInterfaces = <String>{
  ...excludedWindowsRuntimeInterfacesInInherits,
  ...excludedWindowsRuntimeStaticInterfaces,

  // These types are generated manually by design
  'Windows.Foundation.IAsyncOperation`1',
  'Windows.Foundation.Collections.IIterable`1',
  'Windows.Foundation.Collections.IIterator`1',
  'Windows.Foundation.Collections.IKeyValuePair`2',
  'Windows.Foundation.Collections.IMap`2',
  'Windows.Foundation.Collections.IMapView`2',
  'Windows.Foundation.Collections.IObservableMap`2',
  'Windows.Foundation.Collections.IVector`1',
  'Windows.Foundation.Collections.IVectorView`1',

  // TODO: These types are currently being generated manually. The goal is to
  // generate them automatically after making appropriate changes to the
  // generation script:

  // TODO(halildurmus): Remove this from excludes once we have a use for it.
  //   DevicePicker has too many dependencies. Do not generate it for the time
  //   being as it is only used for testing purposes anyway.
  'Windows.Devices.Enumeration.DevicePicker',

  //   Requires WinRT delegate support
  'Windows.Storage.ApplicationData',

  //   Requires WinRT event support
  'Windows.Networking.Connectivity.INetworkInformationStatics',

  //   Requires XmlDocument support
  'Windows.UI.Notifications.IToastNotificationManagerStatics',
  'Windows.UI.Notifications.ToastNotification',
};

/// WinRT interfaces to exclude when generating interfaces' inherited
/// interfaces.
const excludedWindowsRuntimeInterfacesInInherits = <String>{
  // INumberFormatter2's methods conflict with INumberFormatter's methods
  'Windows.Globalization.NumberFormatting.INumberFormatter2',
  // Contains deprecated APIs
  'Windows.Storage.Pickers.IFileOpenPicker2',
  // IFileOpenPickerWithOperationId's pickSingleFileAsync(String operationId)
  // method conflicts with IFileOpenPicker's pickSingleFileAsync() method
  'Windows.Storage.Pickers.IFileOpenPickerWithOperationId',
};

/// WinRT static interfaces to exclude when generating the static methods.
const excludedWindowsRuntimeStaticInterfaces = <String>{
  // Contains deprecated APIs
  'Windows.Storage.Pickers.IFileOpenPickerStatics',
};

/// WinRT interfaces to exclude when generating interfaces' method forwarders.
const excludedWindowsRuntimeInterfacesInMethodForwarders = <String>{
  // The WinRT interfaces that inherit IIterable also inherit from IMap,
  // IMapView, IVector, or IVectorView. As we generate method forwarders for the
  // IIterable on these interfaces, we need to exclude this one.
  'Windows.Foundation.Collections.IIterable`1',
};

/// WinRT types to ignore when generating the imports.
const ignoredWindowsRuntimeTypesInImports = <String>{
  // This is exposed as dart:core's DateTime
  'Windows.Foundation.DateTime',

  // These are exposed as int
  'Windows.Foundation.EventRegistrationToken',
  'Windows.Foundation.HResult',

  // This is exposed as dart:core's Duration
  'Windows.Foundation.TimeSpan',

  ...excludedWindowsRuntimeInterfacesInInherits,
};
