// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  setUpAll(WinRTMetadataStore.loadMetadata);

  group('NativeStructProjection', () {
    test('projects something', () {
      final output =
          NativeStructProjection.fromType('Windows.Foundation.Rect').toString();
      expect(output, isNotEmpty);
      expect(output, contains('NativeRect'));
    });

    test('from factory constructor throws a StateError if type is not found',
        () {
      expect(() => NativeStructProjection.fromType('Windows.Foo.Bar'),
          throwsStateError);
    });
  });

  group('StructProjection', () {
    test('projects something', () {
      final output =
          StructProjection.fromType('Windows.Foundation.Rect').toString();
      expect(output, isNotEmpty);
      expect(output, contains('Rect'));
    });

    test('from factory constructor throws a StateError if type is not found',
        () {
      expect(
          () => StructProjection.fromType('Windows.Foo.Bar'), throwsStateError);
    });
  });

  group('WinRT native struct', () {
    late NativeStructProjection rectProjection;

    setUpAll(() {
      rectProjection =
          NativeStructProjection.fromType('Windows.Foundation.Rect');
    });

    test('has correct class name', () {
      expect(rectProjection.className, equals('NativeRect'));
    });

    test('has correct struct name', () {
      expect(rectProjection.structName, equals('NativeRect'));
    });

    test('does not have header', () {
      expect(rectProjection.header, isEmpty);
    });

    test('does not have imports', () {
      expect(rectProjection.imports, isEmpty);
    });

    test('has correct class header', () {
      expect(rectProjection.classHeader,
          equals('/// @nodoc\nfinal class NativeRect extends Struct'));
    });

    test('does not have constructor', () {
      expect(rectProjection.constructor, isEmpty);
    });

    test('has correct number of fields', () {
      expect(rectProjection.fieldProjections.length, equals(4));
    });

    test('has correct first field', () {
      final fieldProjection = rectProjection.fieldProjections.first;
      expect(fieldProjection.attribute, equals('@Float()'));
      expect(fieldProjection.dartType, equals('double'));
      expect(fieldProjection.fieldName, equals('x'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(
          fieldProjection.toString(), equals('@Float()\nexternal double x;\n'));
    });

    test('has correct last field', () {
      final fieldProjection = rectProjection.fieldProjections.last;
      expect(fieldProjection.attribute, equals('@Float()'));
      expect(fieldProjection.dartType, equals('double'));
      expect(fieldProjection.fieldName, equals('height'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.toString(),
          equals('@Float()\nexternal double height;\n'));
    });
  });

  group('WinRT struct', () {
    late StructProjection rectProjection;

    setUpAll(() {
      rectProjection = StructProjection.fromType('Windows.Foundation.Rect');
    });

    test('has copyright header', () {
      expect(rectProjection.header, contains(Header.copyright));
    });

    test('imports are meaningful (1)', () {
      expect(
          rectProjection.imports,
          orderedEquals([
            'dart:ffi',
            'package:ffi/ffi.dart',
            'package:win32/win32.dart',
            '../internal.dart',
            'winrt_struct.dart'
          ]));
    });

    test('imports are meaningful (2)', () {
      final projection =
          StructProjection.fromType('Windows.Devices.Gpio.GpioChangeRecord');
      expect(
          projection.imports,
          orderedEquals([
            'dart:ffi',
            'package:ffi/ffi.dart',
            'package:win32/win32.dart',
            'package:windows_foundation/internal.dart',
            'package:windows_foundation/windows_foundation.dart',
            'gpiopinedge.dart'
          ]));
    });

    test('includes correct dartdoc category comment', () {
      expect(rectProjection.category, isEmpty);
      expect(rectProjection.classPreamble, isEmpty);
    });

    test('has correct class name', () {
      expect(rectProjection.className, equals('Rect'));
    });

    test('has correct struct name', () {
      expect(rectProjection.structName, equals('Rect'));
    });

    test('has correct class header', () {
      expect(rectProjection.classHeader,
          equals('final class Rect implements WinRTStruct'));
    });

    test('has correct constructor', () {
      expect(rectProjection.constructor,
          equals('const Rect(this.x, this.y, this.width, this.height);'));
    });

    test('has correct number of instance variables', () {
      expect(rectProjection.fieldProjections.length, equals(4));
    });

    test('has correct instance variable (1)', () {
      final fieldProjection = rectProjection.fieldProjections.first;
      expect(fieldProjection.dartType, equals('double'));
      expect(fieldProjection.fieldName, equals('x'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.toString(), equals('final double x;'));
    });

    test('has correct instance variable (2)', () {
      final projection =
          StructProjection.fromType('Windows.Perception.Spatial.SpatialRay');
      final fieldProjection = projection.fieldProjections.first;
      expect(fieldProjection.dartType, equals('Vector3'));
      expect(fieldProjection.fieldName, equals('origin'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.exposedAsStruct, isTrue);
      expect(fieldProjection.toString(), equals('final Vector3 origin;'));
    });

    test('has correct instance variable (3)', () {
      final projection =
          StructProjection.fromType('Windows.Devices.Gpio.GpioChangeRecord');
      final fieldProjection = projection.fieldProjections.first;
      expect(fieldProjection.dartType, equals('Duration'));
      expect(fieldProjection.fieldName, equals('relativeTime'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.exposedAsStruct, isFalse);
      expect(
          fieldProjection.toString(), equals('final Duration relativeTime;'));
    });

    test('has correct instance variable (4)', () {
      final projection =
          StructProjection.fromType('Windows.Storage.Search.SortEntry');
      final fieldProjection = projection.fieldProjections.first;
      expect(fieldProjection.dartType, equals('String'));
      expect(fieldProjection.fieldName, equals('propertyName'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.isString, isTrue);
      expect(fieldProjection.exposedAsStruct, isFalse);
      expect(fieldProjection.toString(), equals('final String propertyName;'));
    });

    test('has correct instance variable (5)', () {
      final fieldProjection = rectProjection.fieldProjections.last;
      expect(fieldProjection.dartType, equals('double'));
      expect(fieldProjection.fieldName, equals('height'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.toString(), equals('final double height;'));
    });

    test('has correct instance variable (6)', () {
      final projection =
          StructProjection.fromType('Windows.Devices.Gpio.GpioChangeRecord');
      final fieldProjection = projection.fieldProjections.last;
      expect(fieldProjection.dartType, equals('GpioPinEdge'));
      expect(fieldProjection.fieldName, equals('edge'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.exposedAsStruct, isFalse);
      expect(fieldProjection.toString(), equals('final GpioPinEdge edge;'));
    });

    test('has correct instance variable (7)', () {
      final projection =
          StructProjection.fromType('Windows.Web.Http.HttpProgress');
      final fieldProjection = projection.fieldProjections[2];
      expect(fieldProjection.dartType, equals('int?'));
      expect(fieldProjection.fieldName, equals('totalBytesToSend'));
      expect(fieldProjection.isDeprecated, isFalse);
      expect(fieldProjection.isIReference, isTrue);
      expect(
          fieldProjection.toString(), equals('final int? totalBytesToSend;'));
    });

    test('has correct toNative method (1)', () {
      expect(rectProjection.toNativeMethod, equalsIgnoringWhitespace('''
  @override
  Pointer<NativeRect> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeRect>();
    nativeStructPtr.ref
      ..x = x
      ..y = y
      ..width = width
      ..height = height;
    return nativeStructPtr;
  }
'''));
    });

    test('has correct toNative method (2)', () {
      final projection =
          StructProjection.fromType('Windows.Devices.Gpio.GpioChangeRecord');
      expect(projection.toNativeMethod, equalsIgnoringWhitespace('''
  @override
  Pointer<NativeGpioChangeRecord> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeGpioChangeRecord>();
    nativeStructPtr.ref
      ..relativeTime = relativeTime.toWinRTDuration()
      ..edge = edge.value;
    return nativeStructPtr;
  }
'''));
    });

    test('has correct toNative method (3)', () {
      final projection =
          StructProjection.fromType('Windows.Web.Http.HttpProgress');
      expect(projection.toNativeMethod, equalsIgnoringWhitespace('''
  @override
  Pointer<NativeHttpProgress> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeHttpProgress>();
    nativeStructPtr.ref
      ..stage = stage.value
      ..bytesSent = bytesSent
      ..totalBytesToSend =
          totalBytesToSend?.toReference(IntType.uint64).lpVtbl ?? nullptr
      ..bytesReceived = bytesReceived
      ..totalBytesToReceive =
          totalBytesToReceive?.toReference(IntType.uint64).lpVtbl ?? nullptr
      ..retries = retries;
    return nativeStructPtr;
  }
'''));
    });

    test('has correct toNative method (4)', () {
      final projection =
          StructProjection.fromType('Windows.Storage.Search.SortEntry');
      expect(projection.toNativeMethod, equalsIgnoringWhitespace('''
  @override
  Pointer<NativeSortEntry> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSortEntry>();
    nativeStructPtr.ref
      ..propertyName = propertyName.toHString()
      ..ascendingOrder = ascendingOrder;
    return nativeStructPtr;
  }
'''));
    });

    test('has correct toNative method (5)', () {
      final projection =
          StructProjection.fromType('Windows.Perception.Spatial.SpatialRay');
      expect(projection.toNativeMethod, equalsIgnoringWhitespace('''
  @override
  Pointer<NativeSpatialRay> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSpatialRay>();
    nativeStructPtr.ref
      ..origin = origin.toNative(allocator: allocator).ref
      ..direction = direction.toNative(allocator: allocator).ref;
    return nativeStructPtr;
  }
'''));
    });

    test('has correct struct list extension declaration', () {
      expect(rectProjection.structListExtension, equalsIgnoringWhitespace('''
/// @nodoc
extension RectListToNativeRectArrayConversion on List<Rect> {
  /// Creates an array of [NativeRect]s from a List of [Rect]s.
  Pointer<NativeRect> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeRect>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}
'''));
    });

    test('has correct native struct extension declaration (1)', () {
      expect(rectProjection.nativeStructExtension, equalsIgnoringWhitespace('''
/// @nodoc
extension NativeRectConversion on NativeRect {
  /// Converts this [NativeRect] into a Dart [Rect].
  Rect toDart() => Rect(x, y, width, height);
}
'''));
    });

    test('has correct native struct extension declaration (2)', () {
      final projection =
          StructProjection.fromType('Windows.Devices.Gpio.GpioChangeRecord');
      expect(projection.nativeStructExtension, equalsIgnoringWhitespace('''
/// @nodoc
extension NativeGpioChangeRecordConversion on NativeGpioChangeRecord {
  /// Converts this [NativeGpioChangeRecord] into a Dart [GpioChangeRecord].
  GpioChangeRecord toDart() => GpioChangeRecord(relativeTime.toDartDuration(), GpioPinEdge.from(edge));
}
'''));
    });

    test('has correct native struct extension declaration (3)', () {
      final projection =
          StructProjection.fromType('Windows.Web.Http.HttpProgress');
      expect(projection.nativeStructExtension, equalsIgnoringWhitespace('''
/// @nodoc
extension NativeHttpProgressConversion on NativeHttpProgress {
  /// Converts this [NativeHttpProgress] into a Dart [HttpProgress].
  HttpProgress toDart() => HttpProgress(HttpProgressStage.from(stage), bytesSent, IReference<int?>.fromPtr(calloc<COMObject>()..ref.lpVtbl = totalBytesToSend, referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}').value, bytesReceived, IReference<int?>.fromPtr(calloc<COMObject>()..ref.lpVtbl = totalBytesToReceive, referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}').value, retries);
}
'''));
    });

    test('has correct native struct extension declaration (4)', () {
      final projection =
          StructProjection.fromType('Windows.Storage.Search.SortEntry');
      expect(projection.nativeStructExtension, equalsIgnoringWhitespace('''
/// @nodoc
extension NativeSortEntryConversion on NativeSortEntry {
  /// Converts this [NativeSortEntry] into a Dart [SortEntry].
  SortEntry toDart() => SortEntry(propertyName.toDartString(), ascendingOrder);
}
'''));
    });

    test('has correct native struct extension declaration (5)', () {
      final projection =
          StructProjection.fromType('Windows.Perception.Spatial.SpatialRay');
      expect(projection.nativeStructExtension, equalsIgnoringWhitespace('''
/// @nodoc
extension NativeSpatialRayConversion on NativeSpatialRay {
  /// Converts this [NativeSpatialRay] into a Dart [SpatialRay].
  SpatialRay toDart() => SpatialRay(origin.toDart(), direction.toDart());
}
'''));
    });

    test('has correct pointer to native struct extension declaration (1)', () {
      expect(rectProjection.pointerNativeStructExtension,
          equalsIgnoringWhitespace('''
/// @nodoc
extension PointerNativeRectConversion on Pointer<NativeRect> {
  /// Converts the referenced [NativeRect] into a Dart [Rect].
  Rect toDart() {
    final ref = this.ref;
    return Rect(ref.x, ref.y, ref.width, ref.height);
  }

  /// Creates a `List<Rect>` from `Pointer<NativeRect>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeRect>`.
  List<Rect> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
'''));
    });

    test('has correct pointer to native struct extension declaration (2)', () {
      final projection =
          StructProjection.fromType('Windows.Devices.Gpio.GpioChangeRecord');
      expect(
          projection.pointerNativeStructExtension, equalsIgnoringWhitespace('''
/// @nodoc
extension PointerNativeGpioChangeRecordConversion
    on Pointer<NativeGpioChangeRecord> {
  /// Converts the referenced [NativeGpioChangeRecord] into a Dart
  /// [GpioChangeRecord].
  GpioChangeRecord toDart() {
    final ref = this.ref;
    return GpioChangeRecord(ref.relativeTime.toDartDuration(), GpioPinEdge.from(ref.edge));
  }

  /// Creates a `List<GpioChangeRecord>` from `Pointer<NativeGpioChangeRecord>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeGpioChangeRecord>`.
  List<GpioChangeRecord> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
'''));
    });

    test('has correct pointer to native struct extension declaration (3)', () {
      final projection =
          StructProjection.fromType('Windows.Web.Http.HttpProgress');
      expect(
          projection.pointerNativeStructExtension, equalsIgnoringWhitespace('''
/// @nodoc
extension PointerNativeHttpProgressConversion on Pointer<NativeHttpProgress> {
  /// Converts the referenced [NativeHttpProgress] into a Dart [HttpProgress].
  HttpProgress toDart() {
    final ref = this.ref;
    return HttpProgress(HttpProgressStage.from(ref.stage), ref.bytesSent, IReference<int?>.fromPtr(calloc<COMObject>()..ref.lpVtbl = ref.totalBytesToSend, referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}').value, ref.bytesReceived, IReference<int?>.fromPtr(calloc<COMObject>()..ref.lpVtbl = ref.totalBytesToReceive, referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}').value, ref.retries);
  }

  /// Creates a `List<HttpProgress>` from `Pointer<NativeHttpProgress>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeHttpProgress>`.
  List<HttpProgress> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
'''));
    });

    test('has correct pointer to native struct extension declaration (4)', () {
      final projection =
          StructProjection.fromType('Windows.Storage.Search.SortEntry');
      expect(
          projection.pointerNativeStructExtension, equalsIgnoringWhitespace('''
/// @nodoc
extension PointerNativeSortEntryConversion on Pointer<NativeSortEntry> {
  /// Converts the referenced [NativeSortEntry] into a Dart [SortEntry].
  SortEntry toDart() {
    final ref = this.ref;
    return SortEntry(ref.propertyName.toDartString(), ref.ascendingOrder);
  }

  /// Creates a `List<SortEntry>` from `Pointer<NativeSortEntry>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSortEntry>`.
  List<SortEntry> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
'''));
    });
  });
}
