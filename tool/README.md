This folder contains utilities to help with developing the dartwinrt package.

# Code-generation tools

The WinRT APIs available in this package are generated from [Windows Metadata
(WinMD)](https://learn.microsoft.com/en-us/uwp/winrt-cref/winmd-files) files
supplied by Microsoft. The metadata files are in the ECMA-335 specification
file format and can be found on Windows machines under the
`%windir%\System32\WinMetadata` directory.

The metadata is extracted and parsed using the separate winmd package:
<https://pub.dev/packages/winmd>

Not every WinRT API is projected.

- The JSON files in the `packages\winrtgen\data` directory are used to
  determine which APIs to project.

During the build process, you should call `generate.cmd` from the project root
to instantiate these types and generate the classes from them, for example:

```terminal
C:\src\dartwinrt> tool\generate.cmd
```

This tool will also test both the winrtgen library and the generated output
with unit tests.
