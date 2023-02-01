// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

import '../utils.dart';
import 'type_identifier_helpers.dart';

extension TypeDefHelpers on TypeDef {
  /// Returns the fully-qualified type name of the type defined in this
  /// TypeDef (e.g. `Windows.Foundation.Calendar`,
  /// Windows.Foundation.IReference`1).
  String get fullyQualifiedName =>
      typeSpec?.baseType == BaseType.genericTypeModifier
          ? typeSpec!.type!.name
          : name;

  /// Returns the IID of the type defined in this TypeDef.
  Guid get iid => iidFromSignature(signature);

  /// Returns the package import for the type defined in this TypeDef (e.g.
  /// `package:windows_globalization/windows_globalization.dart` for
  /// `Windows.Globalization.Calendar`).
  String get packageImport => name == 'Windows.Foundation.Uri'
      ? 'package:windows_foundation/uri.dart'
      : 'package:$packageName/$packageName.dart';

  /// Returns the package name for the type defined in this TypeDef (e.g.
  /// `windows_globalization` for `Windows.Globalization.Calendar`).
  String get packageName =>
      fullyQualifiedName.split('.').take(2).join('_').toLowerCase();

  /// Returns the shorter name of the type defined in this TypeDef (e.g.
  /// `ICalendar`, `IVector` , `IMap<String, String>`).
  String get shortName => typeSpec?.baseType == BaseType.genericTypeModifier
      ? typeSpec!.shortName
      : stripGenerics(lastComponent(name));

  /// Returns the type signature of this TypeDef.
  String get signature {
    if (typeSpec != null) return typeSpec!.signature;

    if (isClass) {
      final defaultInterfaceSignature = interfaces.first.signature;
      return 'rc($name;$defaultInterfaceSignature)';
    }

    return guid!;
  }
}
