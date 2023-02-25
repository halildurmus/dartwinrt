// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

part of 'ireference.dart';

class _IReferenceBool extends IReference<bool?> {
  _IReferenceBool.fromRawPointer(super.ptr);

  @override
  bool? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

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
    if (_isNull) return null;

    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return DateTime.utc(1601, 01, 01)
          .add(Duration(microseconds: retValuePtr.value ~/ 10));
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceDouble extends IReference<double?> {
  _IReferenceDouble.fromRawPointer(super.ptr);

  @override
  double? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Double>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Double>)>()(ptr.ref.lpVtbl, retValuePtr);

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
    if (_isNull) return null;

    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return Duration(microseconds: retValuePtr.value ~/ 10);
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceFloat extends IReference<double?> {
  _IReferenceFloat.fromRawPointer(super.ptr);

  @override
  double? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Float>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Float>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceGuid extends IReference<Guid?> {
  _IReferenceGuid.fromRawPointer(super.ptr);

  @override
  Guid? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<GUID>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<GUID>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceInt16 extends IReference<int?> {
  _IReferenceInt16.fromRawPointer(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int16>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int16>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceInt32 extends IReference<int?> {
  _IReferenceInt32.fromRawPointer(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceInt64 extends IReference<int?> {
  _IReferenceInt64.fromRawPointer(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int64>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int64>)>()(ptr.ref.lpVtbl, retValuePtr);

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
    if (_isNull) return null;

    final retValuePtr = calloc<Point>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<NativeFunction<HRESULT Function(LPVTBL, Pointer<Point>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<Point>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }
}

class _IReferenceRect extends IReference<Rect?> {
  _IReferenceRect.fromRawPointer(super.ptr);

  @override
  Rect? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Rect>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<NativeFunction<HRESULT Function(LPVTBL, Pointer<Rect>)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, Pointer<Rect>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }
}

class _IReferenceSize extends IReference<Size?> {
  _IReferenceSize.fromRawPointer(super.ptr);

  @override
  Size? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Size>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<NativeFunction<HRESULT Function(LPVTBL, Pointer<Size>)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, Pointer<Size>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }
}

class _IReferenceString extends IReference<String?> {
  _IReferenceString.fromRawPointer(super.ptr);

  @override
  String? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}

class _IReferenceUint8 extends IReference<int?> {
  _IReferenceUint8.fromRawPointer(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Uint8>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint8>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint8>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceUint16 extends IReference<int?> {
  _IReferenceUint16.fromRawPointer(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint16>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint16>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceUint32 extends IReference<int?> {
  _IReferenceUint32.fromRawPointer(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceUint64 extends IReference<int?> {
  _IReferenceUint64.fromRawPointer(super.ptr);

  @override
  int? get value {
    if (_isNull) return null;

    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceWinRTEnum<T> extends IReference<T> {
  _IReferenceWinRTEnum.fromRawPointer(super.ptr, {super.enumCreator});

  @override
  T get value {
    if (_isNull) return null as T;

    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

class _IReferenceWinRTFlagsEnum<T> extends IReference<T> {
  _IReferenceWinRTFlagsEnum.fromRawPointer(super.ptr, {super.enumCreator});

  @override
  T get value {
    if (_isNull) return null as T;

    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return _enumCreator!(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}
