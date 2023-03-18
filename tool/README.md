This folder contains utilities to help with developing the `dartwinrt`.

# Code-generation tools

The WinRT APIs available in this package are generated from [Windows Metadata
(WinMD)](https://learn.microsoft.com/en-us/uwp/winrt-cref/winmd-files) files
supplied by Microsoft. The metadata files are in the ECMA-335 specification
file format and can be found on Windows machines under the
`%windir%\System32\WinMetadata` directory.

The metadata is extracted and parsed using the separate winmd package:
<https://pub.dev/packages/winmd>

Not every WinRT API is projected. The JSON files in the
`packages\winrtgen\data` directory are used to determine which APIs to project.

## Add new WinRT APIs

Instead of manually editing the JSON files mentioned above, you should call
`add_type.cmd` from the project root with the appropriate arguments to add
the type and its dependencies (if any) into the JSON files.

For example, to add a WinRT object such as `Windows.Storage.StorageFile`, use
`-o` or `--object` option with the type:

```terminal
C:\src\dartwinrt> tool\add_type.cmd -o Windows.Storage.StorageFile
```

You can also add a WinRT enum or struct with this tool. Call
`tool\add_type.cmd` without any arguments to see which options you can use.

## Generate WinRT APIs

During the build process, you should call `generate.cmd` from the project root
to instantiate these types and generate the classes from them, for example:

```terminal
C:\src\dartwinrt> tool\generate.cmd
```

This tool will also test both the `winrtgen` package and the generated output
with unit tests.
