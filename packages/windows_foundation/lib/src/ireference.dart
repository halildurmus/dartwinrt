// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../internal.dart';
import 'exports.g.dart';

/// Enables arbitrary enumerations, structures, and delegate types to be used
/// as property values.
///
/// {@category interface}
abstract class IReference<T> extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IReference(super.ptr);

  /// Creates an instance of [IReference] from the given [ptr] and
  /// [referenceIid].
  ///
  /// [referenceIid] must be the IID of the `IReference<T>` interface (e.g.
  /// `'{513ef3af-e784-5325-a91e-97c2b8111cf3}'`).
  ///
  /// [T] must be of type `DateTime?`, `double?`, `Duration?`, `int?`,
  /// `String?`, `Struct?` (e.g. `Guid?`), or `WinRTEnum?` (e.g.
  /// `WebErrorStatus?`).
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum?`.
  /// ```dart
  /// final reference = IReference<WebErrorStatus?>.fromRawPointer(ptr,
  ///     enumCreator: WebErrorStatus.from);
  /// ```
  factory IReference.fromRawPointer(
    Pointer<COMObject> ptr, {
    required String referenceIid,
    T Function(int)? enumCreator,
  }) {
    if (isSameType<T, bool?>()) {
      return _IReferenceBool.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSameType<T, DateTime?>()) {
      return _IReferenceDateTime.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSameType<T, double?>()) {
      return _IReferenceDouble.fromRawPointer(ptr, referenceIid)
          as IReference<T>;
    }

    if (isSameType<T, Duration?>()) {
      return _IReferenceDuration.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSameType<T, Guid?>()) {
      return _IReferenceGuid.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSameType<T, int?>()) {
      return _IReferenceInt.fromRawPointer(ptr, referenceIid) as IReference<T>;
    }

    if (isSameType<T, String?>()) {
      return _IReferenceString.fromRawPointer(ptr) as IReference<T>;
    }

    if (isSubtypeOfStruct<T>()) {
      if (isSameType<T, Point?>()) {
        return _IReferencePoint.fromRawPointer(ptr) as IReference<T>;
      }
      if (isSameType<T, Rect?>()) {
        return _IReferenceRect.fromRawPointer(ptr) as IReference<T>;
      }
      if (isSameType<T, Size?>()) {
        return _IReferenceSize.fromRawPointer(ptr) as IReference<T>;
      }

      // TODO: Other structs like BasicGeoposition are not yet supported.
      // Since the PropertyValue does not support creating an `IReference`
      // object for them, we need to create our own IReference<T> (and possibly
      // IPropertyValue) implementations for them.
      throw ArgumentError.value(T, 'T', 'Unsupported type');
    }

    if (isSubtypeOfWinRTEnum<T>()) {
      if (enumCreator == null) throw ArgumentError.notNull('enumCreator');
      return _IReferenceEnum.fromRawPointer(ptr, enumCreator, referenceIid);
    }

    throw ArgumentError.value(T, 'T', 'Unsupported type');
  }

  /// Gets the type that is represented as an `IPropertyValue`.
  T get value;
}

class _IReferenceBool extends IReference<bool?> {
  _IReferenceBool.fromRawPointer(super.ptr);

  @override
  bool? get value {
    if (ptr.ref.isNull) return null;

    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceDateTime extends IReference<DateTime?> {
  _IReferenceDateTime.fromRawPointer(super.ptr);

  @override
  DateTime? get value {
    if (ptr.ref.isNull) return null;

    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return DateTime.utc(1601, 01, 01)
          .add(Duration(microseconds: retValuePtr.value ~/ 10));
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceDouble extends IReference<double?> {
  _IReferenceDouble.fromRawPointer(super.ptr, this.referenceIid);

  final String referenceIid;

  @override
  double? get value {
    if (ptr.ref.isNull) return null;
    switch (referenceIid) {
      case IID_IReference_Double:
        return _getDouble();
      case IID_IReference_Single:
        return _getFloat();
      default:
        throw UnsupportedError('Unsupported IReference IID: $referenceIid');
    }
  }

  double _getDouble() {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Double>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Double>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  double _getFloat() {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Float>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Float>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceDuration extends IReference<Duration?> {
  _IReferenceDuration.fromRawPointer(super.ptr);

  @override
  Duration? get value {
    if (ptr.ref.isNull) return null;

    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return Duration(microseconds: retValuePtr.value ~/ 10);
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceGuid extends IReference<Guid?> {
  _IReferenceGuid.fromRawPointer(super.ptr);

  @override
  Guid? get value {
    if (ptr.ref.isNull) return null;

    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<GUID>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<GUID>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceInt extends IReference<int?> {
  _IReferenceInt.fromRawPointer(super.ptr, this.referenceIid);

  final String referenceIid;

  @override
  int? get value {
    if (ptr.ref.isNull) return null;
    switch (referenceIid) {
      case IID_IReference_Int16:
        return _getInt16();
      case IID_IReference_Int32:
        return _getInt32();
      case IID_IReference_Int64:
        return _getInt64();
      case IID_IReference_Uint8:
        return _getUint8();
      case IID_IReference_Uint16:
        return _getUint16();
      case IID_IReference_Uint32:
        return _getUint32();
      case IID_IReference_Uint64:
        return _getUint64();
      default:
        throw UnsupportedError('Unsupported IReference IID: $referenceIid');
    }
  }

  int _getInt16() {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int16>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int16>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getInt32() {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getInt64() {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getUint8() {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint8>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint8>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getUint16() {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint16>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint16>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getUint32() {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getUint64() {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferencePoint extends IReference<Point?> {
  _IReferencePoint.fromRawPointer(super.ptr);

  @override
  Point? get value {
    if (ptr.ref.isNull) return null;

    final retValuePtr = calloc<Point>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(Pointer, Pointer<Point>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Point>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }
}

class _IReferenceRect extends IReference<Rect?> {
  _IReferenceRect.fromRawPointer(super.ptr);

  @override
  Rect? get value {
    if (ptr.ref.isNull) return null;

    final retValuePtr = calloc<Rect>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Rect>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Rect>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }
}

class _IReferenceSize extends IReference<Size?> {
  _IReferenceSize.fromRawPointer(super.ptr);

  @override
  Size? get value {
    if (ptr.ref.isNull) return null;

    final retValuePtr = calloc<Size>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Size>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Size>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }
}

class _IReferenceString extends IReference<String?> {
  _IReferenceString.fromRawPointer(super.ptr);

  @override
  String? get value {
    if (ptr.ref.isNull) return null;

    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, Pointer<HSTRING>)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<HSTRING>)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}

class _IReferenceEnum<T> extends IReference<T> {
  _IReferenceEnum.fromRawPointer(
      super.ptr, this.enumCreator, this.referenceIid);

  final T Function(int) enumCreator;
  final String referenceIid;

  @override
  T get value {
    if (ptr.ref.isNull) return null as T;
    switch (referenceIid) {
      // Int32 enumerations
      case IID_IReference_AdaptiveMediaSourceResourceType:
      case IID_IReference_CaptureSceneMode:
      case IID_IReference_EmailMailboxSmimeEncryptionAlgorithm:
      case IID_IReference_EmailMailboxSmimeSigningAlgorithm:
      case IID_IReference_HdcpProtection:
      case IID_IReference_ManualFocusDistance:
      case IID_IReference_MediaCaptureFocusState:
      case IID_IReference_MediaPlaybackAutoRepeatMode:
      case IID_IReference_MediaPlaybackType:
      case IID_IReference_UserDataTaskWeekOfMonth:
      case IID_IReference_WebErrorStatus:
        return enumCreator(_getInt32());
      // Uint32 enumerations (Flags)
      case IID_IReference_BluetoothLEAdvertisementFlags:
      case IID_IReference_UserDataTaskDaysOfWeek:
        return enumCreator(_getUint32());
      default:
        throw UnsupportedError('Unsupported IReference IID: $referenceIid');
    }
  }

  int _getInt32() {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int _getUint32() {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
