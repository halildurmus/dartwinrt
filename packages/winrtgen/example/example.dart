import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void printEnum() {
  final enumTypeDef =
      MetadataStore.getMetadataForType('Windows.Foundation.AsyncStatus');
  if (enumTypeDef != null) {
    final enumProjection = WinRTEnumProjection(enumTypeDef, 'AsyncStatus');
    print(enumProjection);
  }
}

void printStruct() {
  final structTypeDef =
      MetadataStore.getMetadataForType('Windows.Gaming.Input.GamepadReading');
  if (structTypeDef != null) {
    final structProjection = StructProjection(structTypeDef, 'GamepadReading');
    print(structProjection);
  }
}

void printMethod() {
//   final typeDef =
//       scope.findTypeDef('Windows.Win32.System.StationsAndDesktops.Apis');
//   final method = typeDef?.findMethod('BroadcastSystemMessageW');
//   if (method != null) {
//     final functionProjection = FunctionProjection(method, 'user32');
//     print(functionProjection);
//   }
}

void printGetProperty() {
//   final interface = scope.findTypeDef(
//       'Windows.Win32.Security.Cryptography.Certificates.ICEnroll4');
//   final method = interface?.findMethod('get_IncludeSubjectKeyID');
//   if (method != null) {
//     final methodProjection = ComGetPropertyProjection(method, 122);
//     print(methodProjection);
//   }
}

void printSetProperty() {
//   final interface = scope.findTypeDef(
//       'Windows.Win32.Networking.ActiveDirectory.IADsPropertyEntry');
//   final method = interface?.findMethod('put_Name');
//   if (method != null) {
//     final methodProjection = ComSetPropertyProjection(method, 11);
//     print(methodProjection);
//   }
}

void printInterface() {
  final interfaceTypeDef = MetadataStore.getMetadataForType(
      'Windows.Storage.Pickers.IFileOpenPicker');
  if (interfaceTypeDef != null) {
    final interfaceProjection = WinRTInterfaceProjection(interfaceTypeDef);
    print(interfaceProjection);
  }
}

void printClass() {
  final classTypeDef =
      MetadataStore.getMetadataForType('Windows.Globalization.Calendar');
  if (classTypeDef != null) {
    final classProjection = WinRTClassProjection(classTypeDef);
    print(classProjection);
  }
}

void main() {
  printEnum();
  printStruct();
  printMethod();
  printGetProperty();
  printSetProperty();
  printInterface();
  printClass();
}
