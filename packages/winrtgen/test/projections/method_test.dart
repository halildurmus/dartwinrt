// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

import 'utilities.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('MethodProjection', () {
    test('projects something', () {
      final output = MethodProjection.fromTypeAndMethodName(
              'Windows.Globalization.ICalendar', 'Clone')
          .toString();
      expect(output, isNotEmpty);
      expect(output, contains('clone'));
    });

    test('fromTypeAndMethodName constructor throws if type is not found', () {
      expect(
          () =>
              MethodProjection.fromTypeAndMethodName('Windows.Foo.Bar', 'Foo'),
          throwsA(isA<WinRTGenException>()));
    });
  });

  group('WinRT method', () {
    test('name is correctly converted to camelCase', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.ViewManagement.IUISettings', 'UIElementColor');
      expect(projection.camelCasedName, equals('uiElementColor'));
    });

    test('annotated with @Deprecated', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.Connectivity.IConnectionProfile',
          'GetLocalUsage');
      expect(projection.method.isDeprecated, isTrue);
      expect(
          projection.toString(),
          contains('@Deprecated("GetLocalUsage may be altered or unavailable '
              'for releases after Windows 8.1. Instead, use '
              'GetNetworkUsageAsync.")'));
    });

    test('projects bool', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetBoolean');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('bool'));
      expect(projection.header, equals('bool getBoolean()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Bool>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Bool> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.value;'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects class', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.Calendar', 'Clone');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Calendar?'));
      expect(projection.header, equals('Calendar? clone()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement,
          equals('return Calendar.fromPtr(value);'));
      expect(projection.postambles, isEmpty);
    });

    test('projects DateTime', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.Calendar', 'GetDateTime');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('DateTime'));
      expect(projection.header, equals('DateTime getDateTime()'));
      expect(projection.paramIdentifier, equals('result'));
      expect(projection.preambles, equals(['final result = calloc<Int64>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> result)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Int64> result)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, result'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return result.toDartDateTime();'));
      expect(projection.postambles, equals(['free(result);']));
    });

    test('projects double', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetDouble');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('double'));
      expect(projection.header, equals('double getDouble()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Double>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Double> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.value;'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects Duration', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetTimeSpan');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('Duration'));
      expect(projection.header, equals('Duration getTimeSpan()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Int64>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Int64> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement, equals('return value.toDartDuration();'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects enum', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Data.Json.IJsonErrorStatics2', 'GetJsonStatus');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('JsonErrorStatus'));
      expect(projection.header,
          equals('JsonErrorStatus getJsonStatus(int hresult)'));
      expect(projection.paramIdentifier, equals('status'));
      expect(projection.preambles, equals(['final status = calloc<Int32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Int32 hresult, Pointer<Int32> status)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int hresult, Pointer<Int32> status)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, hresult, status'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return JsonErrorStatus.from(status.value);'));
      expect(projection.postambles, equals(['free(status);']));
    });

    test('projects Flags enum', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.Connectivity.NetworkItem', 'GetNetworkTypes');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('NetworkTypes'));
      expect(projection.header, equals('NetworkTypes getNetworkTypes()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Uint32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Uint32> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return NetworkTypes.from(value.value);'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects generic enum', () {
      final genericInterfaceProjection = GenericInterfaceProjection.from(
          'Windows.Foundation.Collections.IVector`1', TypeArgKind.winrtEnum);
      final projection = genericInterfaceProjection.methodProjections
          .firstWhere((methodProjection) => methodProjection.name == 'GetAt');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('T'));
      expect(projection.header, equals('T getAt(int index)'));
      expect(projection.paramIdentifier, equals('retValuePtr'));
      expect(projection.preambles,
          equals(['final retValuePtr = calloc<Int32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Uint32 index, Pointer<Int32> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int index, Pointer<Int32> retValuePtr)'));
      expect(
          projection.identifiers, equals('ptr.ref.lpVtbl, index, retValuePtr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return enumCreator(retValuePtr.value);'));
      expect(projection.postambles, equals(['free(retValuePtr);']));
    });

    test('projects generic Flags enum', () {
      final genericInterfaceProjection = GenericInterfaceProjection.from(
          'Windows.Foundation.Collections.IVector`1',
          TypeArgKind.winrtFlagsEnum);
      final projection = genericInterfaceProjection.methodProjections
          .firstWhere((methodProjection) => methodProjection.name == 'GetAt');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('T'));
      expect(projection.header, equals('T getAt(int index)'));
      expect(projection.paramIdentifier, equals('retValuePtr'));
      expect(projection.preambles,
          equals(['final retValuePtr = calloc<Uint32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Uint32 index, Pointer<Uint32> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int index, Pointer<Uint32> retValuePtr)'));
      expect(
          projection.identifiers, equals('ptr.ref.lpVtbl, index, retValuePtr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return enumCreator(retValuePtr.value);'));
      expect(projection.postambles, equals(['free(retValuePtr);']));
    });

    test('projects generic object', () {
      final genericInterfaceProjection = GenericInterfaceProjection.from(
          'Windows.Foundation.Collections.IVector`1',
          TypeArgKind.nullableInspectable);
      final projection = genericInterfaceProjection.methodProjections
          .firstWhere((methodProjection) => methodProjection.name == 'GetAt');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('T'));
      expect(projection.header, equals('T getAt(int index)'));
      expect(projection.paramIdentifier, equals('retValuePtr'));
      expect(projection.preambles,
          equals(['final retValuePtr = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Uint32 index, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int index, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.identifiers, equals('ptr.ref.lpVtbl, index, retValuePtr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck(freeRetVal: true)));
      expect(projection.nullCheck,
          equals(nullCheck('retValuePtr', castReturn: true)));
      expect(
          projection.returnStatement, equals('return creator(retValuePtr);'));
      expect(projection.postambles, isEmpty);
    });

    test('projects Guid', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetGuid');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('Guid'));
      expect(projection.header, equals('Guid getGuid()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<GUID>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<GUID> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.toDartGuid();'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects int', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInt32');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('int'));
      expect(projection.header, equals('int getInt32()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Int32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Int32> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.value;'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects interface', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.StringMap', 'First');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType,
          equals('IIterator<IKeyValuePair<String, String>>'));
      expect(projection.header,
          equals('IIterator<IKeyValuePair<String, String>> first()'));
      expect(projection.paramIdentifier, equals('returnValue'));
      expect(projection.preambles,
          equals(['final returnValue = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> returnValue)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> returnValue)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, returnValue'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'returnValue')));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement,
          equals(
              'return IIterator<IKeyValuePair<String, String>>.fromPtr(returnValue);'));
      expect(projection.postambles, isEmpty);
    });

    test('projects IAsyncAction (1)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageItem', 'DeleteAsyncOverloadDefaultOptions');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Future<void>'));
      expect(projection.header,
          equals('Future<void> deleteAsyncOverloadDefaultOptions()'));
      expect(projection.paramIdentifier, equals('operation'));
      expect(projection.preambles,
          equals(['final operation = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> operation)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, operation'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'operation')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return IAsyncAction.fromPtr(operation).toFuture();'));
      expect(projection.postambles, isEmpty);
    });

    test('projects IAsyncAction (2) (implements IAsyncAction)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Security.Authentication.OnlineId.OnlineIdAuthenticator',
          'SignOutUserAsync');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Future<void>'));
      expect(projection.header, equals('Future<void> signOutUserAsync()'));
      expect(projection.paramIdentifier, equals('signOutUserOperation'));
      expect(projection.preambles,
          equals(['final signOutUserOperation = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> signOutUserOperation)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> signOutUserOperation)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, signOutUserOperation'));
      expect(projection.parametersPostamble, isEmpty);
      expect(
          projection.failedCheck,
          equals(failedCheck(
              freeRetVal: true, identifier: 'signOutUserOperation')));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement,
          equals(
              'return IAsyncAction.fromPtr(signOutUserOperation).toFuture();'));
      expect(projection.postambles, isEmpty);
    });

    test('projects IAsyncActionWithProgress<double>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Media.Transcoding.PrepareTranscodeResult', 'TranscodeAsync');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Pointer<COMObject>'));
      expect(projection.header, equals('Pointer<COMObject> transcodeAsync()'));
      expect(projection.paramIdentifier, equals('operation'));
      expect(projection.preambles,
          equals(['final operation = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> operation)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, operation'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'operation')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return operation;'));
      expect(projection.postambles, isEmpty);
    });

    test('projects IAsyncOperation<int>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Streams.DataReader', 'LoadAsync');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Future<int>'));
      expect(projection.header, equals('Future<int> loadAsync(int count)'));
      expect(projection.paramIdentifier, equals('operation'));
      expect(projection.preambles,
          equals(['final operation = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Uint32 count, Pointer<COMObject> operation)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int count, Pointer<COMObject> operation)'));
      expect(
          projection.identifiers, equals('ptr.ref.lpVtbl, count, operation'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'operation')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        final asyncOperation =
            IAsyncOperation<int>.fromPtr(operation, intType: IntType.uint32);
        return asyncOperation.toFuture(asyncOperation.getResults);
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IAsyncOperation<IMapView<String, Object?>>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Search.IContentIndexer', 'RetrievePropertiesAsync');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Future<Map<String, Object?>>'));
      expect(
          projection.header,
          equals(
              'Future<Map<String, Object?>> retrievePropertiesAsync(String contentId, IIterable<String>? propertiesToRetrieve)'));
      expect(projection.paramIdentifier, equals('operation'));
      expect(projection.preambles,
          equals(['final operation = calloc<COMObject>();']));
      expect(projection.parametersPreamble,
          equals(['final contentIdHString = contentId.toHString();']));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, IntPtr contentId, VTablePointer propertiesToRetrieve, Pointer<COMObject> operation)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int contentId, VTablePointer propertiesToRetrieve, Pointer<COMObject> operation)'));
      expect(
          projection.identifiers,
          equals(
              "ptr.ref.lpVtbl, contentIdHString, propertiesToRetrieve == null ? nullptr : IInspectable(propertiesToRetrieve.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')).ptr.ref.lpVtbl, operation"));
      expect(projection.parametersPostamble,
          equals(['WindowsDeleteString(contentIdHString);']));
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'operation')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        final asyncOperation =
            IAsyncOperation<IMapView<String, Object?>>.fromPtr(operation,
                creator: (ptr) => IMapView.fromPtr(ptr,
                    iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}'));
        return asyncOperation.toFuture(() => asyncOperation.getResults().toMap());
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IAsyncOperation<IReference<DateTime?>?>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.Xaml.Controls.IDatePickerFlyout', 'ShowAtAsync');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Future<DateTime?>'));
      expect(projection.header,
          equals('Future<DateTime?> showAtAsync(FrameworkElement? target)'));
      expect(projection.paramIdentifier, equals('operation'));
      expect(projection.preambles,
          equals(['final operation = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer target, Pointer<COMObject> operation)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, VTablePointer target, Pointer<COMObject> operation)'));
      expect(
          projection.identifiers,
          equals(
              'ptr.ref.lpVtbl, target == null ? nullptr : target.ptr.ref.lpVtbl, operation'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'operation')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        final asyncOperation =
            IAsyncOperation<IReference<DateTime?>?>.fromPtr(operation,
                creator: (ptr) => IReference.fromPtr(ptr,
                    referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}'));
        return asyncOperation.toFuture(() => asyncOperation.getResults()?.value);
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IAsyncOperation<IVectorView<User>>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.IUserStatics', 'FindAllAsync');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Future<List<User?>>'));
      expect(projection.header, equals('Future<List<User?>> findAllAsync()'));
      expect(projection.paramIdentifier, equals('operation'));
      expect(projection.preambles,
          equals(['final operation = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> operation)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, operation'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'operation')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        final asyncOperation =
            IAsyncOperation<IVectorView<User?>>.fromPtr(operation,
                creator: (ptr) => IVectorView.fromPtr(ptr,
                    creator: User.fromPtr,
                    iterableIid: '{d1bacd1f-0376-5823-8c29-1d45b9f4c191}'));
        return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IAsyncOperation<StorageFile?>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'PickSingleFileAsync');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Future<StorageFile?>'));
      expect(projection.header,
          equals('Future<StorageFile?> pickSingleFileAsync()'));
      expect(projection.paramIdentifier, equals('operation'));
      expect(projection.preambles,
          equals(['final operation = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> operation)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, operation'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'operation')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        final asyncOperation =
            IAsyncOperation<StorageFile?>.fromPtr(operation, creator: StorageFile.fromPtr);
        return asyncOperation.toFuture(asyncOperation.getResults);
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IAsyncOperationWithProgress<double>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Streams.IOutputStream', 'WriteAsync');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Pointer<COMObject>'));
      expect(projection.header,
          equals('Pointer<COMObject> writeAsync(IBuffer? buffer)'));
      expect(projection.paramIdentifier, equals('operation'));
      expect(projection.preambles,
          equals(['final operation = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer, Pointer<COMObject> operation)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, VTablePointer buffer, Pointer<COMObject> operation)'));
      expect(
          projection.identifiers,
          equals(
              'ptr.ref.lpVtbl, buffer == null ? nullptr : buffer.ptr.ref.lpVtbl, operation'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'operation')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return operation;'));
      expect(projection.postambles, isEmpty);
    });

    test('projects IMap<String, IVectorView<TextSegment>>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Search.StorageFileQueryResult',
          'GetMatchingPropertiesWithRanges');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType,
          equals('IMap<String, IVectorView<TextSegment>>'));
      expect(
          projection.header,
          equals(
              'IMap<String, IVectorView<TextSegment>> getMatchingPropertiesWithRanges(StorageFile? file)'));
      expect(projection.paramIdentifier, equals('result'));
      expect(projection.preambles,
          equals(['final result = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer file, Pointer<COMObject> result)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, VTablePointer file, Pointer<COMObject> result)'));
      expect(
          projection.identifiers,
          equals(
              'ptr.ref.lpVtbl, file == null ? nullptr : file.ptr.ref.lpVtbl, result'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'result')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IMap.fromPtr(result,
            iterableIid: '{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}',
            creator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{5498f4f3-cee4-5b72-9729-815c4ad7b9dc}'));
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IMapView<String, String>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.StringMap', 'GetView');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Map<String, String>'));
      expect(projection.header, equals('Map<String, String> getView()'));
      expect(projection.paramIdentifier, equals('returnValue'));
      expect(projection.preambles,
          equals(['final returnValue = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> returnValue)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> returnValue)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, returnValue'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'returnValue')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IMapView<String, String>.fromPtr(returnValue,
            iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}').toMap();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IReference<int?>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.Connectivity.ConnectionProfile', 'GetSignalBars');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('int?'));
      expect(projection.header, equals('int? getSignalBars()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IReference<int?>.fromPtr(value,
            referenceIid: '{e5198cc8-2873-55f5-b0a1-84ff9e4aad62}').value;
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<BackgroundTransferFileRange>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.BackgroundTransfer.IDownloadOperation3',
          'GetDownloadedRanges');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType,
          equals('IVector<BackgroundTransferFileRange>'));
      expect(projection.header,
          equals('IVector<BackgroundTransferFileRange> getDownloadedRanges()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVector.fromPtr(value,
            iterableIid: '{2cc2d499-974c-5078-89ae-2d4ee1139721}');
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<VideoStreamDescriptor?>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Media.MediaProperties.IMediaEncodingProfile2',
          'GetVideoTracks');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('IVector<VideoStreamDescriptor?>'));
      expect(projection.header,
          equals('IVector<VideoStreamDescriptor?> getVideoTracks()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVector.fromPtr(value,
            iterableIid: '{3acbf03c-0a79-5823-aaa9-d88bc3f8f594}',
            creator: VideoStreamDescriptor.fromPtr);
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<double>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.AI.MachineLearning.TensorFloat', 'GetAsVectorView');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('List<double>'));
      expect(projection.header, equals('List<double> getAsVectorView()'));
      expect(projection.paramIdentifier, equals('result'));
      expect(projection.preambles,
          equals(['final result = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> result)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> result)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, result'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'result')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVectorView<double>.fromPtr(result,
            iterableIid: '{b01bee51-063a-5fda-bd72-d76637bb8cb8}',
            doubleType: DoubleType.float).toList();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<int>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.AI.MachineLearning.TensorInt32Bit', 'GetAsVectorView');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('List<int>'));
      expect(projection.header, equals('List<int> getAsVectorView()'));
      expect(projection.paramIdentifier, equals('result'));
      expect(projection.preambles,
          equals(['final result = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> result)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> result)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, result'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'result')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVectorView<int>.fromPtr(result,
            iterableIid: '{81a643fb-f51c-5565-83c4-f96425777b66}',
            intType: IntType.int32).toList();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<String>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ApplicationLanguages', 'GetLanguagesForUser');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('List<String>'));
      expect(projection.header,
          equals('List<String> getLanguagesForUser(User? user)'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer user, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, VTablePointer user, Pointer<COMObject> value)'));
      expect(
          projection.identifiers,
          equals(
              'ptr.ref.lpVtbl, user == null ? nullptr : user.ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVectorView<String>.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}').toList();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects List<AnnotationType>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.Xaml.Automation.Provider.ISpreadsheetItemProvider',
          'GetAnnotationTypes');
      expect(projection, isA<DefaultListMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('List<AnnotationType>'));
      expect(projection.header,
          equals('List<AnnotationType> getAnnotationTypes()'));
      expect(projection.paramIdentifier, equals('result'));
      expect(
          projection.preambles,
          orderedEquals([
            'final retValueSize = calloc<Uint32>();',
            'final result = calloc<Pointer<Int32>>();'
          ]));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> retValueSize, Pointer<Pointer<Int32>> result)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Uint32> retValueSize, Pointer<Pointer<Int32>> result)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, retValueSize, result'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement,
          equals(
              'return result.value.toList(length: retValueSize.value).map(AnnotationType.from).toList();'));
      expect(projection.postambles,
          orderedEquals(['free(retValueSize);', 'free(result);']));
    });

    test('projects List<DisplayId>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Graphics.Display.IDisplayServicesStatics', 'FindAll');
      expect(projection, isA<DefaultListMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('List<DisplayId>'));
      expect(projection.header, equals('List<DisplayId> findAll()'));
      expect(projection.paramIdentifier, equals('result'));
      expect(
          projection.preambles,
          orderedEquals([
            'final retValueSize = calloc<Uint32>();',
            'final result = calloc<Pointer<NativeDisplayId>>();'
          ]));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> retValueSize, Pointer<Pointer<NativeDisplayId>> result)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Uint32> retValueSize, Pointer<Pointer<NativeDisplayId>> result)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, retValueSize, result'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return result.value.toList(length: retValueSize.value);'));
      expect(projection.postambles,
          orderedEquals(['free(retValueSize);', 'free(result);']));
    });

    test('projects List<int>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Display.IDisplayMonitor', 'GetDescriptor');
      expect(projection, isA<DefaultListMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('List<int>'));
      expect(
          projection.header,
          equals(
              'List<int> getDescriptor(DisplayMonitorDescriptorKind descriptorKind)'));
      expect(projection.paramIdentifier, equals('result'));
      expect(
          projection.preambles,
          orderedEquals([
            'final retValueSize = calloc<Uint32>();',
            'final result = calloc<Pointer<Uint8>>();'
          ]));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Int32 descriptorKind, Pointer<Uint32> retValueSize, Pointer<Pointer<Uint8>> result)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int descriptorKind, Pointer<Uint32> retValueSize, Pointer<Pointer<Uint8>> result)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, descriptorKind.value, retValueSize, result'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return result.value.toList(length: retValueSize.value);'));
      expect(projection.postambles,
          orderedEquals(['free(retValueSize);', 'free(result);']));
    });

    test('projects List<ITextRangeProvider?>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.Xaml.Automation.Provider.ITextProvider', 'GetSelection');
      expect(projection, isA<DefaultListMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('List<ITextRangeProvider?>'));
      expect(projection.header,
          equals('List<ITextRangeProvider?> getSelection()'));
      expect(projection.paramIdentifier, equals('result'));
      expect(
          projection.preambles,
          orderedEquals([
            'final retValueSize = calloc<Uint32>();',
            'final result = calloc<Pointer<COMObject>>();'
          ]));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> retValueSize, Pointer<Pointer<COMObject>> result)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Uint32> retValueSize, Pointer<Pointer<COMObject>> result)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, retValueSize, result'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement,
          equals(
              'return result.value.toList(ITextRangeProvider.fromPtr, length: retValueSize.value);'));
      expect(projection.postambles,
          orderedEquals(['free(retValueSize);', 'free(result);']));
    });

    test('projects Object?', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.PropertySet', 'Lookup');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Object?'));
      expect(projection.header, equals('Object? lookup(String key)'));
      expect(projection.paramIdentifier, equals('returnValue'));
      expect(projection.preambles,
          equals(['final returnValue = calloc<COMObject>();']));
      expect(projection.parametersPreamble,
          equals(['final keyHString = key.toHString();']));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, IntPtr key, Pointer<COMObject> returnValue)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int key, Pointer<COMObject> returnValue)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, keyHString, returnValue'));
      expect(projection.parametersPostamble,
          equals(['WindowsDeleteString(keyHString);']));
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'returnValue')));
      expect(projection.nullCheck, equals(nullCheck('returnValue')));
      expect(projection.returnStatement,
          equals('return IPropertyValue.fromPtr(returnValue).value;'));
      expect(projection.postambles, isEmpty);
    });

    test('projects String (1)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'GetCalendarSystem');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('String'));
      expect(projection.header, equals('String getCalendarSystem()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<IntPtr>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement, equals('return value.toDartString();'));
      expect(projection.postambles,
          orderedEquals(['WindowsDeleteString(value.value);', 'free(value);']));
    });

    test('projects String (2) (annotated with @override)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IStringable', 'ToString');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, equals(['@override']));
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('String'));
      expect(projection.header, equals('String toString()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<IntPtr>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement, equals('return value.toDartString();'));
      expect(projection.postambles,
          orderedEquals(['WindowsDeleteString(value.value);', 'free(value);']));
    });

    test('projects struct', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetPoint');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('Point'));
      expect(projection.header, equals('Point getPoint()'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles,
          equals(['final value = calloc<NativePoint>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<NativePoint> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<NativePoint> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.toDart();'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects Uri', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IUriRuntimeClassFactory', 'CreateUri');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Uri'));
      expect(projection.header, equals('Uri createUri(String uri)'));
      expect(projection.paramIdentifier, equals('instance'));
      expect(projection.preambles,
          equals(['final instance = calloc<COMObject>();']));
      expect(projection.parametersPreamble,
          equals(['final uriHString = uri.toHString();']));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, IntPtr uri, Pointer<COMObject> instance)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int uri, Pointer<COMObject> instance)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, uriHString, instance'));
      expect(projection.parametersPostamble,
          equals(['WindowsDeleteString(uriHString);']));
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'instance')));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement, equals('return Uri.fromPtr(instance);'));
      expect(projection.postambles, isEmpty);
    });

    test('projects Uri?', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Security.Authentication.Web.WebAuthenticationBroker',
          'GetCurrentApplicationCallbackUri');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Uri?'));
      expect(
          projection.header, equals('Uri? getCurrentApplicationCallbackUri()'));
      expect(projection.paramIdentifier, equals('callbackUri'));
      expect(projection.preambles,
          equals(['final callbackUri = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> callbackUri)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> callbackUri)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, callbackUri'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'callbackUri')));
      expect(projection.nullCheck, equals(nullCheck('callbackUri')));
      expect(projection.returnStatement,
          equals('return callbackUri.toWinRTUri().toDartUri();'));
      expect(projection.postambles, isEmpty);
    });

    test('projects void (1)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IClosable', 'Close');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('void'));
      expect(projection.header, equals('void close()'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects void (2)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics',
          'TryCreate');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('void'));
      expect(
          projection.header,
          equals(
              'void tryCreate(String regionCode, PhoneNumberFormatter phoneNumber)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble,
          equals(['final regionCodeHString = regionCode.toHString();']));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, IntPtr regionCode, Pointer<COMObject> phoneNumber)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int regionCode, Pointer<COMObject> phoneNumber)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, regionCodeHString, phoneNumber.ptr'));
      expect(projection.parametersPostamble,
          equals(['WindowsDeleteString(regionCodeHString);']));
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });
  });
}
