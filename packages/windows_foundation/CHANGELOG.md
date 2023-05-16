## 0.0.4

- Add `getWindowHandle` helper function to retrieve the window handle of the
  current window (#197)
- `InitializeWithWindow`'s `initialize` method now uses `getWindowHandle` to
  retrieve the window handle of the current window if `hwnd` parameter is
  omitted (#197)

## 0.0.3

- Add `NativeDisplayAdapterId` and `NativeSizeInt32` structs (#193)

## 0.0.2

- `IMap` interface's `empty` constructor now supports creating empty maps for
  the `Guid` and `Object?` key-value pairs.

## 0.0.1

- Initial version.
