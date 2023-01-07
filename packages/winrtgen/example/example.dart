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
  final typeDef = MetadataStore.getMetadataForType(
      'Windows.Storage.Pickers.IFileOpenPicker');
  final method = typeDef?.findMethod('PickSingleFileAsync');
  if (method != null) {
    final methodProjection = WinRTMethodProjection(method, 15);
    print(methodProjection);
  }
}

void printGetProperty() {
  final typeDef =
      MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');
  final method = typeDef?.findMethod('get_Languages');
  if (method != null) {
    final getPropertyProjection = WinRTGetPropertyProjection(method, 9);
    print(getPropertyProjection);
  }
}

void printSetProperty() {
  final typeDef = MetadataStore.getMetadataForType(
      'Windows.Devices.Geolocation.IGeolocator');
  final method = typeDef?.findMethod('put_DesiredAccuracy');
  if (method != null) {
    final setPropertyProjection = WinRTSetPropertyProjection(method, 7);
    print(setPropertyProjection);
  }
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
  // printEnum();
  // printStruct();
  printMethod();
  // printGetProperty();
  // printSetProperty();
  // printInterface();
  // printClass();
}
