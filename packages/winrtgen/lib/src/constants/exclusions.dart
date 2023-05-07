// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Methods to exclude when generating the concrete classes for WinRT generic
/// interfaces.
const excludedMethodsInConcreteClasses = <String, Set<String>>{
  // Excluded methods from the IMap interface
  'Windows.Foundation.Collections.IMap`2': {'GetView'},
  // Excluded methods from the IMapView interface
  'Windows.Foundation.Collections.IMapView`2': {'Split'},
  // Excluded methods from the IVector interface
  'Windows.Foundation.Collections.IVector`1': {'GetView'},
};

/// Files to exclude from packages when generating the package export files.
const excludedPackageFiles = <String, Set<String>>{
  // Excluded files in the 'windows_foundation' package
  'windows_foundation': {
    // Async delegates
    'iasyncaction.dart',
    'iasyncactionwithprogress.dart',
    'iasyncinfo.dart',
    'iasyncoperation.dart',
    'iasyncoperationwithprogress.dart',

    // Fully wrapped by projection
    'ipropertyvalue.dart',
    'ireference.dart',
    'propertyvalue.dart',

    'iunknown.dart',

    // Internally used enums
    'asyncstatus.dart',
    'propertytype.dart',

    // Windows.Foundation.Uri files
    'iuriruntimeclass.dart',
    'iuriruntimeclasswithabsolutecanonicaluri.dart',
    'iwwwformurldecoderentry.dart',
    'iwwwformurldecoderruntimeclass.dart',
    'uri.dart',
    'wwwformurldecoder.dart',
    'wwwformurldecoderentry.dart',
  },
};

/// WinRT objects to exclude from code generation.
const excludedObjects = <String>{
  ...excludedInterfacesInInherits,
  ...excludedStaticInterfaces,

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

  //   Requires WinRT delegate support
  'Windows.Storage.ApplicationData',
};

/// WinRT interfaces to exclude when generating an interface's inherited
/// interfaces.
const excludedInterfacesInInherits = <String>{
  // INumberFormatter2's methods conflict with INumberFormatter's methods
  'Windows.Globalization.NumberFormatting.INumberFormatter2',
  // Contains deprecated APIs
  'Windows.Storage.Pickers.IFileOpenPicker2',
  // IFileOpenPickerWithOperationId's pickSingleFileAsync(String operationId)
  // method conflicts with IFileOpenPicker's pickSingleFileAsync() method
  'Windows.Storage.Pickers.IFileOpenPickerWithOperationId',
};

/// WinRT static interfaces to exclude when generating the static methods.
const excludedStaticInterfaces = <String>{
  'Windows.Storage.Pickers.IFileOpenPickerStatics', // Contains deprecated APIs
};

/// WinRT interfaces to exclude when generating the method forwarders.
const excludedInterfacesInMethodForwarders = <String>{
  // The WinRT interfaces that inherit IIterable also inherit from IMap,
  // IMapView, IVector, or IVectorView. As we generate method forwarders for
  // the IIterable in these interfaces, we need to exclude this one.
  'Windows.Foundation.Collections.IIterable`1',
};

/// WinRT types to ignore when generating the imports.
const ignoredTypesInImports = <String>{
  'Windows.Foundation.DateTime', // Exposed as dart:core's DateTime
  'Windows.Foundation.EventRegistrationToken', // Exposed as int
  'Windows.Foundation.HResult', // Exposed as int
  'Windows.Foundation.TimeSpan', // Exposed as dart:core's Duration
  ...excludedInterfacesInInherits,
};
