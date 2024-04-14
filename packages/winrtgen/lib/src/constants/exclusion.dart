// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// A class that encapsulates various sets of exclusions for code generation.
final class Exclusion {
  /// WinRT types to ignore when generating imports.
  static const excludedImports = <String>{
    // Exposed as dart:core's DateTime
    'Windows.Foundation.DateTime',

    // Exposed as int
    'Windows.Foundation.EventRegistrationToken',

    // Exposed as int
    'Windows.Foundation.HResult',

    // Exposed as dart:core's Duration
    'Windows.Foundation.TimeSpan',

    ...excludedInheritedInterfaces,
  };

  /// WinRT interfaces to exclude when generating inherited interfaces of an
  /// interface.
  static const excludedInheritedInterfaces = <String>{
    // INumberFormatter2's methods conflict with INumberFormatter's methods
    'Windows.Globalization.NumberFormatting.INumberFormatter2',
    // Contains deprecated APIs
    'Windows.Storage.Pickers.IFileOpenPicker2',
    // IFileOpenPickerWithOperationId's pickSingleFileAsync(String operationId)
    // method conflicts with IFileOpenPicker's pickSingleFileAsync() method
    'Windows.Storage.Pickers.IFileOpenPickerWithOperationId',
  };

  /// WinRT interfaces to exclude when generating method forwarders.
  static const excludedInterfacesInMethodForwarders = <String>{
    // WinRT interfaces that inherit IIterable interface also inherit from IMap,
    // IMapView, IVector, or IVectorView interfaces. Since method forwarders are
    // generated for the IIterable in these interfaces, this one must be
    // excluded.
    'Windows.Foundation.Collections.IIterable`1',
  };

  /// Methods to exclude when generating concrete classes for WinRT generic
  /// interfaces.
  static const excludedMethodsInConcreteClasses = <String, Set<String>>{
    // Excluded methods from the IMap interface
    'Windows.Foundation.Collections.IMap`2': {'GetView'},
    // Excluded methods from the IMapView interface
    'Windows.Foundation.Collections.IMapView`2': {'Split'},
    // Excluded methods from the IVector interface
    'Windows.Foundation.Collections.IVector`1': {'GetView'},
  };

  /// WinRT objects to exclude from code generation.
  static const excludedObjects = <String>{
    ...excludedInheritedInterfaces,
    ...excludedStaticInterfaces,

    // These types are projected manually by design
    'Windows.Foundation.IAsyncOperation`1',
    'Windows.Foundation.Collections.IIterable`1',
    'Windows.Foundation.Collections.IIterator`1',
    'Windows.Foundation.Collections.IKeyValuePair`2',
    'Windows.Foundation.Collections.IMap`2',
    'Windows.Foundation.Collections.IMapView`2',
    'Windows.Foundation.Collections.IObservableMap`2',
    'Windows.Foundation.Collections.IVector`1',
    'Windows.Foundation.Collections.IVectorView`1',
  };

  /// Files to exclude from packages when generating package export files.
  static const excludedPackageFiles = <String, Set<String>>{
    // Excluded files in the `windows_foundation` package
    'windows_foundation': {
      // Async delegate interfaces
      'iasyncaction.dart',
      'iasyncactionwithprogress.dart',
      'iasyncinfo.dart',
      'iasyncoperation.dart',
      'iasyncoperationwithprogress.dart',

      // Fully wrapped types
      'ipropertyvalue.dart',
      'ireference.dart',
      'propertyvalue.dart',

      // Internally used enums
      'asyncstatus.dart',
      'propertytype.dart',

      // Windows.Foundation.Uri and its dependencies
      'iuriruntimeclass.dart',
      'iuriruntimeclasswithabsolutecanonicaluri.dart',
      'iwwwformurldecoderentry.dart',
      'iwwwformurldecoderruntimeclass.dart',
      'uri.dart',
      'wwwformurldecoder.dart',
      'wwwformurldecoderentry.dart',
    },
  };

  /// WinRT static interfaces to exclude when generating static methods.
  static const excludedStaticInterfaces = <String>{
    // Contains deprecated APIs
    'Windows.Storage.Pickers.IFileOpenPickerStatics',
  };
}
