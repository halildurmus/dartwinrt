// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../exceptions/exceptions.dart';
import 'extensions.dart';

extension TypeDefHelpers on TypeDef {
  /// Returns the fully-qualified type name of the type defined in this
  /// TypeDef (e.g., `Windows.Foundation.Calendar`,
  /// Windows.Foundation.IReference`1).
  String get fullyQualifiedName {
    if (typeSpec?.type case final type?) return type.name;
    return name;
  }

  /// Returns the IID of the type defined in this TypeDef.
  String get iid => signature.toIID();

  /// Returns `true` if the type defined in this TypeDef is a collection object,
  /// i.e. implements `IIterable` (e.g., `JsonObject`, `XmlNamedNodeMap`, `IMap`,
  /// `IVector` etc.).
  bool get isCollectionObject => interfaces.any(
      (interface) => interface.typeSpec?.name.endsWith('IIterable`1') ?? false);

  /// Returns `true` if the type defined in this TypeDef is a factory interface
  /// (e.g., `ICalendarFactory`).
  bool get isFactoryInterface =>
      RegExp(r'^I\w+Factory\d{0,2}$').hasMatch(shortName);

  /// Returns the package import for the type defined in this TypeDef (e.g.,
  /// `package:windows_globalization/windows_globalization.dart` for
  /// `Windows.Globalization.Calendar`).
  String get packageImport => 'package:$packageName/$packageName.dart';

  /// Returns the package name for the type defined in this TypeDef (e.g.,
  /// `windows_globalization` for `Windows.Globalization.Calendar`).
  String get packageName =>
      fullyQualifiedName.split('.').take(2).join('_').toLowerCase();

  /// Returns the shorter name of the type defined in this TypeDef (e.g.,
  /// `ICalendar`, `IVector` , `IMap<String, String>`).
  String get shortName {
    if (typeSpec case final typeSpec?) return typeSpec.shortName;
    return name.lastComponent.stripGenerics();
  }

  /// Returns the type signature of this TypeDef.
  String get signature {
    if (typeSpec case final typeSpec?) return typeSpec.signature;

    if (isClass) {
      if (defaultInterface?.signature case final signature?) {
        return 'rc($name;$signature)';
      }
      throw WinRTGenException('Type $this has no default interface.');
    }

    if (isEnum) {
      final isFlagsEnum = existsAttribute(flagsAttribute);
      final enumSignature = isFlagsEnum ? 'u4' : 'i4';
      return 'enum($name;$enumSignature)';
    }

    if (isStruct) {
      final fieldSignatures =
          fields.map((field) => field.typeIdentifier.signature);
      return 'struct($name;${fieldSignatures.join(';')})';
    }

    if (guid case final guid?) return isDelegate ? 'delegate($guid)' : guid;

    throw WinRTGenException('TypeDef $this has no Guid');
  }
}
