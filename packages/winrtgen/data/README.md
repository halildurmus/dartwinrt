# WinRT APIs Generation

The Windows Runtime (WinRT) APIs exposed by this library are generated from
WinMD files. Windows has structured metadata for APIs, which is loaded from
package:winmd. The JSON files in this folder describe which items we're
generating, and supplements this metadata with documentation. The winrtgen
package consumes this metadata and transforms it into Dart files.
