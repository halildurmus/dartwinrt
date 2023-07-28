@echo off

echo Loading...

rem Save current directory and start from the dartwinrt\packages\winrtgen folder
pushd %~dp0..\packages\winrtgen
echo.
call dart bin\update_goldens.dart
goto end

:end
rem Restore old working directory
popd
