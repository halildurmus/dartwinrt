This folder contains utilities to help with developing the dartwinrt package.

# Code-generation tools

The WinRT APIs available in this package are generated from metadata supplied
by Microsoft. The metadata is in the form of an ECMA-335 specification file,
generated from this repo: <https://github.com/microsoft/win32metadata>

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
